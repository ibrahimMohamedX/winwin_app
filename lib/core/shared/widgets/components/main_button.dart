import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    this.ontap,
    required this.text,
    this.width_present,
    this.height,
    this.textstyle,
    this.borderRadius,
  });

  final void Function()? ontap;
  final String text;
  final double? width_present;
  final double? height;
  final TextStyle? textstyle;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap, //var
      child: Container(
        padding: AppConsts.padd_button,
        // width: ResponsiveWidth(context: context, width: width_present),
        height: height ?? 61,
        decoration: BoxDecoration(
          color: AppColors.prim1,
          borderRadius: borderRadius ?? AppConsts.raduis_big,
        ),
        child: Center(
          child: Text(
            text, // var
            style: textstyle ?? AppTextStyles.headlineMedium,
          ),
        ),
      ),
    );
  }
}
