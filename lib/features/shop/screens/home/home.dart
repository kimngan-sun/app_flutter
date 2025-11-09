import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_application_1/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_application_1/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_application_1/common/widgets/texts/section_heading.dart';
import 'package:flutter_application_1/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_application_1/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_application_1/common/widgets/products/product_carts/product_cart_vertical.dart';
import 'package:flutter_application_1/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter_application_1/utils/constants/image_strings.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            //Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [

                  ///Appbar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Searchbar
                  const TSearchContainer(text:'Tìm kiếm sản phẩm '),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                      child: Column(
                        children: [

                          ///Heading
                          TSectionHeading(title: 'Popular Categories ', showActionButton: false, textColor: Colors.white),
                          const SizedBox(height: TSizes.spaceBtwItems),

                          ///Categories
                          THomeCategories(),
                        ],
                      ),
                  ),
                ],
              ),
            ),

            ///Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///Banner
                  const TPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Heading
                  TSectionHeading(title: 'Popular Products', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  ///Popular Products
                  TGridLayout(itemCount: 2, itemBuilder:(_,index) => const TProductCardVertical()),
                ],
              ),
            ),
            SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}

