part of 'search_bloc.dart';

@immutable
abstract class SearchState extends Equatable {
  String? input;
  @override
  List<Object?> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSuccess extends SearchState {
  SearchSuccess({this.queryResult, this.input});
  final QueryResult? queryResult;
  final String? input;

  @override
  List<Object?> get props => [queryResult];
}

class SearchError extends SearchState {}
