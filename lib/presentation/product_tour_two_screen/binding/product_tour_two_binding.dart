import 'package:almohsen_s_application12/presentation/product_tour_two_screen/controller/product_tour_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductTourTwoScreen.
///
/// This class ensures that the ProductTourTwoController is created when the
/// ProductTourTwoScreen is first loaded.
class ProductTourTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductTourTwoController());
  }
}
