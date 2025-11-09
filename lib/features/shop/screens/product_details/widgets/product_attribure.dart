import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/chips/choice_chip.dart';
import 'package:flutter_application_1/common/widgets/images/t_rounded_container.dart';
import 'package:flutter_application_1/common/widgets/products/product_carts/product_price_text.dart';
import 'package:flutter_application_1/common/widgets/texts/product_title_text.dart';
import 'package:flutter_application_1/common/widgets/texts/section_heading.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/helpers/helper_functions.dart';

class TProductAttribures extends StatelessWidget {
  const TProductAttribures({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///Selected Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const TSectionHeading(title: 'Biến thể', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Giá: ',  smallSize: true),

                          ///Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          ///Sale Price
                          const TProductPriceText(price: 20000),
                        ],
                      ),

                      ///Stock
                      Row(
                        children: [
                          const TProductTitleText(title: 'Hàng hóa', smallSize: true),
                          Text('Còn hàng',style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              ///Variation Description
              TProductTitleText(
                title: 'Một đoạn mô tả sản phẩm bla bla bla nói chi tiết dài vào',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        ///Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Màu sắc'),
            const SizedBox(height: TSizes.spaceBtwItems /2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Kích thước'),
            const SizedBox(height: TSizes.spaceBtwItems /2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'X', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'S', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'M', selected: false, onSelected: (value){}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

