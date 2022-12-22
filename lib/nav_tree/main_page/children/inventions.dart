import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:itmo_memory/blocs/inventions_overveiw_bloc/inventions_overview_bloc.dart';
import 'package:itmo_memory/components/custom_app_bar.dart';
import 'package:itmo_memory/nav_tree/main_page/children/inventions/detail_modal.dart';
import 'package:itmo_memory/theme/theme.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class InventionsPage extends StatelessWidget {
  const InventionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<InventionsOverviewBloc>(
      create: (context) => InventionsOverviewBloc()..add(InventionsOverviewFetch()),
      child: _InventionsPage(),
    );
  }
}

class _InventionsPage extends StatelessWidget {
  const _InventionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(customTitle: 'Изобретения'),
      body: BlocBuilder<InventionsOverviewBloc, InventionsOverviewState>(
        builder: (context, state) {
          if (state is InventionsOverviewLoading) {
            return const SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (state is InventionsOverviewLoaded) {
            return ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              itemCount: state.inventions.length,
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) => const Gap(16),
              itemBuilder: (context, index) => ListTile(
                onTap: () => showCupertinoModalBottomSheet(
                  context: context,
                  topRadius: const Radius.circular(28),
                  builder: (context) => InventionModalBody(
                    invention: state.inventions[index],
                  ),
                ),
                title: Text(state.inventions[index].name),
                subtitle: Text(
                  state.inventions[index].text,
                  maxLines: 1,
                  softWrap: false,
                ),
                leading: CachedNetworkImage(
                  imageUrl: state.inventions[index].img_urls.first,
                  width: 40,
                  height: 40,
                  imageBuilder: (context, imageProvider) => ClipOval(
                    child: Image(image: imageProvider, fit: BoxFit.cover),
                  ),
                  placeholder: (context, url) => const CircularProgressIndicator(
                    color: Colours.blue,
                  ),
                  errorWidget: (context, url, error) => const Center(
                    child: ClipOval(
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.signal_wifi_connected_no_internet_4_rounded,
                          size: 32,
                          color: Colours.pink,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
