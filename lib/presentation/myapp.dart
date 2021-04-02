import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repo_search_test/bloc/bloc/search_bloc.dart';
import 'package:github_repo_search_test/presentation/search_screen.dart';
import 'package:github_repo_search_test/presentation/theme/mytheme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: MyTheam.lightTheme,
        home: BlocProvider(
          create: (context) => SearchBloc(),
          child: SearchScreen(),
        ));
  }
}
