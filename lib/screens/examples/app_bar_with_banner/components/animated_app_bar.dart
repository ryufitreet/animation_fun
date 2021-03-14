import 'package:flutter/material.dart';

class AnimatedAppBar extends StatefulWidget {
  AnimatedAppBar({Key key}) : super(key: key);

  @override
  _AnimatedAppBarState createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AnimatedAppBar> {

  double initHeight = 200;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Text('AppBar'),
      height: initHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        color: Colors.black12,
      ),
    );
  }
}