import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itmo_memory/theme/theme.dart';

class BorderButton extends StatelessWidget {
  const BorderButton({
    super.key,
    required this.icon,
    required this.caption,
    this.color = Colours.blue,
    this.onTap,
  });

  final IconData icon;
  final String caption;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: color,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 24,
                color: color,
              ),
              const Gap(16),
              Text(
                caption,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  color: color,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
