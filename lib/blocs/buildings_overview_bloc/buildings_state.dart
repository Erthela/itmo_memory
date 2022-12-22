part of 'buildings_bloc.dart';

abstract class BuildingsState extends Equatable {
  const BuildingsState();

  @override
  List<Object> get props => [];
}

class BuildingsLoading extends BuildingsState {}

class BuildingsLoaded extends BuildingsState {
  BuildingsLoaded(this.buildings);

  final List<Building> buildings;
}

class BuildingsError extends BuildingsState {}
