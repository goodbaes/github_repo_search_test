import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:github_repo_search_test/presentation/myapp.dart';
import 'package:github_repo_search_test/simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}
