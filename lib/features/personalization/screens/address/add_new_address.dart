import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Thêm địa chỉ mới')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(

            child: Column(
              children: [
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Tên')),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'SDT')),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Tên đường, Số nhà')),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: 'Tỉnh, Huyện, Xã')),
                const SizedBox(height: TSizes.defaultSpace),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Lưu'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}