
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class DefaultTextStyleTransitionPage extends StatefulWidget {
  static const routeName = "DefaultTextStyleTransition";

  @override
  State<StatefulWidget> createState() => DefaultTextStyleTransitionPageState();
}

class DefaultTextStyleTransitionPageState extends State<DefaultTextStyleTransitionPage>
  with SingleTickerProviderStateMixin {

  AnimationController _animationController;
  var _isScaleUp = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
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
      title: "DefaultTextStyleTransition",
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
      child: DefaultTextStyleTransition(
          style: _animationController.drive(
            CurveTween(curve: Curves.fastOutSlowIn),
          ).drive(
            TextStyleTween(
              begin: Theme.of(context).textTheme.display1,
              end: Theme.of(context).textTheme.display4,
            ),
          ),
          child: Center(
            child: const Text("Flutter"),
          )
      ),
    );
  }
}