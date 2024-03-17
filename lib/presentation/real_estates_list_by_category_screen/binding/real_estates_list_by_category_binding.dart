import 'package:almohsen_s_application12/presentation/real_estates_list_by_category_screen/controller/real_estates_list_by_category_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RealEstatesListByCategoryScreen.
///
/// This class ensures that the RealEstatesListByCategoryController is created when the
/// RealEstatesListByCategoryScreen is first loaded.
class RealEstatesListByCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RealEstatesListByCategoryController());
  }
}
