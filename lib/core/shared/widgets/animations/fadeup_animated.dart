import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class FadeupAnimated extends StatelessWidget {
  const FadeupAnimated({
    super.key,
    required this.delay_milisec,
    required this.widget,
  });

  final int delay_milisec;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      from: 40,
      delay: Duration(milliseconds: delay_milisec),
      duration: Duration(milliseconds: 500),
      child: widget,
    );
  }
}
