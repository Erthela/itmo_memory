import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:itmo_memory/nav_tree/main_page/body.dart';
import 'package:itmo_memory/nav_tree/main_page/header.dart';
import 'package:itmo_memory/nav_tree/main_page/panel.dart';
import 'package:itmo_memory/theme/theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _MainPage();
  }
}

class _MainPage extends StatelessWidget {
  const _MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SvgPicture.asset(
          'assets/svg/itmo_memory.svg',
          color: Base.black,
          width: 100,
          height: 30,
          fit: BoxFit.fitHeight,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        bottom: false,
        child: SlidingUpPanel(
          minHeight: 300,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(28),
          ),
          body: const MainPageBody(),
          header: const MainPagePanelHeader(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          panel: const MainPagePanel(),
        ),
      ),
    );
  }
}
