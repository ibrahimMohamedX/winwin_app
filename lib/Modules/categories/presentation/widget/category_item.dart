import 'package:WinWin/Modules/home/data/models/category_model.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryItem});

  final CategoryModel categoryItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: categoryItem.ontap,
      child: Container(
        width: 165,
        padding: AppConsts.padd_marg_small,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: AppConsts.raduis_medium,
          boxShadow: AppConsts.blackshadow,
        ),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: categoryItem.images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) {
                return _categoryImage(categoryItem.images[index]);
              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  categoryItem.name,
                  style: AppTextStyles.headlineSmall.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Container(
                  padding: AppConsts.padd_small_button,
                  decoration: BoxDecoration(
                    color: AppColors.hover2,
                    borderRadius: AppConsts.raduis_small,
                  ),
                  child: Center(
                    child: Text(
                      categoryItem.count.toString(),
                      style: AppTextStyles.labelLarge,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _categoryImage(String image) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: AppConsts.raduis_medium,
        image: DecorationImage(image: AssetImage(image)),
      ),
    );
  }
}
