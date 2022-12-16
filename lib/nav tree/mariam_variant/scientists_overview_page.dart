import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:itmo_memory/mocks/mocks.dart';

class ScientistsOverviewPage extends StatelessWidget {
  const ScientistsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Учёные'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          ...List.filled(10, const SizedBox()).mapIndexed(
            (i, e) => ListTile(
              title: Text('Учёный $i'),
              subtitle: const Text('заслуженный'),
              onTap: () => showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
                builder: (context) => SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: DropCapText(
                    historyITMO,
                    dropCap: DropCap(
                      width: MediaQuery.of(context).size.width * (1 / 3),
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8, bottom: 8),
                        child: CachedNetworkImage(
                          imageUrl: 'https://loremflickr.com/300/300/scientist?random=$i',
                          placeholder: (context, url) => const CircularProgressIndicator(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              leading: ClipOval(
                child: SizedBox.square(
                  dimension: 50,
                  child: CachedNetworkImage(
                    imageUrl: 'https://loremflickr.com/300/300/scientist?random=$i',
                    placeholder: (context, url) => const SizedBox.square(
                      dimension: 50,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
