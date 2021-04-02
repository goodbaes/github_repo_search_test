import 'package:flutter/material.dart';
import 'package:github_repo_search_test/models/model.dart';
import 'package:github_repo_search_test/presentation/consts/consts.dart';
import 'package:github_repo_search_test/presentation/sizeconfig.dart';
import 'package:github_repo_search_test/presentation/widgets/mytext.dart';
import 'package:github_repo_search_test/presentation/widgets/repocard.dart';
import 'package:intl/intl.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen({this.queryResult, this.input});
  final QueryResult? queryResult;
  final String? input;
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  var format = DateFormat.MMMMd();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            child: TextTittleSearch(
              color: Colors.grey,
              color2: Colors.blue,
              text: kTextByReq,
              textResult: ": ${widget.input}",
            ),
          ),
          Container(
            child: TextTittleSearch(
              color: Colors.grey,
              color2: Colors.grey,
              text: kFindCount,
              textResult: ": ${widget.queryResult!.totalCount.toString()}",
            ),
          ),
        ]).withPadding8(),
        Flexible(
          child: ListView.builder(
            itemCount: widget.queryResult!.items!.length,
            itemBuilder: (context, index) {
              String name = widget.queryResult!.items![index].name.toString();
              String stars =
                  widget.queryResult!.items![index].stargazersCount!.toString();
              String avaUrl =
                  widget.queryResult!.items![index].avatarUrl!.avatarUrl!;
              String username = widget
                  .queryResult!.items![index].avatarUrl!.username
                  .toString();
              String time = widget.queryResult!.items![index].time.toString();
              var a = format
                  .format(
                    DateTime.parse(
                      time,
                    ),
                  )
                  .toString();

              return RepoCard(
                      name: name,
                      stars: stars,
                      avaUrl: avaUrl,
                      username: username,
                      a: a)
                  .withPadding16();
            },
          ),
        ),
      ],
    );
  }
}
