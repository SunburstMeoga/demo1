import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  final arguments;

  DialogPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${arguments['pageTitle']}')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ShowDialogButton(title: 'dialog对话框')],
      )),
    );
  }
}

class ShowDialogButton extends StatefulWidget {
  String title;
  ShowDialogButton({Key? key, this.title = ''}) : super(key: key);
  @override
  State<ShowDialogButton> createState() => _ShowDialogButtonState();
}

class _ShowDialogButtonState extends State<ShowDialogButton> {
  _alertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('是否删除订单'),
            actions: [
              TextButton(
                  onPressed: () {
                    print('点击了确认按钮');
                    Navigator.pop(context);
                  },
                  child: Text('确认')),
              TextButton(
                  onPressed: () {
                    print('点击了取消按钮');
                    Navigator.pop(context);
                  },
                  child: Text('取消'))
            ],
          );
        });
  }

  _bottomSheetPup() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 300,
            child: Column(
              children: [
                ListTile(title: Text('第一项')),
                Divider(),
                ListTile(title: Text('第二项')),
                Divider(),
                ListTile(title: Text('第三项')),
                Divider(),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: _alertDialog,
              child: const Text('alert弹出框-AlertDialog')),
          ElevatedButton(onPressed: _bottomSheetPup, child: const Text('底部弹窗'))
        ],
      ),
    );
  }
}
