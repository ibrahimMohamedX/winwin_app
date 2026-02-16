import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/shared/widgets/animations/fadein_animated.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, this.rightwidget, this.title, this.leftwidget});

  final String? title;
  final Widget? rightwidget;
  final Widget? leftwidget;

  @override
  Widget build(BuildContext context) {
    return FadeINAnimated(
      delay_milisec: AppConsts.fadeinDelay,
      widget: SafeArea(
        child: Padding(
          padding: AppConsts.pagepadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leftwidget ??
                  Text(title ?? '', style: AppTextStyles.headlineLarge),
              // rightwidget
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: rightwidget ?? Column(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
