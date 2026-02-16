import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class MyFlipTimer extends StatefulWidget {
  const MyFlipTimer({super.key});

  @override
  _MyFlipTimerState createState() => _MyFlipTimerState();
}

class _MyFlipTimerState extends State<MyFlipTimer> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * (36 * 60 + 58);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.timer_outlined, color: Colors.white, size: 45),
        const SizedBox(width: 15),
        CountdownTimer(
          endTime: endTime,
          widgetBuilder: (_, time) {
            if (time == null) {
              return const Text('Game Over');
            }
            return Row(
              children: [
                _buildFlipBox(time.hours ?? 0),
                const SizedBox(width: 10),
                _buildFlipBox(time.min ?? 0),
                const SizedBox(width: 10),
                _buildFlipBox(time.sec ?? 0),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildFlipBox(int value) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return ScaleTransition(scale: animation, child: child);
      },
      child: Container(
        key: ValueKey<int>(value),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: AppConsts.blackshadow,
        ),
        alignment: Alignment.center,
        child: Text(
          value.toString().padLeft(2, '0'),
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(0xFF333333),
          ),
        ),
      ),
    );
  }
}
