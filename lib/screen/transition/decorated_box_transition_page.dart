
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class DecoratedBoxTransitionPage extends StatefulWidget {
  static const routeName = "DecoratedBoxTransition";

  @override
  State<StatefulWidget> createState() => DecoratedBoxTransitionPageState();
}

class DecoratedBoxTransitionPageState extends State<DecoratedBoxTransitionPage>
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
      title: "DecoratedBoxTransition",
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
      child: Center(
        child: DecoratedBoxTransition(
          decoration: _animationController.drive(
            CurveTween(curve: Curves.fastOutSlowIn),
          )
          .drive(
            DecorationTween(
              begin: FlutterLogoDecoration(
                style: FlutterLogoStyle.horizontal,
              ),
              end: FlutterLogoDecoration(
                style: FlutterLogoStyle.markOnly,
              ),
            ),
          ),
          child: const SizedBox(
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}