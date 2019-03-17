
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/animation_object.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class AnimatedContainerPage extends StatefulWidget {
  static const routeName = "animatedContainer";

  @override
  State<StatefulWidget> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  static const _alignments = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomRight,
    Alignment.bottomLeft,
  ];

  static const _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.pink,
  ];

  var _index = 0;
  AlignmentGeometry get _alignment => _alignments[_index % _alignments.length];
  Color get _color => _colors[_index % _colors.length];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "AnimatedContainer",
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _index++;
            });
          },
        child: const Icon(Icons.refresh),
      ),
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
        alignment: _alignment,
        color: _color,
        margin: EdgeInsets.all(20 * ((3 - _index).toDouble() % 4)),
        padding: EdgeInsets.all(20 * (_index.toDouble() % 4)),
        curve: Curves.easeInOut,
        child: AnimationObject(),
      ),
    );
  }
}