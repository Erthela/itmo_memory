part of 'buildings_bloc.dart';

abstract class BuildingsEvent extends Equatable {
  const BuildingsEvent();

  @override
  List<Object?> get props => [];
}

class BuildingsFetch extends BuildingsEvent {}
