import 'package:WinWin/Modules/wishlist/presentation/widgets/wishlist_item.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/shared/widgets/animations/fadein_animated.dart';
import 'package:WinWin/core/shared/widgets/components/main_appbar.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: 'Wishlist'),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppConsts.pagepadding,
          child: FadeINAnimated(
            delay_milisec: AppConsts.fadeinDelay,
            widget: Column(
              spacing: 20,
              children: [
                //* list
                WishlistItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
