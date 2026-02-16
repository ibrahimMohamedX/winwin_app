import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondInfo extends StatelessWidget {
  const SecondInfo({
    super.key,
    this.ontap,
    required this.text,
    this.width_present,
    this.height,
    this.textstyle,
    this.isactive = false,
  });

  final void Function()? ontap;
  final String text;
  final double? width_present;
  final double? height;
  final TextStyle? textstyle;
  final bool? isactive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap, //var
      child: Stack(
        children: [
          Container(
            padding: AppConsts.padd_button,
            decoration: BoxDecoration(
              color: AppColors.second.withAlpha(50),
              borderRadius: AppConsts.raduis_small,
            ),
            child: Text(
              text, // var
              style: textstyle ?? AppTextStyles.bodyMedium,
            ),
          ),
          //* active dot
          if (isactive == true)
            Positioned(
              top: 0,
              right: 0,
              child: SvgPicture.asset(AppIcons.Sdot_active),
            ),
        ],
      ),
    );
  }
}
