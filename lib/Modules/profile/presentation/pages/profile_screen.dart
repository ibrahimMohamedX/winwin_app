import 'package:WinWin/Modules/profile/presentation/widgets/appbar_profile.dart';
import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/shared/widgets/animations/fadein_animated.dart';
import 'package:WinWin/core/shared/widgets/components/product_list.dart';
import 'package:WinWin/core/shared/widgets/components/second_info.dart';
import 'package:WinWin/core/shared/widgets/components/seemore_button.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:WinWin/core/themes/app_responsive.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(),
      body: SingleChildScrollView(
        child: FadeINAnimated(
          delay_milisec: AppConsts.fadeinDelay,
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              //* hello sec
              Padding(
                padding: AppConsts.pagepadding,
                child: Text('Hello,joun!', style: AppTextStyles.headlineLarge),
              ),
              SizedBox(height: 20),
              //* today offer sec
              _todayOffers(context),
              SizedBox(height: 20),
              //* my orders sec
              SectionTitle(title: 'Recently viewed', see_rightwidget: false),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColors.second.withAlpha(100),
                      child: Icon(Icons.error_outline, size: 35),
                    ),
                    SizedBox(height: 5),
                    Text('No Reviewed !', style: AppTextStyles.bodyMedium),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 15),
              SectionTitle(title: 'My Orders', see_rightwidget: false),
              SizedBox(height: 15),
              Padding(
                padding: AppConsts.pagepadding,
                child: Row(
                  spacing: 10,
                  children: [
                    SecondInfo(text: 'To Pay'),
                    SecondInfo(text: 'To Recieve', isactive: true),
                    SecondInfo(text: 'To Review'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              //* new items
              // title
              SectionTitle(title: 'New Items'),
              // list items
              ProductList(),
              SizedBox(height: 15),
              //* most popular
              SectionTitle(title: 'Most Popular'),
              ProductList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _todayOffers(BuildContext context) {
    return Padding(
      padding: AppConsts.pagepadding,
      child: Container(
        width: Responsive.ResponsiveWidth(context: context),
        padding: AppConsts.padd_marg,
        decoration: BoxDecoration(
          color: AppColors.hover1,
          borderRadius: AppConsts.raduis_medium,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Today\'s offer', style: AppTextStyles.headlineMedium),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' .HI joun check today deals\n .Exclusive offers waiting for you',
                  style: AppTextStyles.bodyMedium,
                ),
                InkWell(
                  onTap: () {
                    //! go to today offer
                  },
                  child: SvgPicture.asset(AppIcons.Sarrow_right),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
