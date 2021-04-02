import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repo_search_test/bloc/bloc/search_bloc.dart';
import 'package:github_repo_search_test/presentation/consts/consts.dart';
import 'package:github_repo_search_test/presentation/sizeconfig.dart';
import 'package:github_repo_search_test/presentation/widgets/button.dart';

class TextFieldStack extends StatelessWidget {
  TextFieldStack({
    @required this.context,
    Key? key,
  }) : super(key: key);
  BuildContext? context;
  Function? func() {
    BlocProvider.of<SearchBloc>(context!)
        .add(SearchRequested(searchInput: input));
  }

  String input = "";
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Positioned(
          top: SizeConfig.blockSizeVertical! * 20,
          child: Container(
            height: kHightTextField,
            width: SizeConfig.blockSizeHorizontal! * 90,
            child: TextField(
              onChanged: (i) {
                input = i;
              },
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
          right: SizeConfig.blockSizeHorizontal! * 5,
          top: SizeConfig.blockSizeVertical! * 20,
          child: Container(
              alignment: Alignment.centerRight,
              height: kHightTextField,
              width: SizeConfig.blockSizeHorizontal! * 30,
              child: TextButtonSearch(
                func: () {
                  func();
                },
              )),
        )
      ],
    );
  }
}
