import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainIcon extends StatelessWidget {
  const MainIcon({
    super.key,
    this.ontap,
    required this.icon,
    this.isNot = false,
    this.bgcolor,
  });

  final void Function()? ontap;
  final String icon;
  final bool isNot;
  final Color? bgcolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //! go to setting screen
      onTap: ontap,
      child: Stack(
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgcolor ?? AppColors.white,
              boxShadow: AppConsts.blackshadow,
            ),
            child: Center(child: SvgPicture.asset(icon)),
          ),
          if (isNot)
            Positioned(
              top: 0,
              right: 0,
              child: SvgPicture.asset(AppIcons.Sdot_notifi),
            ),
        ],
      ),
    );
  }
}
