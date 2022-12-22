import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:itmo_memory/blocs/inventions_overveiw_bloc/models/invention.dart';

class InventionsOverviewRepo {
  Future<List<Invention>> get fetch async {
    final resp = await FirebaseFirestore.instance.collection('inventions').get();
    return resp.docs
        .map(
          (e) => Invention.fromJson(e.data()),
        )
        .toList();
  }
}
