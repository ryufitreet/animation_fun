import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'progress_bar.dart';
import 'slides.dart';
import 'store/slide_show_model.dart';

/*
Нужно сделать возможность, чтобы туда можно было передавать просто массив элементов
*/
class SlideShow extends StatelessWidget {
  const SlideShow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SlideShowModel>(
      create: (_) => SlideShowModel(),
      child: Container(
        child: Column(
          children: [
            Slides(),
            ProgressBar(),
          ],
        ),
      ),
    );
  }
}