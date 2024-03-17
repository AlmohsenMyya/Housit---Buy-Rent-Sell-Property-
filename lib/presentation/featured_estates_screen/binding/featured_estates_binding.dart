import 'package:almohsen_s_application12/presentation/featured_estates_screen/controller/featured_estates_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FeaturedEstatesScreen.
///
/// This class ensures that the FeaturedEstatesController is created when the
/// FeaturedEstatesScreen is first loaded.
class FeaturedEstatesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeaturedEstatesController());
  }
}
