import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/shared/models/product_model.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: product.ontap,
      child: Container(
        width: 135,
        height: 190,
        padding: AppConsts.padd_small_button,
        decoration: BoxDecoration(
          color: AppColors.hover1,
          borderRadius: AppConsts.raduis_medium,
          boxShadow: AppConsts.blackshadow,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //* image
            Image.asset(
              product.images?[0] ?? AppAssets.Pshoes1,
              width: 130,
              height: 130,
            ),
            //* name
            Text(
              product.name ??
                  'Lorem ipsum dolor sit amet consectetur adipiscing elit',
              style: AppTextStyles.bodySmall,
            ),
            //* price
            Text('\$${product.price}', style: AppTextStyles.bodyLarge),
          ],
        ),
      ),
    );
  }
}
