import 'package:almohsen_s_application12/presentation/user_empty_screen/controller/user_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UserEmptyScreen.
///
/// This class ensures that the UserEmptyController is created when the
/// UserEmptyScreen is first loaded.
class UserEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserEmptyController());
  }
}
