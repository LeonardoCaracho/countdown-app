import 'package:countdown/controllers/countdown_controller.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
    required this.countdownController,
  }) : super(key: key);

  final CountdownController countdownController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: countdownController.controller,
      builder: (context, child) {
        return !countdownController.isAnimating
            ? IconButton(
                iconSize: 48,
                onPressed: countdownController.startCountdown,
                icon: Icon(
                  Icons.play_arrow,
                  color: Theme.of(context).primaryColor,
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
