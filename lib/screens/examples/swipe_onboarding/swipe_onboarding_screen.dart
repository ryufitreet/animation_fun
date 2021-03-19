import 'package:flutter/material.dart';

import 'components/body.dart';

class SwipeOnboardingScreen extends StatelessWidget {
  const SwipeOnboardingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ONBOARDING'),
      ),
      body: Body(),
    );
  }
}
