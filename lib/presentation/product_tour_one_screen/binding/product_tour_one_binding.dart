import 'package:almohsen_s_application12/presentation/product_tour_one_screen/controller/product_tour_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductTourOneScreen.
///
/// This class ensures that the ProductTourOneController is created when the
/// ProductTourOneScreen is first loaded.
class ProductTourOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductTourOneController());
  }
}
