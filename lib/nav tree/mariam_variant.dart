import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itmo_memory/nav%20tree/mariam_variant/history_overview_page.dart';
import 'package:itmo_memory/nav%20tree/mariam_variant/inventions_overview_page.dart';
import 'package:itmo_memory/nav%20tree/mariam_variant/photo_gallery_page.dart';
import 'package:itmo_memory/nav%20tree/mariam_variant/scientists_overview_page.dart';

class MariamMainPage extends StatelessWidget {
  const MariamMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Gap(MediaQuery.of(context).padding.top),
            ListTile(
              title: const Text('История ИТМО'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HistoryOverviewPage(),
                ),
              ),
            ),
            ListTile(
              title: const Text('Учёные'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ScientistsOverviewPage(),
                ),
              ),
            ),
            ListTile(
              title: const Text('Изобретения'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const InventionsOverviewPage(),
                ),
              ),
            ),
            ListTile(
              title: const Text('Фотогалерея'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PhotoGallery(),
                ),
              ),
            ),
            const Spacer(),
            const ListTile(
              title: Text('Контакты'),
            ),
            const ListTile(
              title: Text('Адреса'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('ITMO Memory'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
