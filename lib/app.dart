
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/screen/home/home_page.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_align.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_container.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_default_text_style.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_opacity.dart';
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
      }
    );
  }
}