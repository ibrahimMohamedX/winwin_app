import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:flutter/material.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({
    super.key,
    this.ontap,
    required this.text,
    this.width_present,
    this.height,
    this.textstyle,
  });

  final void Function()? ontap;
  final String text;
  final double? width_present;
  final double? height;
  final TextStyle? textstyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap, //var
      child: Container(
        padding: AppConsts.padd_marg,
        decoration: BoxDecoration(
          color: AppColors.prim1,
          borderRadius: AppConsts.raduis_big,
        ),
        child: Text(
          text, // var
          style: textstyle ?? AppTextStyles.bodyMedium,
        ),
      ),
    );
  }
}
