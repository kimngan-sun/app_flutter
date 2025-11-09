import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/features/authentication/screens/login/login.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  // Truy cập instance của controller từ bất kỳ đâu
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  /// Cập nhật index hiện tại khi trang cuộn
  void updatePageIndicator(index) => currentPageIndex.value = index ;
  /// Chuyển đến trang được chọn dựa trên dot
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }
  /// Cập nhật index hiện tại & chuyển đến trang tiếp theo
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.to(LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
  /// Cập nhật index hiện tại & chuyển đến trang cuối cùng
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
