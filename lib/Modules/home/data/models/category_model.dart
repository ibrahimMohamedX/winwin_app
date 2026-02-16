import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/core/routes/app_routes.dart';
import 'package:WinWin/core/routes/navigation_data.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  final int id;
  final void Function()? ontap;
  final List<String> images;
  final String name;
  final int count;

  CategoryModel({
    required this.id,
    this.ontap,
    required this.images,
    required this.name,
    required this.count,
  });

  static List<CategoryModel> categories(BuildContext context) => [
    shoes_categories(context),
    clothies_categories(context),
    watch_categories(context),
    hoodies_categories(context),
  ];

  static CategoryModel shoes_categories(BuildContext context) => CategoryModel(
    id: 1,
    ontap: () {
      //! go to shoes screen
      pushTo(context, AppRoutes.cateforyType);
    },
    images: [
      AppAssets.Pshoes1,
      AppAssets.Pshoes2,
      AppAssets.Pshoes3,
      AppAssets.Pshoes4,
    ],
    name: 'Shoes',
    count: 86,
  );
  static CategoryModel clothies_categories(BuildContext context) =>
      CategoryModel(
        id: 2,
        ontap: () {
          //! go to shoes screen
        },
        images: [
          AppAssets.Pclothe1,
          AppAssets.Pclothe2,
          AppAssets.Pclothe3,
          AppAssets.Pclothe4,
        ],
        name: 'Clothing',
        count: 103,
      );
  static CategoryModel watch_categories(BuildContext context) => CategoryModel(
    id: 3,
    ontap: () {
      //! go to shoes screen
    },
    images: [
      AppAssets.Pwatch1,
      AppAssets.Pwatch2,
      AppAssets.Pwatch3,
      AppAssets.Pwatch4,
    ],
    name: 'Watch',
    count: 157,
  );
  static CategoryModel hoodies_categories(BuildContext context) =>
      CategoryModel(
        id: 4,
        ontap: () {
          //! go to shoes screen
        },
        images: [
          AppAssets.Phoody1,
          AppAssets.Phoody2,
          AppAssets.Phoody3,
          AppAssets.Phoody4,
        ],
        name: 'Hoodies',
        count: 38,
      );
}
