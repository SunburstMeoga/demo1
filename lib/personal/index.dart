import 'package:flutter/material.dart';
import 'package:demo1/themes/text_style.dart';

class PersonalIndex extends StatefulWidget {
  const PersonalIndex({Key? key}) : super(key: key);

  @override
  State<PersonalIndex> createState() => _PersonalIndexState();
}

class _PersonalIndexState extends State<PersonalIndex> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('this is personal page', style: ThemesTextStyle.textBig),
    );
  }
}
