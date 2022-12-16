import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Галерея'),
      ),
      body: ListView.separated(
        itemCount: 10,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        separatorBuilder: (context, index) => const Gap(16),
        itemBuilder: (context, index) => CachedNetworkImage(
          imageUrl: 'https://loremflickr.com/300/300/education?random=$index',
          fit: BoxFit.cover,
          height: 300,
          placeholder: (context, url) => const SizedBox(
            width: 50,
            height: 50,
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
