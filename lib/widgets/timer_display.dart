import 'package:flutter/material.dart';

class TimerDisplay extends StatelessWidget {
  const TimerDisplay({
    Key? key,
    required this.timerString,
  }) : super(key: key);

  final String timerString;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Align(
          alignment: FractionalOffset.center,
          child: Text(
            timerString,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
