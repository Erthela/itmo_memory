import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:itmo_memory/firebase_options.dart';
import 'package:itmo_memory/nav%20tree/mariam_variant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MariamMainPage(),
    );
  }
}
