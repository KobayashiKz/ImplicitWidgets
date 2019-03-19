
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class AlignTransitionPage extends StatefulWidget {
  static const routeName = "alignTransition";

  @override
  State<StatefulWidget> createState() => _AlignTransitionPageState();
}

class _AlignTransitionPageState extends State<AlignTransitionPage>
  with SingleTickerProviderStateMixin {
  var _isMoved = false;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500)
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
      title: "AlignTransition",
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_isMoved) {
            _animationController.reverse();
          } else {
            _animationController.forward();
          }
          _isMoved = !_isMoved;
        },
        child: const Icon(Icons.refresh),
      ),
      child: Stack(
        children: <Widget>[
          AlignTransition(
            alignment: _animationController.drive(
              CurveTween(
                curve: const Interval(0.4, 1, curve: Curves.fastOutSlowIn),
              ),
            )
                .drive(AlignmentTween(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            ),
            child: Image.asset("assets/flutter-green.png",
              width: 200,
            ),
          ),
          AlignTransition(
            alignment: _animationController.drive(
              CurveTween(
                curve: const Interval(0, 0.6, curve: Curves.fastOutSlowIn),
              ),
            )
                .drive(AlignmentTween(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            ),
            child: Image.asset("assets/flutter.png",
              width: 200,),
          )
        ],
      ),
    );
  }
}