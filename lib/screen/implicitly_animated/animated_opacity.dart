
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class AnimatedOpacityPage extends StatefulWidget {
  static const routeName = "animatedOpacity";

  @override
  State<StatefulWidget> createState() => AnimatedOpacityPageState();
}

class AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  var _opaque = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "AnimatedOpacity",
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _opaque = !_opaque;
          });
        },
        child: const Icon(Icons.refresh),
      ),
      child: Center(
        child: AnimatedOpacity(
            opacity: _opaque ? 1 : 0.3,
            duration: const Duration(milliseconds: 500),
        child: Image.asset("assets/flutter.png"),),
      ),
    );
  }
}