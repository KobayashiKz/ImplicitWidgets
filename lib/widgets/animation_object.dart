
import 'dart:ui';

import 'package:flutter/material.dart';

class AnimationObject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: 120,
          height: 120,
          child: Image.asset("assets/flutter.png"),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 30,
          child: ClipRect(
            child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
              child: Container(
                height: 50,
                color: Colors.white.withAlpha(50),
              ),
            ),
          ),
        )
      ],
    );
  }
}