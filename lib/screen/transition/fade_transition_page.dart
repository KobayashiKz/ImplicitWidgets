
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class FadeTransitionPage extends StatefulWidget {
  static const routeName = "FadeTransition";

  @override
  State<StatefulWidget> createState() => FadeTransitionPageState();
}

class FadeTransitionPageState extends State<FadeTransitionPage>
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
    final height = MediaQuery.of(context).size.width / 2;
    return AppScaffold(
      title: "FadeTransition",
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
      child: Column(
        children: <Widget>[
          SizedBox(
            height: height,
            child: Row(
              children: <Widget>[
                _buildContent(0),
                _buildContent(0.2),
              ],
            ),
          ),
          SizedBox(
            height: height,
            child: Row(
              children: <Widget>[
                _buildContent(0.4),
                _buildContent(0.6),
              ],
            ),
          )
        ],
        )
      );
  }

  FadeTransition _buildContent(double start) {
    return FadeTransition(
      opacity: _animationController.drive(
        CurveTween(
          curve: Interval(
            start, start + 0.4,
            curve: Curves.fastOutSlowIn,
          )
        ),
      ).drive(
        Tween(
          begin: 0.1,
          end: 1,
        ),
      ),
      child: Image.asset("assets/flutter.png"),
    );
  }
}

