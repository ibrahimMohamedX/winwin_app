import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    this.ontap,
    this.rightwidget,
    this.see_rightwidget = true,
    this.padding = true,
  });

  final String title;
  final void Function()? ontap;
  final Widget? rightwidget;
  final bool see_rightwidget;
  final bool padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding == true ? AppConsts.pagepadding : EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppTextStyles.headlineMedium),
          InkWell(
            onTap: ontap, //! handle see all
            child: see_rightwidget == true
                ? rightwidget ??
                      Row(
                        children: [
                          Text('See all', style: AppTextStyles.bodyLarge),
                          SizedBox(width: 10),
                          SvgPicture.asset(AppIcons.Sarrow_right),
                        ],
                      )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
