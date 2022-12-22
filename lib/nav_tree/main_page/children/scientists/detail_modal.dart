import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itmo_memory/blocs/scientists_overview_bloc/models/scientist.dart';
import 'package:itmo_memory/nav_tree/main_page/header.dart';
import 'package:itmo_memory/theme/theme.dart';

class ScientistsModalBody extends StatelessWidget {
  final Scientist scientist;

  const ScientistsModalBody({
    super.key,
    required this.scientist,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MainPagePanelHeader(),
            CachedNetworkImage(
              height: 220,
              width: MediaQuery.of(context).size.width - 32,
              imageUrl: scientist.img,
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
                height: 220,
                width: MediaQuery.of(context).size.width - 32,
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
            const Gap(16),
            Text(
              scientist.name,
              style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(8),
            Text(
              scientist.date,
              style: GoogleFonts.montserrat(
                fontSize: 20,
              ),
            ),
            const Gap(8),
            Text(
              scientist.text,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(16),
          ],
        ),
      ),
    );
  }
}
