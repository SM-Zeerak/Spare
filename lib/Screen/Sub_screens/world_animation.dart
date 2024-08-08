import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WorldAnimation extends StatefulWidget {
  const WorldAnimation({super.key});

  @override
  State<WorldAnimation> createState() => _WorldAnimationState();
}

class _WorldAnimationState extends State<WorldAnimation> with TickerProviderStateMixin{
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this,duration: Duration(hours: 2));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: 200,
      height: 250,
        child: ListView(
          children: [
            Lottie.asset(
              'assets/animation/world_animation.json',
              // width: 300,
              height: 200,
              fit: BoxFit.cover,
              controller: _controller,
              onLoaded: (composition) {
                // Configure the AnimationController with the duration of the
                // Lottie file and start the animation.
                _controller
                  ..duration = composition.duration
                  ..forward();
              },
            ),
          ],
        ),
      );
    
  }
}