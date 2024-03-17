import 'package:almohsen_s_application12/presentation/product_tour_three_screen/controller/product_tour_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductTourThreeScreen.
///
/// This class ensures that the ProductTourThreeController is created when the
/// ProductTourThreeScreen is first loaded.
class ProductTourThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductTourThreeController());
  }
}
