import 'package:flutter/material.dart';
import 'package:github_repo_search_test/presentation/consts/consts.dart';
import 'package:github_repo_search_test/presentation/sizeconfig.dart';
import 'package:github_repo_search_test/presentation/widgets/mytext.dart';
import 'package:github_repo_search_test/presentation/widgets/textfieldstack.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: TextTittleApp(
            text: kFind,
          ),
        ),
        body: Center(
          child: TextFieldStack(),
        ),
      ),
    );
  }
}
