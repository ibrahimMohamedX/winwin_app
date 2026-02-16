import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/shared/widgets/animations/fadein_animated.dart';
import 'package:WinWin/core/shared/widgets/components/main_icon.dart';
import 'package:WinWin/core/shared/widgets/components/main_info.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:WinWin/core/themes/app_responsive.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});
  final double _height = 100;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FadeINAnimated(
        delay_milisec: AppConsts.fadeinDelay,
        widget: Container(
          margin: EdgeInsets.only(top: 10),
          width: Responsive.ResponsiveWidth(context: context),
          padding: AppConsts.pagepadding,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: AppConsts.blackshadow,
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.white,

                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(AppAssets.Puser),
                  ),
                ),
              ),

              SizedBox(width: 15),
              MainInfo(
                text: 'My Activities',
                // height: 35,
              ),
              Spacer(),
              MainIcon(icon: AppIcons.Sminu, isNot: true),
              SizedBox(width: 15),
              MainIcon(icon: AppIcons.Ssetting),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(_height);
}
