
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class AnimatedPositionedPage extends StatefulWidget {
  static const routeName = "animatedPositioned";

  @override
  State<StatefulWidget> createState() => _AnimatedPositionedPageState();
}

class _AnimatedPositionedPageState extends State<AnimatedPositionedPage> {
  var _shrinked = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "AnimatedPositioned",
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _shrinked = !_shrinked;
            });
          },
        child: const Icon(Icons.refresh),
      ),
      child: Center(
        child: Stack(
          children: <Widget>[
            Image.asset("assets/flutter.png"),
            AnimatedPositioned(
              top: 0,
              left: 0,
              width: _shrinked ? 50 : 300,
              duration: const Duration(milliseconds: 500),
              child: Image.asset("assets/flutter.png"),
              curve: Curves.easeInOut,
            )
          ],
        ),
      ),
    );
  }
}