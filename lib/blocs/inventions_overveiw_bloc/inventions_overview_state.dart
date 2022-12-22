part of 'inventions_overview_bloc.dart';

abstract class InventionsOverviewState extends Equatable {
  const InventionsOverviewState();

  @override
  List<Object> get props => [];
}

class InventionsOverviewLoading extends InventionsOverviewState {
  @override
  List<Object> get props => [];
}

class InventionsOverviewLoaded extends InventionsOverviewState {
  const InventionsOverviewLoaded(this.inventions);
  final List<Invention> inventions;
}

class InventionsOverviewError extends InventionsOverviewState {}
