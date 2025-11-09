import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/common/widgets/products/cart/add_and_remove_cart.dart';
import 'package:flutter_application_1/common/widgets/products/cart/cart_item.dart';
import 'package:flutter_application_1/common/widgets/products/product_carts/product_price_text.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Giỏ hàng', style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections), 
          itemCount: 4,
          itemBuilder: (_,index) => Column(
            children: [
              const TCartItem(),
              const SizedBox(height: TSizes.spaceBtwItems),
      
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(width:70),
                      ///Add remove Buttons
                      const TProductQuantityWithAddAndRemoveButton(),
                    ],
                  ),
                  const TProductPriceText(price: 256000),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: Text('Thanh toán')),
      ),
    );
  }
}

