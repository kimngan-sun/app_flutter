import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/products/cart/add_and_remove_cart.dart';
import 'package:flutter_application_1/common/widgets/products/product_carts/product_price_text.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';

import '../../../../../common/widgets/products/cart/cart_item.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
    });

  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections), 
          itemCount: 10,
          itemBuilder: (_,index) => Column(
            children: [
              //Cart Item
              const TCartItem(),
              if(showAddRemoveButtons) const SizedBox(height: TSizes.spaceBtwItems),

              /// Total Price
              if(showAddRemoveButtons)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width:70),
                        ///Add remove Buttons
                        TProductQuantityWithAddAndRemoveButton(),
                      ],
                    ),
                    TProductPriceText(price: 256000),
                  ],
                ),
              ],
            ),
        );
  }
}