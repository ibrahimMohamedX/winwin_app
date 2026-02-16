import 'package:WinWin/core/shared/models/product_model.dart';
import 'package:WinWin/core/shared/widgets/components/product_item.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(width: 20),
        itemBuilder: (context, index) {
          return Center(
            child: ProductItem(product: ProductModel.products(context)[index]),
          );
        },
        itemCount: ProductModel.products(context).length,
      ),
    );
  }
}
