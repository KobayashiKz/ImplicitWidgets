
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class AnimatedDefaultTextStylePage extends StatefulWidget {
  static const routeName = "AnimatedDefaultTextStyle";

  @override
  State<StatefulWidget> createState() => _AnimatedDefaultTextStylePageState();
}

class _AnimatedDefaultTextStylePageState extends State<AnimatedDefaultTextStylePage> {
  var _index = 0;

  TextStyle get _textStyle {
    switch (_index % 4) {
      case 0:
        return Theme.of(context).textTheme.display1.copyWith(color: Colors.red);
      case 1:
        return Theme.of(context).textTheme.display2.copyWith(color: Colors.blue);
      case 2:
        return Theme.of(context).textTheme.display3.copyWith(color: Colors.green);
      case 3:
        return Theme.of(context).textTheme.display4.copyWith(color: Colors.yellow);
    }

    assert(false);
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "AnimatedDefaultTextSytle",
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _index++;
            });
          },
          child: const Icon(Icons.refresh),
      ),
      child: Center(
        child: AnimatedDefaultTextStyle(
            child: const Text("Flutter"),
            style: _textStyle,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
        ),
      ),
    );
  }
}