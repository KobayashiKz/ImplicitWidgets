
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/screen/home/home_page.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_align.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_container.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_crossfade.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_default_text_style.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_icon.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_opacity.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_padding.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_physical_model.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_positioned.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_positioned_directional.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_theme.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/implicitly_animated.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animations",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage(),
      routes: {
        /// Animated
        ImplicitlyAnimatedPage.routeName: (_context) => ImplicitlyAnimatedPage(),
        AnimatedAlignPage.routeName: (_context) => AnimatedAlignPage(),
        AnimatedContainerPage.routeName: (_context) => AnimatedContainerPage(),
        AnimatedDefaultTextStylePage.routeName: (_context) => AnimatedDefaultTextStylePage(),
        AnimatedOpacityPage.routeName: (_context) => AnimatedOpacityPage(),
        AnimatedPaddingPage.routeName: (_context) => AnimatedPaddingPage(),
        AnimatedPhysicalModelPage.routeName: (_context) => AnimatedPhysicalModelPage(),
        AnimatedPositionedPage.routeName: (_context) => AnimatedPositionedPage(),
        AnimatedPositionedDirectionalPage.routeName: (_context) => AnimatedPositionedDirectionalPage(),
        AnimatedThemePage.routeName: (_context) => AnimatedThemePage(),
        AnimatedCrossFadePage.routeName: (_context) => AnimatedCrossFadePage(),
        AnimatedIconPage.routeName: (_context) => AnimatedIconPage(),
      }
    );
  }
}