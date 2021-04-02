import 'package:flutter/material.dart';

const String kGitHubUrl = "api.github.com";

const String kGitHubApiSearch = "/search/repositories";
const kColorBlue = (0xff58AFFF);
const double kBorderRadius = 50.0;
const double kHightTextField = 50.0;
const String kFind = "поиск";
const String kTextResult = "результаты поиска";
const String kTextByReq = "по запросу";
const String kFindCount = "найдено";
const String kTextFind = "найти";
const String kError = "ошибка";

extension ExtendedPadding on Widget {
  withPadding16() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: this,
    );
  }

  withPadding8() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: this,
    );
  }
}
