
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class AnimatedThemePage extends StatefulWidget {
  static const routeName = "animatedTheme";

  @override
  State<StatefulWidget> createState() => AnimatedThemePageState();
}

class AnimatedThemePageState extends State<AnimatedThemePage> {
  var _isLightTheme = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "AnimatedTheme",
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _isLightTheme = !_isLightTheme;
            });
          },
        child: const Icon(Icons.refresh),
      ),
      child: Center(
        child: AnimatedTheme(
          data: _isLightTheme ? ThemeData.light() : ThemeData.dark(),
          duration: const Duration(milliseconds: 500),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Hello",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

