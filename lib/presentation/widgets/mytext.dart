import 'package:flutter/material.dart';

class TextTittleApp extends StatelessWidget {
  const TextTittleApp({
    this.text,
    Key key,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(fontSize: 15, color: Theme.of(context).accentColor),
    );
  }
}

class TextTittleSearch extends StatelessWidget {
  const TextTittleSearch({
    this.text,
    this.textResult,
    Key key,
  }) : super(key: key);
  final String text;
  final String textResult;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: text.toUpperCase(),
            style: TextStyle(fontSize: 10, color: Colors.grey)),
        TextSpan(
            text: textResult.toUpperCase(),
            style: TextStyle(color: Colors.blueGrey))
      ]),
    );
  }
}
