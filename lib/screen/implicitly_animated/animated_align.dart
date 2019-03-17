import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/animation_object.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class AnimatedAlignPage extends StatefulWidget {
  static const routeName = "animatedAlign";

  @override
  State<StatefulWidget> createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {

  static const _alignments = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomRight,
    Alignment.bottomLeft,
  ];

  var _index = 0;
  AlignmentGeometry get _alignment => _alignments[_index % _alignments.length];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "AnimatedAlign",
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _index++;
          });
        },
        child: const Icon(Icons.refresh),
      ),
      child: AnimatedAlign(
          alignment: _alignment,
          duration: const Duration(milliseconds: 500),
          child: AnimationObject(),
          curve: Curves.easeInOut,
      ),
    );
  }
}
