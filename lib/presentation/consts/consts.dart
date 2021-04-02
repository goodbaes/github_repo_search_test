import 'package:flutter/material.dart';

const String kGitHubUrl = "api.github.com";

const String kGitHubApiSearch = "/search/repositories";
const TextStyle kTextStyleLittle = TextStyle(
  fontSize: 10,
  color: Colors.black,
);
const kColorBlue = (0xff58AFFF);
const double kBorderRadius = 50.0;
const double kHightTextField = 50.0;
const String kFind = "поиск";
const String kTextResult = "результаты поиска";
const String kTextByReq = "по запросу";
const String kFindCount = "найдено";
const String kTextFind = "найти";
const String kError = "ошибка";
const InputDecoration kInputdec = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(kBorderRadius),
    ),
  ),
  // suffix: TextButtonSearch(),
);

const BoxDecoration kBorderRadiu20 = BoxDecoration(
  color: Colors.grey,
  borderRadius: BorderRadius.all(
    Radius.circular(20),
  ),
);

// suffix: TextButtonSearch(),

extension ExtendedPadding on Widget {
  withPadding16() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: this,
    );
  }

  withPadding8() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: this,
    );
  }

  withPaddingChip() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 2, 6, 2),
      child: this,
    );
  }
}
