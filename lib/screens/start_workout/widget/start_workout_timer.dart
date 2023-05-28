// ignore_for_file: library_private_types_in_public_api

import 'package:custom_timer/custom_timer.dart';
import 'package:uzima/core/service/date_service.dart';
import 'package:flutter/material.dart';

class StartWorkoutTimer extends StatefulWidget {
  final int time;
  final bool isPaused;

  const StartWorkoutTimer({
    super.key,
    required this.time,
    required this.isPaused,
  });

  @override
  _StartWorkoutTimerState createState() => _StartWorkoutTimerState();
}

class _StartWorkoutTimerState extends State<StartWorkoutTimer> {
  @override
  Widget build(BuildContext context) {
    return widget.isPaused ? _createPauseText() : _createCountdownTimer();
  }

  Widget _createCountdownTimer() {
    return CustomTimer(
      from: Duration(seconds: widget.time),
      to: const Duration(seconds: 0),
      onBuildAction: CustomTimerAction.auto_start,
      builder: (CustomTimerRemainingTime remaining) {
        return Text(
          "${remaining.minutes}:${remaining.seconds}",
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        );
      },
    );
  }

  Widget _createPauseText() {
    final minutesSeconds = DateService.convertIntoSeconds(widget.time);
    return Text(
      "${minutesSeconds.minutes.toString().padLeft(2, '0')}:${minutesSeconds.seconds.toString().padLeft(2, '0')}",
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
