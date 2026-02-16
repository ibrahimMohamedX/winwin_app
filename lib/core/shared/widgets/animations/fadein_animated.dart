import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FadeINAnimated extends StatelessWidget {
  const FadeINAnimated({
    super.key,
    required this.delay_milisec,
    required this.widget,
  });

  final int delay_milisec;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      delay: Duration(milliseconds: delay_milisec),
      duration: Duration(milliseconds: 500),
      child: widget,
    );
  }
}
