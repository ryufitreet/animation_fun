import 'package:flutter/material.dart';

class Slide extends StatelessWidget {

  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            width: 250,
            height: 300,
            color: Colors.redAccent,
          ),
          Container(
            child: Text('Основное описание слайда'),
            margin: EdgeInsets.only(
              bottom: 16,
              top: 16,
            ),
          ),
          Container(
            width: 250,
            child: Text(
              'Вторичное описание слайда написанное более мелким текстом',
              textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.only(bottom: 16),
          ),
        ],
      ),
    );
  }

}
