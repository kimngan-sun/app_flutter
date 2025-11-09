import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/images/t_circular_image.dart';
import 'package:flutter_application_1/common/widgets/images/t_rounded_container.dart';
import 'package:flutter_application_1/common/widgets/products/product_carts/product_price_text.dart';
import 'package:flutter_application_1/common/widgets/texts/product_title_text.dart';
import 'package:flutter_application_1/common/widgets/texts/t_brand_title_text_with_verify_icon.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/enums.dart';
import 'package:flutter_application_1/utils/constants/image_strings.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale price
        Row(
          children: [
            ///Sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            ///Price
            Text('\$250.000', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: 175000, isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// Title
        const TProductTitleText(title: 'Quần áo size khủng long'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Trạng thái'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('Còn hàng', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.clothIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(title: 'Khung Long', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}