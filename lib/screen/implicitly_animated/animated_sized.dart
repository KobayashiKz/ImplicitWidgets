import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class AnimatedSizePage extends StatefulWidget {
  static const routeName = "animatedSize";

  @override
  State<StatefulWidget> createState() => _AnimatedSizePageState();
}

class _AnimatedSizePageState extends State<AnimatedSizePage>
  with SingleTickerProviderStateMixin {
  var _isSmall = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "AnimatedSize",
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _isSmall = !_isSmall;
            });
          },
        child: const Icon(Icons.refresh),
      ),
      child: Center(
        child: AnimatedSize(
          vsync: this,
          duration: const Duration(milliseconds: 500),
          child: SizedBox(
            width: _isSmall ? 100 : 200,
            height: _isSmall ? 100 : 200,
            child: Image.asset("assets/flutter.png"),
          ),
        ),
      ),
    );
  }
}