import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:itmo_memory/blocs/history_details_bloc/history_bloc.dart';
import 'package:itmo_memory/components/border_button.dart';
import 'package:itmo_memory/nav_tree/main_page/children/history/detail_modal.dart';
import 'package:itmo_memory/navigation/app_router.dart';
import 'package:itmo_memory/theme/theme.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          BlocBuilder<HistoryBloc, HistoryState>(
            builder: (context, state) {
              if (state is HistoryLoaded) {
                return BorderButton(
                  icon: Icons.menu_book_rounded,
                  caption: 'История',
                  onTap: () => showCupertinoModalBottomSheet(
                    context: context,
                    topRadius: const Radius.circular(28),
                    builder: (context) => HistoryModalBody(
                      history: state.history,
                    ),
                  ),
                );
              }
              return BorderButton(
                icon: Icons.menu_book_rounded,
                caption: 'История',
              );
            },
          ),
          const Gap(16),
          Row(
            children: [
              Flexible(
                child: BorderButton(
                  icon: Icons.face_rounded,
                  caption: 'Учёные',
                  color: Colours.pink,
                  onTap: () => context.router.push(
                    const ScientistsRoute(),
                  ),
                ),
              ),
              Gap(16),
              Flexible(
                child: BorderButton(
                  icon: Icons.devices_other_rounded,
                  caption: 'Изобретения',
                  color: Colours.pink,
                  onTap: () => context.router.push(
                    const InventionsRoute(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
