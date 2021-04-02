import 'package:flutter/material.dart';
import 'package:github_repo_search_test/presentation/consts/consts.dart';
import 'package:github_repo_search_test/presentation/widgets/mytext.dart';

class TextButtonSearch extends StatelessWidget {
  const TextButtonSearch({
    @required this.func,
    Key? key,
  }) : super(key: key);
  final Function? func;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(kColorBlue),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(kBorderRadius)),
            ),
            child: Container(
              alignment: Alignment.center,
              child: TextWhite(
                text: kTextFind,
              ),
            ),
            onPressed: () {
              func!();
            }),
      ),
    );
  }
}
