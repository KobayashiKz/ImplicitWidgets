
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class AnimatedSwitcherPage extends StatefulWidget {
  static const routeName = "animatedSwitcher";

  @override
  State<StatefulWidget> createState() => _AnimatedSwitcherPageState();
}

class _AnimatedSwitcherPageState extends State<AnimatedSwitcherPage> {
  var _isDefaultImage = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "AnimatedSwitcher",
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _isDefaultImage = !_isDefaultImage;
            });
          },
        child: const Icon(Icons.refresh),
      ),
      child: Center(
        child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
          child: Image.asset("assets/flutter${_isDefaultImage ? "" : "-green"}.png"),
          key: UniqueKey(),
        ),
      ),
    );
  }
}