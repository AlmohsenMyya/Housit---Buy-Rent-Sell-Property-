import 'package:almohsen_s_application12/presentation/payment_empty_tab_container_screen/controller/payment_empty_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentEmptyTabContainerScreen.
///
/// This class ensures that the PaymentEmptyTabContainerController is created when the
/// PaymentEmptyTabContainerScreen is first loaded.
class PaymentEmptyTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentEmptyTabContainerController());
  }
}
