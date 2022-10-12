import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  IconData icon;
  double size;
  Color color;

  IconContainer(this.icon, {this.size = 32.0, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(this.icon, size: this.size, color: Colors.white),
      ),
    );
  }
}
