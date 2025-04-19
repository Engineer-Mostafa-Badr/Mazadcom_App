part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

class SearchEmpty extends SearchState {}

class SearchError extends SearchState {
  final String message;
  SearchError(this.message);
}

class SearchLoaded extends SearchState {
  final List<String> filteredNames;
  SearchLoaded(this.filteredNames);
}

class SearchLoading extends SearchState {}
