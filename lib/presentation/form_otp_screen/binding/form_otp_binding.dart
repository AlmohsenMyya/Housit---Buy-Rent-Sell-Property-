import 'package:almohsen_s_application12/presentation/form_otp_screen/controller/form_otp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FormOtpScreen.
///
/// This class ensures that the FormOtpController is created when the
/// FormOtpScreen is first loaded.
class FormOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FormOtpController());
  }
}
