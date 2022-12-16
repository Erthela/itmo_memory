import 'package:flutter/material.dart';
import 'package:itmo_memory/theme/theme.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.backgroundWidget,
    this.width,
    this.height,
  });
  final Widget? backgroundWidget;
  final String title;
  final String subtitle;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Stack(
          children: [
            if (backgroundWidget != null) backgroundWidget!,
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextClass()..title2Bold,
                  ),
                  Text(
                    subtitle,
                    style: TextClass()..bodySemibold,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
