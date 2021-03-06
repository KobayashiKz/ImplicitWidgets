
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
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_sized.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_switcher.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/animated_theme.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/fade_in_image.dart';
import 'package:implicit_animation_sample/screen/implicitly_animated/implicitly_animated.dart';
import 'package:implicit_animation_sample/screen/transition/align_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/decorated_box_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/default_text_style_transition.dart';
import 'package:implicit_animation_sample/screen/transition/fade_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/positioned_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/rotation_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/scale_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/siza_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/slide_transition_page.dart';
import 'package:implicit_animation_sample/screen/transition/transition_page.dart';

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
        AnimatedSizePage.routeName: (_context) => AnimatedSizePage(),
        AnimatedSwitcherPage.routeName: (_context) => AnimatedSwitcherPage(),
        FadeInImagePage.routeName: (_context) => FadeInImagePage(),
        TransitionPage.routeName: (_context) => TransitionPage(),
        AlignTransitionPage.routeName: (_context) => AlignTransitionPage(),
        DecoratedBoxTransitionPage.routeName: (_context) => DecoratedBoxTransitionPage(),
        DefaultTextStyleTransitionPage.routeName: (_context) => DefaultTextStyleTransitionPage(),
        FadeTransitionPage.routeName: (_context) => FadeTransitionPage(),
        PositionedTransitionPage.routeName: (_context) => PositionedTransitionPage(),
        RotationTransitionPage.routeName: (_context) => RotationTransitionPage(),
        SizeTransitionPage.routeName: (_context) => SizeTransitionPage(),
        ScaleTransitionPage.routeName: (_context) => ScaleTransitionPage(),
        SlideTransitionPage.routeName: (_context) => SlideTransitionPage(),
      }
    );
  }
}