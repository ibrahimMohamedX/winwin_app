import 'package:WinWin/Modules/cart/presentation/pages/cart_screen.dart';
import 'package:WinWin/Modules/categories/presentation/pages/category_screen.dart';
import 'package:WinWin/Modules/home/presentation/pages/home_screen.dart';
import 'package:WinWin/Modules/wishlist/presentation/pages/wishlist_screen.dart';
import 'package:WinWin/Modules/profile/presentation/pages/profile_screen.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:animated_botton_navigation/animated_botton_navigation.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, this.initialIndex = 0});

  final int initialIndex;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  final List<Widget> _pages = [
    HomeScreen(),
    //
    WishlistScreen(),
    CategoryScreen(),
    CartScreen(),
    //
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: _pages[_currentIndex],
      bottomNavigationBar: AnimatedBottomNavigation(
        animationDuration: AppConsts.duration,
        selectedColor: AppColors.blue,
        height: 70,
        indicatorSpaceBotton: 25,
        icons: [
          Icons.home_filled,
          Icons.favorite_border_outlined,
          Icons.list_alt_outlined,
          Icons.card_travel_outlined,
          Icons.person,
        ],
        currentIndex: _currentIndex,
        onTapChange: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
