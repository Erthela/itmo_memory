import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:itmo_memory/blocs/buildings_overview_bloc/models/building.dart';
import 'package:itmo_memory/blocs/buildings_overview_bloc/repository/building_repo.dart';

part 'buildings_event.dart';
part 'buildings_state.dart';

class BuildingsBloc extends Bloc<BuildingsEvent, BuildingsState> {
  BuildingsBloc() : super(BuildingsLoading()) {
    on<BuildingsFetch>(_onFetch);
  }

  FutureOr<void> _onFetch(BuildingsFetch event, Emitter<BuildingsState> emit) async {
    try {
      emit(BuildingsLoading());
      final result = await BuildingsRepo().fetch;
      emit(BuildingsLoaded(result));
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      emit(BuildingsError());
    }
  }
}
