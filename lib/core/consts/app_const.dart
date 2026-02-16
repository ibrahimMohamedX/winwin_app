import 'package:WinWin/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppConsts {
  // padding
  static const pagepadding = EdgeInsets.symmetric(horizontal: 20);
  static const padd_marg_small = EdgeInsets.all(5);
  static const padd_marg = EdgeInsets.all(15);
  static const padd_button = EdgeInsets.symmetric(horizontal: 15, vertical: 5);
  static const padd_small_button = EdgeInsets.symmetric(
    horizontal: 10,
    vertical: 5,
  );

  // border
  static final border_prim = Border.all(width: 2, color: AppColors.prim1);
  static final border_second = Border.all(
    width: 2,
    color: AppColors.hover2.withAlpha(100),
  );
  static final border_accent = Border.all(width: 2, color: AppColors.accent);
  static final border_red = Border.all(width: 2, color: AppColors.red);
  // border raduis
  static final raduis_small = BorderRadius.circular(8);
  static final raduis_medium = BorderRadius.circular(12);
  static final raduis_big = BorderRadius.circular(30);

  // duration
  static final Duration duration = Duration(milliseconds: 500);

  // delay
  static final int fadeinDelay = 300;

  // elevation

  // boxshadow
  static const whiteshadow = [
    BoxShadow(
      color: Color.fromARGB(50, 255, 255, 255),
      blurRadius: 10,
      spreadRadius: 2,
      offset: Offset(0, 0),
    ),
  ];
  static const blackshadow = [
    BoxShadow(
      color: Colors.black26,
      blurRadius: 10,
      spreadRadius: 0,
      offset: Offset(0, 0),
    ),
  ];
  static const prim1shadow = [
    BoxShadow(
      color: AppColors.prim1,
      blurRadius: 5,
      spreadRadius: 1,
      offset: Offset(0, 0),
    ),
  ];
  static const secondshadow = [
    BoxShadow(
      color: Color.fromARGB(130, 20, 165, 136),
      blurRadius: 10,
      spreadRadius: 0,
      offset: Offset(0, 0),
    ),
  ];
  static const redshadow = [
    BoxShadow(
      color: Color.fromARGB(100, 255, 58, 110),
      blurRadius: 10,
      spreadRadius: 0,
      offset: Offset(0, 0),
    ),
  ];

  // gradients

  static const gradient_second = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color.fromARGB(111, 20, 165, 136),
      // Color.fromARGB(255, 255, 255, 255),
      AppColors.light_bg,
    ],
    stops: [0.0, 0.4],
  );
}
