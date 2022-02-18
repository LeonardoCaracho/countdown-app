import 'package:flutter/animation.dart';

class CountdownController {
  final AnimationController _controller;

  CountdownController(this._controller);

  AnimationController get controller => _controller;

  double get currentValue => _controller.value;

  bool get isAnimating => _controller.isAnimating;

  double get _countdownValue {
    return !isAnimating ? 1.0 : _controller.value;
  }

  void startCountdown() {
    _controller.reverse(from: 1.0);
  }

  String getCurrentTime() {
    Duration duration = _controller.duration! * _countdownValue;
    return (duration.inSeconds % 60).toString();
  }

  close() {
    _controller.dispose();
  }
}
