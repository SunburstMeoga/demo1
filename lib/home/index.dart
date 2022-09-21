import 'package:flutter/material.dart';
import 'package:demo1/themes/text_style.dart';

class HomeIndex extends StatefulWidget {
  const HomeIndex({Key? key}) : super(key: key);

  @override
  State<HomeIndex> createState() => _HomeIndexState();
}

class _HomeIndexState extends State<HomeIndex> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('this is home page', style: ThemesTextStyle.textBig),
    );
  }
}
