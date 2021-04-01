import 'package:flutter/material.dart';
import 'package:github_repo_search_test/presentation/consts/consts.dart';
import 'package:github_repo_search_test/presentation/sizeconfig.dart';
import 'package:github_repo_search_test/presentation/widgets/button.dart';

class TextFieldStack extends StatelessWidget {
  const TextFieldStack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Positioned(
          top: SizeConfig.blockSizeVertical * 20,
          child: Container(
            height: 40,
            width: SizeConfig.blockSizeHorizontal * 90,
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(kBorderRadius),
                  ),
                ),
                // suffix: TextButtonSearch(),
              ),
            ),
          ),
        ),
        Positioned(
          right: SizeConfig.blockSizeHorizontal * 5,
          top: SizeConfig.blockSizeVertical * 20,
          child: Container(
              alignment: Alignment.centerRight,
              height: 40,
              width: SizeConfig.blockSizeHorizontal * 30,
              child: TextButtonSearch()),
        )
      ],
    );
  }
}
