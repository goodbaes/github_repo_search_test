import 'package:flutter/material.dart';
import 'package:github_repo_search_test/presentation/consts/consts.dart';
import 'package:github_repo_search_test/presentation/sizeconfig.dart';
import 'package:github_repo_search_test/presentation/widgets/mytext.dart';

class RepoCard extends StatelessWidget {
  const RepoCard({
    Key? key,
    required this.name,
    required this.stars,
    required this.avaUrl,
    required this.username,
    required this.a,
  }) : super(key: key);

  final String name;
  final String stars;
  final String avaUrl;
  final String username;
  final String a;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 0.2,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: SizeConfig.blockSizeHorizontal! * 50,
                child: TextH1(
                  text: name,
                ),
              ),
              Container(
                decoration: kBorderRadiu20,
                child: Row(
                  children: [
                    Icon(
                      Icons.star_border_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text10(text: stars)
                  ],
                ).withPaddingChip(),
              ),
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(avaUrl),
              ),
              Text(username).withPaddingChip()
            ],
          ),
          Divider(
            thickness: 1,
          ),
          Row(
            children: [
              TextSpanLow(
                color2: Colors.black,
                color: Colors.grey,
                text: "Обновлено: ",
                textResult: a,
              )
            ],
          )
        ],
      ).withPadding16(),
    );
  }
}
