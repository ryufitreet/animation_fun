import 'package:flutter/material.dart';

import 'components/gallery.dart';
import 'components/gallery_item_network.dart';

class Body extends StatelessWidget {
  
  const Body({Key key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Gallery(
      children: [
        GalleryItemNetwork(url: 'https://images.pexels.com/photos/2246476/pexels-photo-2246476.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
        GalleryItemNetwork(url: 'https://images.pexels.com/photos/1287145/pexels-photo-1287145.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        GalleryItemNetwork(url: 'https://images.pexels.com/photos/1090972/pexels-photo-1090972.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
        GalleryItemNetwork(url: 'https://images.pexels.com/photos/2179483/pexels-photo-2179483.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
      ],
    );
  }
}
