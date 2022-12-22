import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:itmo_memory/blocs/buildings_overview_bloc/models/building.dart';

class BuildingsRepo {
  Future<List<Building>> get fetch async {
    final resp = await FirebaseFirestore.instance.collection('buildings').get();
    return resp.docs
        .map(
          (e) => Building.fromJson(e.data()),
        )
        .toList();
  }
}
