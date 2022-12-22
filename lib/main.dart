import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:itmo_memory/firebase_options.dart';
import 'package:itmo_memory/nav_tree/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(App());
}
