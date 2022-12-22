part of 'inventions_overview_bloc.dart';

abstract class InventionsOverviewEvent extends Equatable {
  const InventionsOverviewEvent();

  @override
  List<Object?> get props => [];
}

class InventionsOverviewFetch extends InventionsOverviewEvent {}
