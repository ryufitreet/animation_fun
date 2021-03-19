import 'package:flutter/material.dart';

import 'components/expanded_animated_app_bar.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ExtendedAnimatedAppBar(),
      ],
    );
  }
}
