import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    super.key,
    required this.customTitle,
  }) : super();

  final String customTitle;

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: const Color(0xFF1B1C1F),
      title: Text(
        customTitle,
        style: GoogleFonts.roboto(
          fontSize: 22,
          color: const Color(0xFF1B1C1F),
        ),
      ),
    );
  }
}
