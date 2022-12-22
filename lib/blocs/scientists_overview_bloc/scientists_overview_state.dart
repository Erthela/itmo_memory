part of 'scientists_overview_bloc.dart';

abstract class ScientistsOverviewState extends Equatable {
  const ScientistsOverviewState();

  @override
  List<Object> get props => [];
}

class ScientistsOverviewLoading extends ScientistsOverviewState {}

class ScientistsOverviewLoaded extends ScientistsOverviewState {
  ScientistsOverviewLoaded(this.scientists);

  final List<Scientist> scientists;
}

class ScientistsOverviewFiltered extends ScientistsOverviewLoaded {
  ScientistsOverviewFiltered(super.scientists, this.scientists_full);

  final List<Scientist> scientists_full;

  @override
  List<Object> get props => [super.scientists];
}

class ScientistsOverviewError extends ScientistsOverviewState {}
