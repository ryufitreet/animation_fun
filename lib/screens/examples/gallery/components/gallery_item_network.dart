import 'package:flutter/material.dart';

class GalleryItemNetwork extends StatelessWidget {

  final String url;

  GalleryItemNetwork({
    @required
    this.url,
  });

  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          url,
          fit: BoxFit.fitWidth,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

}
