import 'package:WinWin/core/consts/app_colors.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, this.ontap, required this.text});

  final void Function()? ontap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap, //var
      child: Container(
        width: double.infinity,
        height: 61,
        decoration: BoxDecoration(
          color: AppColors.prim1,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            text, // var
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}
