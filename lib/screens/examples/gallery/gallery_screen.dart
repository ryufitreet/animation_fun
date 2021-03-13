import 'package:flutter/material.dart';

import 'body.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: Body(),
    );
  }
}