import 'package:flutter/material.dart';

class TextH1 extends StatelessWidget {
  const TextH1({
    this.text,
    Key? key,
  }) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(fontSize: 18, color: Theme.of(context).accentColor),
    );
  }
}

class TextTittleApp extends StatelessWidget {
  const TextTittleApp({
    this.text,
    Key? key,
  }) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!.toUpperCase(),
      style: TextStyle(fontSize: 15, color: Theme.of(context).accentColor),
    );
  }
}

class TextWhite extends StatelessWidget {
  TextWhite({
    this.text,
    Key? key,
  }) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!.toUpperCase(),
      style: TextStyle(
        fontSize: 15,
        color: Colors.white,
      ),
    );
  }
}

class TextTittleSearch extends StatelessWidget {
  const TextTittleSearch({
    @required this.color,
    @required this.color2,
    this.text,
    this.textResult,
    Key? key,
  }) : super(key: key);
  final String? text;
  final String? textResult;
  final Color? color;
  final Color? color2;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: text!.toUpperCase(),
            style: TextStyle(fontSize: 12, color: color)),
        TextSpan(
            text: textResult!.toUpperCase(),
            style: TextStyle(fontSize: 12, color: color2))
      ]),
    );
  }
}

class Text10 extends StatelessWidget {
  Text10({
    this.text,
    Key? key,
  }) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!.toUpperCase(),
      style: TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
    );
  }
}
