import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/common/widgets/appbar/tabbar.dart';
import 'package:flutter_application_1/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_application_1/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_application_1/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:flutter_application_1/common/widgets/texts/section_heading.dart';
import 'package:flutter_application_1/common/widgets/brands/brand_card.dart';
import 'package:flutter_application_1/features/shop/screens/store/widgets/categories_tab.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        ///Appbar
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: (){}),
          ],
        ),
        body: NestedScrollView(
      
          ///Header
          headerSliverBuilder:(_,innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
              expandedHeight: 440,
      
              flexibleSpace: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ///Search bar
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSearchContainer(text: "Tìm kiếm trong cửa hàng", showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                    const SizedBox(height: TSizes.spaceBtwSections),
      
                    ///Featured Brands
                    TSectionHeading(title: 'Thương hiệu', onPressed: (){}),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),
      
                    ///Brands GRID
                    TGridLayout(
                      itemCount: 4, 
                      mainAxisExtent: 80, 
                      itemBuilder: (_,index) {
                      return const TBrandCard(showBorder: false);
                    }),
                  ],
                ),
              ),
      
              ///Tabs
              bottom: const TTabbar(
                tabs: [
                  Tab(child: Text('Sport')),
                  Tab(child: Text('Sport')),
                  Tab(child: Text('Sport')),
                  Tab(child: Text('Sport')),
                  Tab(child: Text('Sport')),
                ],
              ),
            ),
          ];
        },

        ///Body
        body: const TabBarView(
          children: [
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
          ],
        ),
      ),
      ),
    );
  }
}

