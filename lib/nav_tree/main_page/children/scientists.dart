import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:itmo_memory/blocs/scientists_overview_bloc/scientists_overview_bloc.dart';
import 'package:itmo_memory/components/custom_app_bar.dart';
import 'package:itmo_memory/nav_tree/main_page/children/scientists/detail_modal.dart';
import 'package:itmo_memory/theme/theme.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ScientistsPage extends StatelessWidget {
  const ScientistsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ScientistsOverviewBloc>(
      create: (context) => ScientistsOverviewBloc()
        ..add(
          ScientistsOverviewFetch(),
        ),
      child: _ScientistsPage(),
    );
  }
}

class _ScientistsPage extends StatelessWidget {
  const _ScientistsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(customTitle: 'Учёные'),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: CupertinoSearchTextField(
                onChanged: (query) => context.read<ScientistsOverviewBloc>().add(
                      ScientistsOverviewFilter(query),
                    ),
              ),
            ),
            BlocBuilder<ScientistsOverviewBloc, ScientistsOverviewState>(
              builder: (context, state) {
                if (state is ScientistsOverviewLoading) {
                  return const SizedBox(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                if (state is ScientistsOverviewLoaded) {
                  return Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      itemCount: state.scientists.length,
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (context, index) => const Gap(16),
                      itemBuilder: (context, index) => ListTile(
                        onTap: () => showCupertinoModalBottomSheet(
                          context: context,
                          topRadius: const Radius.circular(28),
                          builder: (context) => ScientistsModalBody(
                            scientist: state.scientists[index],
                          ),
                        ),
                        title: Text(state.scientists[index].name),
                        subtitle: Text(
                          state.scientists[index].text,
                          maxLines: 1,
                          softWrap: false,
                        ),
                        leading: CachedNetworkImage(
                          imageUrl: state.scientists[index].img,
                          width: 40,
                          height: 40,
                          imageBuilder: (context, imageProvider) => ClipOval(
                            child: Image(image: imageProvider),
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
                    ),
                  );
                }
                return SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
