import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:itmo_memory/blocs/history_details_bloc/models/history.dart';

class HistoryRepo {
  Future<History> get fetch async {
    final resp = await FirebaseFirestore.instance.collection('history').get();
    return History.fromJson(resp.docs.first.data());
  }
}
