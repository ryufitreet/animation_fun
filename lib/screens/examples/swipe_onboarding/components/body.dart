import 'package:flutter/cupertino.dart';

import 'title.dart' as wTitle;
import 'subtitle.dart';
import 'slideshow/slideshow.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          wTitle.Title(),
          Container(height: 16),
          SubTitle(),
          Container(height: 16),
          SlideShow(),
        ],
      ),
    );
  }
}