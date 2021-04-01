import 'package:flutter/material.dart';
import 'package:github_repo_search_test/presentation/result_screen.dart';
import 'package:github_repo_search_test/presentation/search_screen.dart';
import 'package:github_repo_search_test/presentation/theme/mytheme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: MyTheam.lightTheme, home: ResultScreen());
  }
}
