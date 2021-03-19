import 'dart:math';

import 'package:animation_fun/pages.dart';
import 'package:flutter/material.dart';
import 'package:animation_fun/colors.dart';
import 'package:animation_fun/screens/examples/app_bar_with_banner/app_bar_with_banner_screen.dart';

List<Color> _color = <Color>[
  ThemeColors.babyBlue,
  ThemeColors.blueGray,
  ThemeColors.darkBlue,
  ThemeColors.midnightBlue,
];

class PageButton extends StatelessWidget {

  final AppPage page;

  const PageButton({
    Key key,
    this.page,
  })
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _random = Random();

    return Container(
      child: ElevatedButton(
        child: Text(
          page.name,
          style: Theme.of(context).textTheme.headline6.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w500
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => page.getPage()
          )
        ),
        style: TextButton.styleFrom(
          backgroundColor: _color[_random.nextInt(_color.length)],
        ),
      ),
    );
  }
}
