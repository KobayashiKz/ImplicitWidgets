
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/screen/transition/align_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/decorated_box_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/default_text_style_transition.dart';
import 'package:implicit_animation_sample/screen/transition/fade_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/positioned_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/rotation_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/scale_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/siza_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/slide_transition_page.dart';
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
            title: "DecoratedBoxTransition",
            nextRouteName: DecoratedBoxTransitionPage.routeName,
          ),
          const AppListTile(
            title: "DefaultTextStyleTransition",
            nextRouteName: DefaultTextStyleTransitionPage.routeName,
          ),
          const AppListTile(
            title: "FadeTransition",
            nextRouteName: FadeTransitionPage.routeName,
          ),
          const AppListTile(
            title: "PositionedTransition",
            nextRouteName: PositionedTransitionPage.routeName,
          ),
          const AppListTile(
            title: "RotationTransition",
            nextRouteName: RotationTransitionPage.routeName,
          ),
          const AppListTile(
            title: "SizeTransition",
            nextRouteName: SizeTransitionPage.routeName,
          ),
          const AppListTile(
            title: "ScaleTransition",
            nextRouteName: ScaleTransitionPage.routeName,
          ),
          const AppListTile(
            title: "SlideTransition",
            nextRouteName: SlideTransitionPage.routeName,
          ),
        ],
      ),
    );
  }
}