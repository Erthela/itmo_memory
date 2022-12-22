import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:itmo_memory/blocs/photoarchive_list_bloc/photo_archive_overview_bloc.dart';
import 'package:itmo_memory/components/custom_app_bar.dart';
import 'package:itmo_memory/theme/theme.dart';

class PhotoArchivePage extends StatelessWidget {
  const PhotoArchivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(customTitle: 'Фотоархив'),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: BlocBuilder<PhotoArchiveOverviewBloc, PhotoArchiveOverviewState>(
          builder: (context, state) {
            if (state is PhotoArchiveOverviewLoading) {
              return const SizedBox(
                height: 100,
                width: 100,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
            if (state is PhotoArchiveOverviewLoaded) {
              return ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                itemCount: state.photos.length,
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => const Gap(16),
                itemBuilder: (context, index) => GestureDetector(
                  child: CachedNetworkImage(
                    height: 150,
                    width: MediaQuery.of(context).size.width - 32,
                    imageUrl: state.photos[index].url,
                    placeholder: (context, url) => const DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color(0xFFD4D4D4),
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: CircularProgressIndicator(
                            color: Colours.blue,
                          ),
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) => const DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color(0xFFD4D4D4),
                      ),
                      child: Center(
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
                    imageBuilder: (context, imageProvider) => Container(
                      height: 210,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
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
      ),
    );
  }
}
