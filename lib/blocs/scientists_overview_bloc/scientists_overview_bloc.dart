import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:itmo_memory/blocs/scientists_overview_bloc/models/scientist.dart';
import 'package:itmo_memory/blocs/scientists_overview_bloc/repository/scientists_overview_repo.dart';

part 'scientists_overview_event.dart';
part 'scientists_overview_state.dart';

class ScientistsOverviewBloc extends Bloc<ScientistsOverviewEvent, ScientistsOverviewState> {
  ScientistsOverviewBloc() : super(ScientistsOverviewLoading()) {
    on<ScientistsOverviewFetch>(onFetch);
    on<ScientistsOverviewFilter>(onFilter);
  }

  FutureOr<void> onFetch(ScientistsOverviewFetch event, Emitter<ScientistsOverviewState> emit) async {
    try {
      emit(ScientistsOverviewLoading());
      final result = await ScientistsOverviewRepo().fetch;
      emit(ScientistsOverviewLoaded(result));
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      emit(ScientistsOverviewError());
    }
  }

  FutureOr<void> onFilter(ScientistsOverviewFilter event, Emitter<ScientistsOverviewState> emit) async {
    try {
      var _state = state as ScientistsOverviewLoaded;
      var result = <Scientist>[];
      if (event.filterQuery.isNotEmpty) {
        result = List.of(_state.scientists)
            .where(
              (element) =>
                  element.name.toLowerCase().contains(
                        event.filterQuery.toLowerCase(),
                      ) ||
                  element.text.toLowerCase().contains(
                        event.filterQuery.toLowerCase(),
                      ),
            )
            .toList();
      } else {
        result = await ScientistsOverviewRepo().fetch;
        ;
      }
      emit(ScientistsOverviewFiltered(result, _state.scientists));
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      emit(ScientistsOverviewError());
    }
  }
}
