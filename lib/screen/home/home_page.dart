
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/implicitly_animated.dart';
import 'package:implicit_animation_sample/widgets/app_list_tile.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "Animation",
      child: ListView(
        children: [
          const AppListTile(
            title: "ImplicitlyAnimated",
            nextRouteName: ImplicitlyAnimatedPage.routeName,
          )
        ],
      ),
    );
  }
}
