import 'package:animation_fun/screens/examples/app_bar_with_banner/app_bar_with_banner_screen.dart';
import 'package:animation_fun/screens/examples/gallery/gallery_screen.dart';
import 'package:animation_fun/screens/examples/swipe_onboarding/swipe_onboarding_screen.dart';

class AppPage {

  String name;
  Function getPage;

  AppPage({
    this.name,
    this.getPage,
  });

}

List<AppPage> kPages = <AppPage>[
  AppPage(
    name: 'Basic Image Gallery',
    getPage: () => GalleryScreen(),
  ),
  AppPage(
    name: 'Folded appbar',
    getPage: () => AppBarWithBannerScreen(),
  ),
  AppPage(
    name: 'Onboarding',
    getPage: () => SwipeOnboardingScreen(),
  ),
];

