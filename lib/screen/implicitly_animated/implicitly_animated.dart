
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_align.dart';
import 'package:implicit_animation_sample/widgets/app_list_tile.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class ImplicitlyAnimatedPage extends StatelessWidget {
  static const routeName = "implicitlyAnimated";

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "Animated",
      child: ListView(
        children: <Widget>[
          const AppListTile(
            title: "AnimatedAlign",
            nextRouteName: AnimatedAlignPage.routeName,
          )
        ],
      ),
    );
  }
}