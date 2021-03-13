import 'package:animation_fun/screens/examples/app_bar_with_banner/app_bar_with_banner_screen.dart';
import 'package:animation_fun/screens/examples/gallery/gallery_screen.dart';
import 'package:animation_fun/screens/examples/swipe_onboarding/swipe_onboarding_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: _getExamplesButtons(context),
      ),
    );
  }

  List<Widget> _getExamplesButtons(BuildContext context) {
    return [
      ElevatedButton(
        child: Text('Very basic gallery'),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (c) => GalleryScreen()
          )
        ),
      ),
      ElevatedButton(
        child: Text('Banner folding to app bar'),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (c) => AppBarWithBannerScreen()
          )
        ),
      ),
      ElevatedButton(
        child: Text('Swipe Onboarding TODO'),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (c) => SwipeOnboardingScreen()
          )
        ),
      ),
    ];
  }

}