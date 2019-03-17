
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  static const routeName = "animatedCrossFade";

  @override
  State<StatefulWidget> createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  var _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "AnimatedCrossFade",
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _showFirst = !_showFirst;
            });
          },
          child: Icon(Icons.refresh),
      ),
      child: Center(
        child: AnimatedCrossFade(
            firstChild: Image.asset("assets/flutter.png"),
            secondChild: Image.asset("assets/flutter-green.png"),
            duration: const Duration(milliseconds: 500),
            crossFadeState: _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ),
    );
  }
}