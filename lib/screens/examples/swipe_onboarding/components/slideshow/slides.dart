import 'package:animation_fun/screens/examples/swipe_onboarding/components/slideshow/store/slide_show_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Slides extends StatefulWidget {
  const Slides({Key key}) : super(key: key);

  State createState() => _SlidesState();
}


/*
Есть такая штука как AlignmentTween

Короче пока делаем чисто по свайпу, без оттяжек и прочего.
Осноновная цель показать анимацию картинок и прогресс бара после свайпа.
*/
class _SlidesState extends State<Slides> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: onPanDown,
      onPanUpdate: onPanUpdate,
      onPanEnd: onPanEnd,
      child: Consumer<SlideShowModel>(
        builder: (b,m,w) => Transform.translate(
          offset: m.currentSlideOffset,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Placeholder(),
            decoration: BoxDecoration(),
          ),
        ),
      ),
    );
  }

  onPanDown(details) {
    print('onPanDown($details)');
  }

  onPanUpdate(DragUpdateDetails details) {
  }

  onPanEnd(details) {
    print('onPanEnd($details)');
  }

}