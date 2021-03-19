import 'package:flutter/material.dart';

class ExtendedAnimatedAppBar extends StatefulWidget {
  ExtendedAnimatedAppBar({Key key}) : super(key: key);

  @override
  _ExtendedAnimatedAppBarState createState() => _ExtendedAnimatedAppBarState();
}

class _ExtendedAnimatedAppBarState extends State<ExtendedAnimatedAppBar> with TickerProviderStateMixin {

  double initInfoHeight = 203;
  double initAvatarPosition = kToolbarHeight + 16;
  double initNamePosition = kToolbarHeight + 16 + 72 + 16;
  double initTextPosition = kToolbarHeight + 16 + 16 + 72 + 25 + 8;

  AnimationController _controller;
  CurvedAnimation _animation;

  initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2500),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
  }

  dispose() {
    super.dispose();
  }

  Animatable<Color> _topBarAnimatableColor = ColorTween(
    begin: Color(0xff3A3C4D),
    end: Color(0xffFFFFFF),
  );

  Animatable<Color> _nameAnimatableColor = ColorTween(
    begin: Color(0xffF3F3F3),
    end: Color(0xff3A3C4D),
  );

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        width: screenSize.width,
        height: 56 + initInfoHeight - initInfoHeight * _animation.value,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
          color: _topBarAnimatableColor.animate(_controller).value,
        ),
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Stack(
          children: [
            Container(
              height: kToolbarHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: _nameAnimatableColor.animate(_controller).value,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Opacity(
                    opacity: 1 - _animation.value,
                    child: TextButton(
                      child: Text(
                        'Свернуть',
                        style: TextStyle(
                          color: Color(0xff959699),
                        ),
                      ),
                      onPressed: _startFolding,
                    ),
                  ),
                ],
              ),
            ),
            // Name
            Positioned(
              top: initNamePosition - (initNamePosition - 8) * _controller.value,
              left: 92 * _controller.value,
              // BodyText2-Medium
              child: Container(
                child: Text(
                  'Ирина Аккерман',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: _nameAnimatableColor.animate(_controller).value,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 32,
              left: 92,
              // BodyText2-Medium
              child: Opacity(
                opacity: _animation.value,
                child: Container(
                  child: Text(
                    'В сети',
                    // Caption Normal
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff00B172),
                    ),
                  ),
                ),
              ),
            ),
            // Avatar
            Positioned(
              top: initAvatarPosition - (initAvatarPosition - 7) * _animation.value,
              left: 40 * _animation.value,
              child: Container(
                width: 72 - 30 * _animation.value,
                height: 72 - 30 * _animation.value,
                child: ClipOval(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1551292831-023188e78222?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Name
            // TODO доделать плашку статуса под именем
            Positioned(
              top: initTextPosition - initTextPosition * _animation.value,
              child: Opacity(
                opacity: _animation.value >= .65 ? 0 : 1 - _animation.value * 1.5,
                child: Container(
                  width: screenSize.width - 32,
                  child: Text(
                    'Здравствуйте, напишите мне сообщение и я отвечу вам в течении 5 мин',
                    maxLines: 3,
                    style: TextStyle(
                      color: Color(0xffcccccc),

                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _startFolding() {
    _controller.forward();
    _controller.addListener(() {
      setState((){});
    });
  }

}
