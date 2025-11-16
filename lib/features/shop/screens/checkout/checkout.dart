import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/common/widgets/images/t_rounded_container.dart';
import 'package:flutter_application_1/common/widgets/products/cart/coupon_widget.dart';
import 'package:flutter_application_1/common/widgets/success_screen/success_screen.dart';
import 'package:flutter_application_1/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutter_application_1/features/shop/screens/checkout/widgets/billing_address_sections.dart';
import 'package:flutter_application_1/features/shop/screens/checkout/widgets/billing_amount_sections.dart';
import 'package:flutter_application_1/features/shop/screens/checkout/widgets/billing_payment_sections.dart';
import 'package:flutter_application_1/navigation_menu.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/image_strings.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Kiểm tra đơn hàng', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Items in cart
              TCartItems(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Coupon TextField
              TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Bill
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    ///Price
                    const TBillingAmountSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    ///Divider
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    ///Payment
                    const TBillingPaymentSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    ///Address
                    const TBillingAddressSection(),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: 'Thanh toán thành công',
              subTitle: 'Đơn hàng sẽ được chuyển đi sớm nhất có thể',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ), 
          child: Text('Thanh toán')),
      ),
    );
  }
}

