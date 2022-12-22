import 'package:flutter/material.dart';
import 'package:itmo_memory/components/custom_app_bar.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(customTitle: 'Контакты'),
      body: Container(),
    );
  }
}
