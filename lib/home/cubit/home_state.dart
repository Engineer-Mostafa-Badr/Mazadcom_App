part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

// state for totale of evry type auction
class LoadingTotaleAuctinsState extends HomeState{}
class SuccessTotaleAuctinsState extends HomeState{}
class FailTotaleAuctionsState extends HomeState{}

// state for active auctions
class LoadingActiveState extends HomeState{}
class SuccessActiveState extends HomeState{}
class FailActiveState extends HomeState{}

// state for previous auctions
class SuccessPreviousState extends HomeState{}
class LoadingPreviousState extends HomeState{}
class FailPreviousState extends HomeState{}


