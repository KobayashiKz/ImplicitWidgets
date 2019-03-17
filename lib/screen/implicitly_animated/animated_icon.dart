
import 'package:flutter/material.dart';
import 'package:implicit_animation_sample/widgets/app_scaffold.dart';

class AnimatedIconPage extends StatefulWidget {
  static const routeName = "AnimatedIcon";

  @override
  State<StatefulWidget> createState() => _AnimatedIconPageState();
}

class _AnimatedIconPageState extends State<AnimatedIconPage>
  with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  var _playButtonEnabled = true;

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

  void _play() async {
    setState(() {
      _playButtonEnabled = false;
    });

    await _animationController.forward(from: 0);
    await Future.delayed(const Duration(seconds: 2));
    await _animationController.reverse();

    setState(() {
      _playButtonEnabled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "AnimatedIcon",
      floatingActionButton: _playButtonEnabled
          ? FloatingActionButton(
        onPressed: _play,
        child: const Icon(Icons.play_arrow),
      ) : null,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildAnimatedIcon(AnimatedIcons.add_event, label: "add_event"),
                _buildAnimatedIcon(
                    AnimatedIcons.pause_play, label: "pause_play"),
                _buildAnimatedIcon(
                    AnimatedIcons.close_menu, label: "close_menu"),
                _buildAnimatedIcon(
                    AnimatedIcons.ellipsis_search, label: "ellipsis_search"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildAnimatedIcon(
                    AnimatedIcons.arrow_menu, label: "arrow_menu"),
                _buildAnimatedIcon(AnimatedIcons.home_menu, label: "home_menu"),
                _buildAnimatedIcon(AnimatedIcons.list_view, label: "list_view"),
                _buildAnimatedIcon(AnimatedIcons.view_list, label: "view_list"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildAnimatedIcon(
                    AnimatedIcons.event_add, label: "event_add"),
                _buildAnimatedIcon(AnimatedIcons.menu_arrow, label: "menu_arrow"),
                _buildAnimatedIcon(AnimatedIcons.menu_close, label: "menu_close"),
                _buildAnimatedIcon(AnimatedIcons.play_pause, label: "play_pause"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedIcon(AnimatedIconData icon, {@required String label}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedIcon(
          icon: icon,
          progress: _animationController,
        ),
        const SizedBox(
          height: 0,
        ),
        Text(label),
      ],
    );
  }
}
