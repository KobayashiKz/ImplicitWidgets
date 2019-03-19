
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/screen/transition/align_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/decorated_box_transition_page.dart';
import 'package:implicit_animation_sample/widgets/app_list_tile.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class TransitionPage extends StatelessWidget {
  static const routeName = "TransitionPage";

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "TransitionPage",
      child: ListView(
        children: <Widget>[
          const AppListTile(
            title: "AlignTransition",
            nextRouteName: AlignTransitionPage.routeName,
          ),
          const AppListTile(
            title: "DecoratedBoxTransitionPage",
            nextRouteName: DecoratedBoxTransitionPage.routeName,
          ),
        ],
      ),
    );
  }
}