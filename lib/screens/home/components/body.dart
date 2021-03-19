import 'package:animation_fun/pages.dart';
import 'package:flutter/material.dart';
import 'package:animation_fun/colors.dart';
import 'package:animation_fun/screens/examples/app_bar_with_banner/app_bar_with_banner_screen.dart';
import 'package:animation_fun/screens/examples/gallery/gallery_screen.dart';
import 'package:animation_fun/screens/examples/swipe_onboarding/swipe_onboarding_screen.dart';

import 'page_button.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: _getExamplesButtons(context),
      ),
    );
  }

  List<Widget> _getExamplesButtons(BuildContext context) {

    return kPages.map<Widget>(
      (p) => PageButton(page: p),
    ).toList();

    // return [
    //   PageButton(
    //     child: Text('Very basic gallery'),
        
    //   ),
    //   ElevatedButton(
    //     child: Text('Very basic gallery'),
    //     onPressed: () => Navigator.of(context).push(
    //       MaterialPageRoute(
    //         builder: (c) => GalleryScreen()
    //       )
    //     ),
    //     style: TextButton.styleFrom(backgroundColor: ThemeColors.babyBlue),
    //   ),
    //   ElevatedButton(
    //     child: Text('Banner folding to app bar'),
    //     onPressed: () => Navigator.of(context).push(
    //       MaterialPageRoute(
    //         builder: (c) => AppBarWithBannerScreen()
    //       )
    //     ),
    //     style: TextButton.styleFrom(backgroundColor: ThemeColors.darkBlue),
    //   ),
    //   ElevatedButton(
    //     child: Text('Swipe Onboarding TODO'),
    //     onPressed: () => Navigator.of(context).push(
    //       MaterialPageRoute(
    //         builder: (c) => SwipeOnboardingScreen()
    //       )
    //     ),
    //     style: TextButton.styleFrom(backgroundColor: ThemeColors.blueGray),
    //   ),

    //   ElevatedButton(
    //     child: Text('1'),
    //     onPressed: () => Navigator.of(context).push(
    //       MaterialPageRoute(
    //         builder: (c) => GalleryScreen()
    //       )
    //     ),
    //     style: TextButton.styleFrom(backgroundColor: ThemeColors.babyBlue),
    //   ),
    //   ElevatedButton(
    //     child: Text('2'),
    //     onPressed: () => Navigator.of(context).push(
    //       MaterialPageRoute(
    //         builder: (c) => AppBarWithBannerScreen()
    //       )
    //     ),
    //     style: TextButton.styleFrom(backgroundColor: ThemeColors.darkBlue),
    //   ),
    //   ElevatedButton(
    //     child: Text('3'),
    //     onPressed: () => Navigator.of(context).push(
    //       MaterialPageRoute(
    //         builder: (c) => SwipeOnboardingScreen()
    //       )
    //     ),
    //     style: TextButton.styleFrom(backgroundColor: ThemeColors.blueGray),
    //   ),

    // ];
  }

}
