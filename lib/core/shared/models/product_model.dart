import 'package:WinWin/core/consts/app_assets.dart';
import 'package:flutter/material.dart';

class ProductModel {
  final void Function()? ontap;
  final List<String>? images;
  final String? name;
  final String? description;
  final double? price;

  ProductModel({
    this.ontap,
    this.images,
    this.name,
    this.description,
    this.price,
  });

  static List<ProductModel> products(BuildContext context) => [
    ProductModel(
      ontap: () {
        //! go to product details
      },
      images: [
        AppAssets.Pshoes1,
        AppAssets.Pshoes2,
        AppAssets.Pshoes3,
        AppAssets.Pshoes4,
      ],
      name: 'choose',
      description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      price: 17.00,
    ),
    ProductModel(
      ontap: () {
        //! go to product details
      },
      images: [
        AppAssets.Pshoes2,
        AppAssets.Pshoes3,
        AppAssets.Pshoes4,
        AppAssets.Pshoes1,
      ],
      name: 'choose',
      description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      price: 17.00,
    ),
    ProductModel(
      ontap: () {
        //! go to product details
      },
      images: [
        AppAssets.Pshoes3,
        AppAssets.Pshoes4,
        AppAssets.Pshoes1,
        AppAssets.Pshoes2,
      ],
      name: 'choose',
      description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      price: 17.00,
    ),
    ProductModel(
      ontap: () {
        //! go to product details
      },
      images: [
        AppAssets.Pshoes4,
        AppAssets.Pshoes1,
        AppAssets.Pshoes2,
        AppAssets.Pshoes3,
      ],
      name: 'choose',
      description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      price: 17.00,
    ),
    ProductModel(
      ontap: () {
        //! go to product details
      },
      images: [
        AppAssets.Pshoes1,
        AppAssets.Pshoes2,
        AppAssets.Pshoes3,
        AppAssets.Pshoes4,
      ],
      name: 'choose',
      description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      price: 17.00,
    ),
  ];
}
