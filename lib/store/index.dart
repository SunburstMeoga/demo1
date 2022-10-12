import 'package:flutter/material.dart';
import 'package:demo1/themes/text_style.dart';
import 'package:demo1/components/tab_bar_controller.dart';

class StoreIndex extends StatefulWidget {
  const StoreIndex({Key? key}) : super(key: key);

  @override
  State<StoreIndex> createState() => _StoreIndexState();
}

class _StoreIndexState extends State<StoreIndex> {
  @override
  Widget build(BuildContext context) {
    return TabbarControllerPage();
  }
}
