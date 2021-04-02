import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:github_repo_search_test/models/model.dart';
import 'package:github_repo_search_test/presentation/consts/consts.dart';
import 'package:github_repo_search_test/repositories/repository.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial());

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    if (event is SearchStart) {
      yield SearchInitial();
    } else if (event is SearchRequested) {
      yield SearchLoading();
      try {
        final QueryResult queryResult =
            await fetchRepo(event.searchInput, "stars", "desc");
        print(queryResult.totalCount);
        yield SearchSuccess(queryResult: queryResult);
      } catch (e) {
        yield SearchError();
      }
    }
  }
}
