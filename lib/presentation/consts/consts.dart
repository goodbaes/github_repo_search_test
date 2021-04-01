import 'package:flutter/material.dart';

const kColorBlue = (0xff58AFFF);
const kBorderRadius = 50.0;
const kFind = "поиск";
const kTextResult = "результаты поиска";
const kTextByReq = "по запросу";
const kFindCount = "найдено";
const kTextFind = "найти";

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
