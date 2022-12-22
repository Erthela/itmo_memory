import 'package:flutter/material.dart';

class MainPagePanelHeader extends StatelessWidget {
  const MainPagePanelHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      height: 36,
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          width: 32,
          height: 4,
          decoration: const BoxDecoration(
            color: Color(0xFF79747E),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
        ),
      ),
    );
  }
}
