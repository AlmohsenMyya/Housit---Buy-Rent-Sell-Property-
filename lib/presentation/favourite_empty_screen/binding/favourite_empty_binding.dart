import 'package:almohsen_s_application12/presentation/favourite_empty_screen/controller/favourite_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FavouriteEmptyScreen.
///
/// This class ensures that the FavouriteEmptyController is created when the
/// FavouriteEmptyScreen is first loaded.
class FavouriteEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavouriteEmptyController());
  }
}
