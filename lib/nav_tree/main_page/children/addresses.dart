import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:itmo_memory/blocs/buildings_overview_bloc/buildings_bloc.dart';
import 'package:itmo_memory/components/custom_app_bar.dart';
import 'package:itmo_memory/nav_tree/main_page/children/buildings/detail_modal.dart';
import 'package:itmo_memory/theme/theme.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AddressesPage extends StatelessWidget {
  const AddressesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BuildingsBloc>(
      create: (context) => BuildingsBloc()..add(BuildingsFetch()),
      child: _AddressesPage(),
    );
  }
}

class _AddressesPage extends StatelessWidget {
  const _AddressesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(customTitle: 'Адреса'),
      body: BlocBuilder<BuildingsBloc, BuildingsState>(
        builder: (context, state) {
          if (state is BuildingsLoading) {
            return const SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (state is BuildingsLoaded) {
            return ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              itemCount: state.buildings.length,
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) => const Gap(16),
              itemBuilder: (context, index) => ListTile(
                onTap: () => showCupertinoModalBottomSheet(
                  context: context,
                  topRadius: const Radius.circular(28),
                  builder: (context) => BuildingsModalBody(
                    building: state.buildings[index],
                  ),
                ),
                title: Text(state.buildings[index].name),
                subtitle: Text(
                  state.buildings[index].text,
                  maxLines: 1,
                  softWrap: false,
                ),
                leading: CachedNetworkImage(
                  imageUrl: state.buildings[index].img,
                  width: 40,
                  height: 40,
                  imageBuilder: (context, imageProvider) => ClipOval(
                    child: Image(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
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
