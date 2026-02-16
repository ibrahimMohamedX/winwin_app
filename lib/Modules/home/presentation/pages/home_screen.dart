import 'package:WinWin/Modules/home/data/models/category_model.dart';
import 'package:WinWin/Modules/categories/presentation/widget/category_item.dart';
import 'package:WinWin/core/routes/app_routes.dart';
import 'package:WinWin/core/routes/navigation_data.dart';
import 'package:WinWin/core/shared/widgets/components/main_appbar.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/shared/widgets/animations/fadein_animated.dart';
import 'package:WinWin/core/shared/widgets/components/main_textfiled.dart';
import 'package:WinWin/core/shared/widgets/components/product_list.dart';
import 'package:WinWin/core/shared/widgets/components/seemore_button.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:WinWin/core/themes/app_responsive.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselSliderController _sliderController = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: MainAppBar(
        title: 'Shop',
        rightwidget: MainTextField(
          hintText: 'Search',
          width: 0.6613333333333333,
          suffixIcon: Icon(Icons.search, color: AppColors.prim1),
        ),
      ),
      body: SingleChildScrollView(
        child: FadeINAnimated(
          delay_milisec: AppConsts.fadeinDelay,
          widget: Column(
            spacing: 20,
            children: [
              //* slider
              SizedBox(height: 200, child: _buildSlider()),
              //* categories
              _categorySection(context),
              //* new items
              Column(
                children: [
                  SectionTitle(title: 'New Items'),
                  ProductList(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //* slider
  CarouselSlider _buildSlider() {
    return CarouselSlider.builder(
      carouselController: _sliderController,
      itemCount: 2,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          InkWell(
            onTap: () {
              //! go to slider screen
            },
            child: FadeINAnimated(
              delay_milisec: AppConsts.fadeinDelay,
              widget: ClipRRect(
                borderRadius: AppConsts.raduis_medium,
                child: AnimatedContainer(
                  duration: AppConsts.duration,
                  color: AppColors.accent,
                  width: Responsive.ResponsiveWidth(
                    context: context,
                    width: 0.8863636363636364,
                  ),
                  height: 190,
                ),
              ),
            ),
          ),
      options: CarouselOptions(
        pauseAutoPlayOnManualNavigate: true, //* pause on manual navigate
        animateToClosest: true,
        autoPlayAnimationDuration: Duration(
          milliseconds: 1200,
        ), //* slider animation
        autoPlayInterval: Duration(seconds: 5), //* time between slides
        height: 190,
        viewportFraction: 1,
        enlargeFactor: 0.5,
        initialPage: 0,
        autoPlay: true,
        enlargeCenterPage: true,
        onPageChanged: (int index, CarouselPageChangedReason reason) {
          setState(() {
            //! on page changed logic
          });
        },
      ),
    );
  }

  //* categories
  Widget _categorySection(BuildContext context) {
    final List<CategoryModel> categories = CategoryModel.categories(context);
    return Padding(
      padding: AppConsts.pagepadding,
      child: Column(
        children: [
          // title
          SectionTitle(
            title: 'Categories',
            ontap: () {
              //!!!!!!!!!!!!!!!!!!!!!
              pushWithReplacement(context, AppRoutes.main, 2);
            },
          ),
          SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              return CategoryItem(categoryItem: categories[index]);
            },
          ),
        ],
      ),
    );
  }
}
