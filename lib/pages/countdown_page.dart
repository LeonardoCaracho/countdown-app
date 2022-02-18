import 'package:countdown/controllers/countdown_controller.dart';
import 'package:flutter/material.dart';
import 'package:countdown/widgets/widgets.dart';

class CountdownPage extends StatefulWidget {
  const CountdownPage({Key? key}) : super(key: key);

  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage> with TickerProviderStateMixin {
  late CountdownController countdownController;

  @override
  void initState() {
    super.initState();

    countdownController = CountdownController(AnimationController(
      vsync: this,
      duration: const Duration(seconds: 30),
    ));
  }

  @override
  void dispose() {
    countdownController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: countdownController.controller,
        builder: (context, _) {
          return Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Theme.of(context).primaryColor,
                  height: countdownController.currentValue * MediaQuery.of(context).size.height,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TimerDisplay(
                      key: const Key('countdown_display'),
                      timerString: countdownController.getCurrentTime(),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 32.0,
                  ),
                  child: PlayButton(
                    key: const Key("play_countdown"),
                    countdownController: countdownController,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
