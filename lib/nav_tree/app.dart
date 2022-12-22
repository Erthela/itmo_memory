import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itmo_memory/blocs/history_details_bloc/history_bloc.dart';
import 'package:itmo_memory/blocs/photoarchive_list_bloc/photo_archive_overview_bloc.dart';
import 'package:itmo_memory/navigation/app_router.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PhotoArchiveOverviewBloc>(
          create: (context) => PhotoArchiveOverviewBloc()
            ..add(
              PhotoArchiveOverviewFetch(),
            ),
        ),
        BlocProvider<HistoryBloc>(
          create: (context) => HistoryBloc()
            ..add(
              HistoryFetch(),
            ),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
