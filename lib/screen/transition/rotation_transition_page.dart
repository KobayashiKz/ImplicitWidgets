
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class RotationTransitionPage extends StatefulWidget {
  static const routeName = "RotationTransition";

  @override
  State<StatefulWidget> createState() => _RotationTransitionPageState();
}

class _RotationTransitionPageState extends State<RotationTransitionPage>
  with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this,
    duration: const Duration(milliseconds: 3000),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "RotationTransition",
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            _animationController.forward(from: 0);
          },
        child: const Icon(Icons.refresh),
      ),
      child: RotationTransition(
        alignment: Alignment.bottomCenter,
        turns: _animationController.drive(
          CurveTween(
            curve: Curves.elasticOut,
          ),
        ).drive(
          Tween<double>(
            begin: 0,
            end: 2,
          ),
        ),
        child: Image.asset("assets/flutter.png"),
      ),
    );
  }
}