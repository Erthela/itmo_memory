part of 'scientists_overview_bloc.dart';

abstract class ScientistsOverviewEvent extends Equatable {
  const ScientistsOverviewEvent();

  @override
  List<Object?> get props => [];
}

class ScientistsOverviewFetch extends ScientistsOverviewEvent {}

class ScientistsOverviewFilter extends ScientistsOverviewEvent {
  ScientistsOverviewFilter(this.filterQuery);

  final String filterQuery;
}
