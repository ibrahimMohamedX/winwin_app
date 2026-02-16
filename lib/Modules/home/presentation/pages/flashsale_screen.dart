import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/themes/app_responsive.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlashSale extends StatefulWidget {
  const FlashSale({super.key});

  @override
  State<FlashSale> createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(AppShapes.Shome_top2),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(AppShapes.Shome_top1),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(AppShapes.Sonboard_bottom),
          ),
          SafeArea(
            child: SizedBox(
              width: Responsive.ResponsiveWidth(context: context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  //* title
                  Padding(
                    padding: AppConsts.pagepadding,
                    child: Column(
                      children: [
                        Text('Flash Sale', style: AppTextStyles.headlineLarge),
                        Text(
                          'Choose Your Discount',
                          style: AppTextStyles.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
