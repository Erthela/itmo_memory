part of 'photo_archive_overview_bloc.dart';

@immutable
abstract class PhotoArchiveOverviewState {}

class PhotoArchiveOverviewLoading extends PhotoArchiveOverviewState {}

class PhotoArchiveOverviewLoaded extends PhotoArchiveOverviewState {
  PhotoArchiveOverviewLoaded(this.photos);
  final List<Photo> photos;
}

class PhotoArchiveOverviewError extends PhotoArchiveOverviewState {}
