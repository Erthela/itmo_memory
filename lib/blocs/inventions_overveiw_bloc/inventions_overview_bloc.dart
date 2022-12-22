import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:itmo_memory/blocs/inventions_overveiw_bloc/models/invention.dart';
import 'package:itmo_memory/blocs/inventions_overveiw_bloc/repository/inventions_overview_repo.dart';

part 'inventions_overview_event.dart';
part 'inventions_overview_state.dart';

class InventionsOverviewBloc extends Bloc<InventionsOverviewEvent, InventionsOverviewState> {
  InventionsOverviewBloc() : super(InventionsOverviewLoading()) {
    on<InventionsOverviewFetch>(_onFetch);
  }

  FutureOr<void> _onFetch(InventionsOverviewFetch event, Emitter<InventionsOverviewState> emit) async {
    try {
      emit(InventionsOverviewLoading());
      final result = await InventionsOverviewRepo().fetch;
      emit(InventionsOverviewLoaded(result));
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      emit(InventionsOverviewError());
    }
  }
}
