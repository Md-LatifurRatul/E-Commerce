import 'package:crafty_bay/presentation/controllers/main_bottom_nav_bar_controller.dart';
import 'package:crafty_bay/presentation/controllers/otp_counter_countroller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(OtpCounterController());
    Get.put(MainBottomNavBarController());
  }
}
