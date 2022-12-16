import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itmo_memory/components/category_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Row(
                  children: [
                    CategoryCard(
                      // width: MediaQuery.of(context).size.width / 2 - 32,
                      backgroundWidget: Container(
                        color: Colors.amber.withOpacity(.1),
                      ),
                      title: 'Учёные',
                      subtitle: 'учёные закончившие наш университет',
                    ),
                    const Gap(16),
                    CategoryCard(
                      // width: MediaQuery.of(context).size.width / 2 - 32,
                      backgroundWidget: Container(
                        color: Colors.amber.withOpacity(.1),
                      ),
                      title: 'Учёные',
                      subtitle: 'учёные закончившие наш университет',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
