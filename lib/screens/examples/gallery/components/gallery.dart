import 'package:flutter/material.dart';
import 'gallery_item_network.dart';

const int kAnimationDurationMs = 300;
const Curve kAnimationCurve = Curves.easeIn;

class Gallery extends StatefulWidget {
  final List<GalleryItemNetwork> children;

  Gallery({
    this.children,
  });

  State createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> with SingleTickerProviderStateMixin {

  int currentItem = 0;
  AnimationController _controller;

  initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: kAnimationDurationMs),
    );
    CurvedAnimation animation = CurvedAnimation(
      parent: _controller,
      curve: kAnimationCurve,
    );
    _controller.addListener(() {
      setState((){});
    });
  }

  dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildPhotosMoreThanOne();
  }

  
  Widget _buildPhotosMoreThanOne() {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onPanEnd: _onPanEnd,
      child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // текущее изображение
            Positioned(
              left: 16 - (screenSize.width - 55) * _controller.value,
              child: Transform.scale(
                scale: 1 - .1 * _controller.value,
                child: Container(
                  width: screenSize.width - 55,
                  height: 400,
                  child: widget.children[currentItem],
                ),
              ),
            ),
            if (widget.children.length > currentItem + 1) Positioned(
              left: (screenSize.width - 39) - (screenSize.width - 39 - 16) * _controller.value,
              child: GestureDetector(
                onTap: _tapOnNext,
                child: Transform.scale(
                  scale: .9 + .1 * _controller.value,
                  child: Container(
                    width: screenSize.width - 55,
                    height: 400,
                    child: widget.children[currentItem + 1],
                  ),
                ),
              ),
            ),
            if (widget.children.length > currentItem + 2) Positioned(
              left: (screenSize.width * 2 - 54) - (screenSize.width - 16) * _controller.value,
              child: GestureDetector(
                onTap: _tapOnNext,
                child: Transform.scale(
                  scale: .8 + .1 * _controller.value,
                  child: Container(
                    width: screenSize.width - 55,
                    height: 400,
                    child: widget.children[currentItem + 2],
                  ),
                ),
              ),
            ),
          ],
        ),
        alignment: Alignment.center,
      ),
    );
  }

  _onPanEnd(DragEndDetails details) {
    Offset s = details.velocity.pixelsPerSecond;
    if (s.dx < -1000) {
      _moveNextImage();
    } else if (s.dx > 1000) {
      _movePrevImage();
    }
  }

  _tapOnNext() {
    _moveNextImage();
  }

  _moveNextImage() async {
    if (currentItem == widget.children.length - 1) return;
    _controller.forward().then((value) {
      setState(() {
        currentItem++;
        _controller.reset();
      });
    });
  }
  _movePrevImage() async {
    if (currentItem == 0) return;
    setState(() {
      currentItem--;
    });
    _controller.animateTo(1, duration: Duration(milliseconds:  0))
      .then((value) {
        _controller.reverse();
      });
    
  }

}
