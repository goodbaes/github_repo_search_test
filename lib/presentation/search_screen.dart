import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repo_search_test/bloc/bloc/search_bloc.dart';
import 'package:github_repo_search_test/presentation/consts/consts.dart';
import 'package:github_repo_search_test/presentation/result_screen.dart';
import 'package:github_repo_search_test/presentation/sizeconfig.dart';
import 'package:github_repo_search_test/presentation/widgets/mytext.dart';
import 'package:github_repo_search_test/presentation/widgets/textfieldstack.dart';

class SearchScreen extends StatelessWidget {
  restart(context) {
    BlocProvider.of<SearchBloc>(context).add(SearchStart());
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return SafeArea(
          child: WillPopScope(
            onWillPop: () => restart(context),
            child: Scaffold(
              appBar: AppBar(
                title: TextTittleApp(
                  text: (state is SearchInitial) ? kFind : kTextResult,
                ),
              ),
              body: Center(
                child: (() {
                  if (state is SearchInitial) {
                    return TextFieldStack(
                      context: context,
                    );
                  }
                  if (state is SearchLoading) {
                    return CircularProgressIndicator.adaptive();
                  }
                  if (state is SearchSuccess) {
                    return ResultScreen(
                      queryResult: state.queryResult,
                      input: state.input,
                    );
                  }
                  if (state is SearchError) {
                    return Text("Err");
                  }
                }()),
              ),
            ),
          ),
        );
      },
    );
  }
}
