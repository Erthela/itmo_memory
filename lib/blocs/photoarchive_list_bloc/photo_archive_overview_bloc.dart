import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:itmo_memory/blocs/photoarchive_list_bloc/models/photo.dart';
import 'package:itmo_memory/blocs/photoarchive_list_bloc/repository/photo_archive_overview_repo.dart';
import 'package:meta/meta.dart';

part 'photo_archive_overview_event.dart';
part 'photo_archive_overview_state.dart';

class PhotoArchiveOverviewBloc extends Bloc<PhotoArchiveOverviewEvent, PhotoArchiveOverviewState> {
  PhotoArchiveOverviewBloc() : super(PhotoArchiveOverviewLoading()) {
    on<PhotoArchiveOverviewFetch>(_onFetch);
  }

  FutureOr<void> _onFetch(PhotoArchiveOverviewFetch event, Emitter<PhotoArchiveOverviewState> emit) async {
    try {
      emit(PhotoArchiveOverviewLoading());
      final result = await PhotoArchiveOverviewRepo().fetch;
      emit(PhotoArchiveOverviewLoaded(result));
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      emit(PhotoArchiveOverviewError());
    }
  }
}
