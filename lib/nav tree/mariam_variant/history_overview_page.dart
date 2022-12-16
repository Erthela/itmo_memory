import 'package:cached_network_image/cached_network_image.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:itmo_memory/mocks/mocks.dart';

class HistoryOverviewPage extends StatelessWidget {
  const HistoryOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('История ИТМО'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: DropCapText(
          historyITMO,
          dropCap: DropCap(
            width: MediaQuery.of(context).size.width * (2 / 3),
            height: 150,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 8),
              child: CachedNetworkImage(
                imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/e/e1/ITMO_main_building_3.jpg',
                placeholder: (context, url) => const SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
