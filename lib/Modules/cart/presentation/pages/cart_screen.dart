import 'package:WinWin/Modules/cart/presentation/widgets/cart_item.dart';
import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/shared/widgets/animations/fadein_animated.dart';
import 'package:WinWin/core/shared/widgets/components/main_appbar.dart';
import 'package:WinWin/core/shared/widgets/components/main_button.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:WinWin/core/themes/app_responsive.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: MainAppBar(
        leftwidget: Row(
          children: [
            Text('Cart', style: AppTextStyles.headlineLarge),
            SizedBox(width: 10),
            CircleAvatar(
              radius: 15,
              backgroundColor: AppColors.hover2,
              child: Center(
                child: Text(
                  '2',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: Responsive.ResponsiveHeight(context: context),
        child: Stack(
          children: [
            //* cart items section
            SingleChildScrollView(
              child: FadeINAnimated(
                delay_milisec: AppConsts.fadeinDelay,
                widget: Column(
                  children: [
                    //* list of cart items
                    Padding(
                      padding: AppConsts.padd_marg,
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 2,
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 10),
                        itemBuilder: (context, index) {
                          return CartItem();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //* checkout section
            Positioned(
              bottom: 0,
              child: Container(
                padding: AppConsts.padd_button,
                width: Responsive.ResponsiveWidth(context: context),
                height: 60,
                color: AppColors.hover1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //* total
                    Row(
                      spacing: 5,
                      children: [
                        Text('Total', style: AppTextStyles.headlineLarge),
                        Text('\$ 120.00', style: AppTextStyles.headlineMedium),
                      ],
                    ),
                    //* checkout button
                    MainButton(
                      text: 'Checkout',
                      borderRadius: AppConsts.raduis_medium,
                      textstyle: AppTextStyles.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //* empty cart section
  FadeINAnimated _emptyCart() {
    return FadeINAnimated(
      delay_milisec: AppConsts.fadeinDelay,
      widget: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: AppConsts.blackshadow,
              ),
              child: SvgPicture.asset(AppIcons.Semptycart),
            ),
            Text('Empty Cart', style: AppTextStyles.bodyLarge),
          ],
        ),
      ),
    );
  }
}
