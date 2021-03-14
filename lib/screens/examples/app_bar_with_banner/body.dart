import 'package:flutter/material.dart';

import 'components/animated_app_bar.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedAppBar(),
      ],
    );
  }
}