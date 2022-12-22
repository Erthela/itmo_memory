import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:itmo_memory/blocs/photoarchive_list_bloc/models/photo.dart';

class PhotoArchiveOverviewRepo {
  Future<List<Photo>> get fetch async {
    final resp = await FirebaseFirestore.instance.collection('photos').get();
    return resp.docs
        .map(
          (e) => Photo.fromJson(e.data()),
        )
        .toList();
  }
}
