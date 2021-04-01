import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repo_search_test/presentation/consts/consts.dart';
import 'package:github_repo_search_test/presentation/sizeconfig.dart';
import 'package:github_repo_search_test/presentation/widgets/mytext.dart';

class Repo {
  final String repoName = "repo Neme";
  final String avatarUrl = "ava";
  final String lastUpd = "3 yanvarya";
  final int stars = 52;
}

class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: TextTittleApp(
            text: kTextResult,
          ),
        ),
        body: Center(
          child: BlocConsumer<SubjectBloc, SubjectState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        child: TextTittleSearch(
                          text: kTextByReq,
                          textResult: "нАЗВАНИЕ ЗАПРОСА",
                        ),
                      ),
                      Container(
                        child: TextTittleSearch(
                          text: kFindCount,
                          textResult: "55",
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
