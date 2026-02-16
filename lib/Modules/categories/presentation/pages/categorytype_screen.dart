import 'package:WinWin/core/shared/widgets/components/main_appbar.dart';
import 'package:WinWin/core/shared/widgets/components/main_textfiled.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CategorytypeScreen extends StatefulWidget {
  const CategorytypeScreen({super.key});

  @override
  State<CategorytypeScreen> createState() => _CategorytypeScreenState();
}

class _CategorytypeScreenState extends State<CategorytypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: MainAppBar(
        title: 'Shoes',
        rightwidget: MainTextField(
          hintText: 'Search',
          width: 0.6613333333333333,
          suffixIcon: Icon(Icons.search, color: AppColors.prim1),
        ),
      ),
    );
  }
}
