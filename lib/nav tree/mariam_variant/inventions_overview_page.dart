import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itmo_memory/theme/text_class.dart';

class InventionsOverviewPage extends StatelessWidget {
  const InventionsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Изобретения'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: 10,
        itemBuilder: (context, index) => Center(
          child: Stack(
            children: [
              CachedNetworkImage(
                width: double.infinity,
                fit: BoxFit.cover,
                imageUrl: 'https://loremflickr.com/300/300/device?random=$index',
                placeholder: (context, url) => SizedBox(
                  width: 50,
                  height: 50,
                  child: const CircularProgressIndicator(),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Изобретение #$index',
                  style: TextClass()
                    ..title3Bold
                    ..base_white,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (BuildContext context, int index) => const Gap(16),
      ),
    );
  }
}
