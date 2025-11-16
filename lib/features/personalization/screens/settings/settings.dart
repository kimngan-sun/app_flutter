import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_application_1/common/widgets/list_tiles/user_profile_tiles.dart';
import 'package:flutter_application_1/common/widgets/texts/section_heading.dart';
import 'package:flutter_application_1/features/personalization/screens/address/address.dart';
import 'package:flutter_application_1/features/personalization/screens/profile/profile.dart';
import 'package:flutter_application_1/features/personalization/screens/settings/settings_menu_tile.dart';
import 'package:flutter_application_1/features/shop/screens/order/order.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(title: Text('Tài khoản', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white))),

                  ///User Profile Card
                  TUserProfileTile(onPressed: ()=> Get.to(()=> const ProfileScreen())),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            ///Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///Account Settings
                  TSectionHeading(title: 'Cài đặt tài khoản', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'Địa chỉ của tôi',
                    subtitle: 'Thiết lập địa chỉ giao hàng',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'Giỏ hàng của tôi',
                    subtitle: 'Thêm, xóa sản phẩm và tiến hành thanh toán',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'Đơn hàng của tôi',
                    subtitle: 'Đơn hàng đang xử lý và đã hoàn thành',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Tài khoản ngân hàng',
                    subtitle: 'Rút tiền về tài khoản ngân hàng đã liên kết',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'Mã giảm giá của tôi',
                    subtitle: 'Danh sách tất cả các mã giảm giá',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Thông báo',
                    subtitle: 'Cài đặt các loại thông báo',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Quyền riêng tư tài khoản',
                    subtitle: 'Quản lý việc sử dụng dữ liệu và tài khoản liên kết',
                    onTap: () {},
                  ),

                  /// Cài đặt ứng dụng
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(title: 'Cài đặt ứng dụng', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Tải dữ liệu',
                    subtitle: 'Tải lên dữ liệu',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Chế độ an toàn', 
                    subtitle: 'Kết quả tìm kiếm phù hợp với mọi lứa tuổi',
                    trailing: Switch(value: true, onChanged: (value){}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Định vị', 
                    subtitle: 'Đề xuất dựa trên vị trí của bạn',
                    trailing: Switch(value: true, onChanged: (value){}),
                  ),

                  ///Logout Button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Đăng xuất')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

