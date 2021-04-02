part of 'search_bloc.dart';

@immutable
abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class SearchStart extends SearchEvent {
  @override
  List<Object> get props => [];
}

class SearchRequested extends SearchEvent {
  final String? searchInput;

  const SearchRequested({@required this.searchInput});

  @override
  List<Object> get props => [searchInput!];
}
