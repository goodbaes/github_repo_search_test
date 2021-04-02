part of 'search_bloc.dart';

@immutable
abstract class SearchState extends Equatable {
  static String? appbarText;
  @override
  List<Object?> get props => [appbarText];
}

class SearchInitial extends SearchState {
  static String appbartext = kFind;
}

class SearchLoading extends SearchState {
  static String appbartext = kTextResult;
}

class SearchSuccess extends SearchState {
  static String appbartext = kTextResult;

  SearchSuccess({this.queryResult});
  final QueryResult? queryResult;

  @override
  List<Object?> get props => [queryResult];
}

class SearchError extends SearchState {
  static String appbartext = kError;
}
