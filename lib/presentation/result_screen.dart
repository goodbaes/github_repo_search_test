import 'package:flutter/material.dart';
import 'package:github_repo_search_test/models/model.dart';
import 'package:github_repo_search_test/presentation/consts/consts.dart';
import 'package:github_repo_search_test/presentation/widgets/mytext.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen({this.queryResult});
  final QueryResult? queryResult;
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
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
                textResult: ":${widget.queryResult!.totalCount.toString()}",
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: widget.queryResult!.items!.length,
                itemBuilder: (context, index) {
                  return Container(
                      child: Text(widget.queryResult!.items![index].fullName!));
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
