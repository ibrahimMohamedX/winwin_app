import 'package:WinWin/Modules/home/data/models/category_model.dart';
import 'package:WinWin/Modules/categories/presentation/widget/category_item.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/shared/widgets/animations/fadein_animated.dart';
import 'package:WinWin/core/shared/widgets/components/main_appbar.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categories = CategoryModel.categories(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: MainAppBar(title: 'Categories'),
      body: SingleChildScrollView(
        child: FadeINAnimated(
          delay_milisec: AppConsts.fadeinDelay,
          widget: Padding(
            padding: AppConsts.pagepadding,
            child: Column(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    // childAspectRatio: 0.859375,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryItem(categoryItem: categories[index]);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
