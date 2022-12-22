import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:itmo_memory/blocs/history_details_bloc/models/history.dart';
import 'package:itmo_memory/blocs/history_details_bloc/repository/history_repo.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryLoading()) {
    on<HistoryFetch>(_onFetch);
  }

  Future<FutureOr<void>> _onFetch(HistoryFetch event, Emitter<HistoryState> emit) async {
    try {
      emit(HistoryLoading());
      final result = await HistoryRepo().fetch;
      emit(HistoryLoaded(result));
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      emit(HistoryError());
    }
  }
}
