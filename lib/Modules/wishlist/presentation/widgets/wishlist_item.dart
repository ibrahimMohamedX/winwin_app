import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/shared/widgets/components/second_info.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:WinWin/core/themes/app_responsive.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WishlistItem extends StatelessWidget {
  const WishlistItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppConsts.padd_button,
      width: Responsive.ResponsiveWidth(context: context, width: 0.99),
      height: 120,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: AppConsts.raduis_medium,
        boxShadow: AppConsts.blackshadow,
      ),
      child: Row(
        spacing: 10,
        children: [
          //* img
          Container(
            padding: AppConsts.padd_marg_small,
            width: 120,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: AppConsts.raduis_medium,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppAssets.Pclothe1),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: InkWell(
                onTap: () {
                  //! delete from wishlist
                },
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColors.white,
                  child: SvgPicture.asset(AppIcons.Sdelete),
                ),
              ),
            ),
          ),
          //* info
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //* title
                Text(
                  'product name',
                  style: AppTextStyles.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                //* title
                Text(
                  'product desc',
                  style: AppTextStyles.bodySmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                //* price
                Row(
                  spacing: 10,
                  children: [
                    //* price before
                    Text(
                      '\$ 17.00',
                      style: AppTextStyles.headlineMedium.copyWith(
                        color: AppColors.red.withAlpha(100),
                        decoration: TextDecoration.lineThrough,
                        decorationColor: AppColors.red.withAlpha(100),
                      ),
                    ),
                    //* price after
                    Text('\$ 12.00', style: AppTextStyles.headlineMedium),
                  ],
                ),
                //* color and size
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //* color
                    Row(
                      spacing: 10,
                      children: [
                        SecondInfo(text: 'Pink'),
                        //* size
                        SecondInfo(text: 'M'),
                      ],
                    ),
                    //* add to card
                    InkWell(
                      onTap: () {
                        //! add to card
                      },
                      child: SvgPicture.asset(AppIcons.Sadd_tocard),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
