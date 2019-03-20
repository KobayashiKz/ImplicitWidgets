import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class ScaleTransitionPage extends StatefulWidget {
  static const routeName = "ScaleTransition";

  @override
  State<StatefulWidget> createState() => ScaleTransitionPageState();
}

class ScaleTransitionPageState extends State<ScaleTransitionPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  var _isScaleUp = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "ScaleTransition",
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_isScaleUp) {
            _animationController.reverse();
          } else {
            _animationController.forward();
          }
          _isScaleUp = !_isScaleUp;
        },
        child: Icon(Icons.refresh),
      ),
      child: Column(
        children: <Widget>[
          ScaleTransition(
            alignment: Alignment.bottomCenter,
            scale: _animationController
                .drive(
                  CurveTween(
                    curve: const Interval(0, 0.8, curve: Curves.fastOutSlowIn),
                  ),
                )
                .drive(
                  Tween(
                    begin: 0.3,
                    end: 1,
                  ),
                ),
            child: Image.asset("assets/flutter.png"),
          ),
          const SizedBox(height: 16),
          ScaleTransition(
            alignment: Alignment.topCenter,
            scale: _animationController
                .drive(
                  CurveTween(
                    curve: const Interval(0.4, 1, curve: Curves.fastOutSlowIn),
                  ),
                )
                .drive(
                  Tween(
                    begin: 0.3,
                    end: 1,
                  ),
                ),
            child: Text(
              "Flutter!!",
              style: TextStyle(fontSize: 32),
            ),
          )
        ],
      ),
    );
  }
}
