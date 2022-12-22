part of 'photo_archive_overview_bloc.dart';

@immutable
abstract class PhotoArchiveOverviewEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class PhotoArchiveOverviewFetch extends PhotoArchiveOverviewEvent {}
