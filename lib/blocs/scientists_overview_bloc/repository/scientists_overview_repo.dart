import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:itmo_memory/blocs/scientists_overview_bloc/models/scientist.dart';

class ScientistsOverviewRepo {
  Future<List<Scientist>> get fetch async {
    final resp = await FirebaseFirestore.instance.collection('scientists').get();
    return resp.docs
        .map(
          (e) => Scientist.fromJson(e.data()),
        )
        .toList();
  }
}
