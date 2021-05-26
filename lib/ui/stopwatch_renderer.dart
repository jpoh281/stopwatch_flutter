import 'package:flutter/material.dart';
import 'package:stopwatch_flutter/ui/clock_markers.dart';

class StopwatchRenderer extends StatelessWidget {
  final double radius;

  const StopwatchRenderer(
      {Key? key, required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (var i = 0; i < 60; i++)
          Positioned(
              left: radius,
              top: radius,
              child: ClockSecondsTickMarker(seconds: i, radius: radius)),
        for (var i = 5; i <= 60; i += 5)
          Positioned(
              left: radius,
              top: radius,
              child: ClockTextMarker(
                value: i,
                maxValue: 60,
                radius: radius,
              )),
      ],
    );
  }
}
