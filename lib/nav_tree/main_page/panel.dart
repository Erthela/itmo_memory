import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itmo_memory/blocs/photoarchive_list_bloc/photo_archive_overview_bloc.dart';
import 'package:itmo_memory/components/rounded_container.dart';
import 'package:itmo_memory/navigation/app_router.dart';
import 'package:itmo_memory/theme/theme.dart';

class MainPagePanel extends StatelessWidget {
  const MainPagePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(52),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: Color(0xFFE4E4E4),
          ),
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
            top: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 210,
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
                        itemCount: state.photos.length,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => const Gap(16),
                        itemBuilder: (context, index) => GestureDetector(
                          child: CachedNetworkImage(
                            height: 210,
                            width: 140,
                            imageUrl: state.photos[index].url,
                            placeholder: (context, url) => const DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
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
                                  Radius.circular(5),
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
                                  Radius.circular(5),
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
                    return const SizedBox.shrink();
                  },
                ),
              ),
              GestureDetector(
                onTap: () => context.router.push(const PhotoArchiveRoute()),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.layers_outlined,
                        color: Base.black,
                        size: 24,
                      ),
                      const Gap(8),
                      Text(
                        'Фотоархив',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const Gap(8),
        GestureDetector(
          // onTap: () => context.router.push(const ContactsRoute()),
          onTap: () => Fluttertoast.showToast(
            msg: "Находится в разработке",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colours.pink,
            textColor: Colors.white,
            fontSize: 16.0,
          ),
          child: RoundedContainer(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.people_rounded,
                    color: Base.black,
                    size: 24,
                  ),
                  const Gap(8),
                  Text(
                    'Контакты',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Gap(8),
        GestureDetector(
          onTap: () => context.router.push(const AddressesRoute()),
          child: RoundedContainer(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.pin_drop_outlined,
                    color: Base.black,
                    size: 24,
                  ),
                  const Gap(8),
                  Text(
                    'Адреса ITMO',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
