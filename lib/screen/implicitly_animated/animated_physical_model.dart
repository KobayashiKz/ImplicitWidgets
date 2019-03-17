
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class AnimatedPhysicalModelPage extends StatefulWidget {
  static const routeName = "animatedPhysicalModel";

  @override
  State<StatefulWidget> createState() => AnimatedPhysicalModelPageState();
}

class AnimatedPhysicalModelPageState extends State<AnimatedPhysicalModelPage> {
  var _hasElevation = false;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "AnimatedPhysicalModel",
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _hasElevation = !_hasElevation;
            });
          },
        child: const Icon(Icons.refresh),
      ),
      child: Center(
        child: Padding(
            padding: const EdgeInsets.all(32),
          child: AnimatedPhysicalModel(
            color: Colors.cyan,
            shadowColor: Colors.black,
            shape: BoxShape.rectangle,
            duration: const Duration(milliseconds: 500),
            elevation: _hasElevation ? 16 : 0,
            child: Padding(
                padding: const EdgeInsets.all(8),
              child: Image.asset("assets/flutter.png"),
            ),
          ),
        ),
      ),
    );
  }
}