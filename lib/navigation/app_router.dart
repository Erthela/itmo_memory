import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:itmo_memory/nav_tree/main_page.dart';
import 'package:itmo_memory/nav_tree/main_page/children/children.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainPage,
      initial: true,
    ),
    AutoRoute(
      page: InventionsPage,
    ),
    AutoRoute(
      page: ContactsPage,
    ),
    AutoRoute(
      page: AddressesPage,
    ),
    // AutoRoute(
    //   page: HistoryPage,
    // ),
    AutoRoute(
      page: ScientistsPage,
    ),
    AutoRoute(
      page: PhotoArchivePage,
    ),
    // AutoRoute(
    //   page: ,
    // ),
  ],
)
class AppRouter extends _$AppRouter {}
