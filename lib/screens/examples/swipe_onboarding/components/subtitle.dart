import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Красный слайд',
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
      ),
    );
  }
}
