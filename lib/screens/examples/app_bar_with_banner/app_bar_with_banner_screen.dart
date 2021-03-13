import 'package:flutter/material.dart';

import 'body.dart';

class AppBarWithBannerScreen extends StatelessWidget {
  const AppBarWithBannerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}