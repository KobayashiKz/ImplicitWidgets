
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class AnimatedPositionedDirectionalPage extends StatefulWidget {
  static const routeName = "animatedPositionedDirectional";

  @override
  State<StatefulWidget> createState() => _AnimatedPositionedDirectionalPageState();
}

class _AnimatedPositionedDirectionalPageState extends State<AnimatedPositionedDirectionalPage> {
  var _shrinked = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "AnimatedPositionedDirectional",
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _shrinked = !_shrinked;
            });
          },
        child: const Icon(Icons.restore),
      ),
      child: Center(
        child: Stack(
          children: <Widget>[
            Image.asset("assets/flutter.png"),
            Directionality(
              textDirection: TextDirection.rtl,
                child: AnimatedPositionedDirectional(
                  top: 0,
                    start: 0,
                    width: _shrinked ? 50 : 300,
                    child: Image.asset("assets/flutter.png"),
                    duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                ),
            )
          ],
        ),
      ),
    );
  }
}