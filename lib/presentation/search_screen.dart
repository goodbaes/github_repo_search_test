import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repo_search_test/bloc/bloc/search_bloc.dart';
import 'package:github_repo_search_test/presentation/consts/consts.dart';
import 'package:github_repo_search_test/presentation/result_screen.dart';
import 'package:github_repo_search_test/presentation/sizeconfig.dart';
import 'package:github_repo_search_test/presentation/widgets/mytext.dart';
import 'package:github_repo_search_test/presentation/widgets/textfieldstack.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        String appbarTextL = kFind;
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: TextTittleApp(
                text: appbarTextL,
              ),
            ),
            body: Center(
              child: (() {
                if (state is SearchInitial) {
                  appbarTextL = SearchInitial.appbartext;
                  return TextFieldStack(
                    context: context,
                  );
                }
                if (state is SearchLoading) {
                  appbarTextL = SearchLoading.appbartext;
                  return CircularProgressIndicator.adaptive();
                }
                if (state is SearchSuccess) {
                  appbarTextL = SearchSuccess.appbartext;
                  return ResultScreen(queryResult: state.queryResult);
                }
                if (state is SearchError) {
                  appbarTextL = SearchError.appbartext;

                  return Text("Err");
                }
              }()),
            ),
          ),
        );
      },
    );
  }
}
