
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class SizeTransitionPage extends StatefulWidget {
  static const routeName = "SizeTransition";

  @override
  State<StatefulWidget> createState() => SizeTransitionPageState();
}

class SizeTransitionPageState extends State<SizeTransitionPage>
with SingleTickerProviderStateMixin {

  AnimationController _animationController;
  var _isScaleUp = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this,
    duration: const Duration(milliseconds: 500),
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
      title: "SizeTransition",
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_isScaleUp) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            _isScaleUp = !_isScaleUp;
          },
        child: const Icon(Icons.refresh),
      ),
      child: SizeTransition(
        axis: Axis.vertical,
        axisAlignment: -0.3,
        sizeFactor: _animationController.drive(
          CurveTween(curve: Curves.fastOutSlowIn),
        ).drive(
          Tween(
            begin: 0.1,
            end: 1,
          ),
        ),
        child: Image.asset("assets/flutter.png"),
      ),
    );
  }
}