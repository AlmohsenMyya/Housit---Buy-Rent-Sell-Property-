import 'package:almohsen_s_application12/presentation/review_empty_screen/controller/review_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReviewEmptyScreen.
///
/// This class ensures that the ReviewEmptyController is created when the
/// ReviewEmptyScreen is first loaded.
class ReviewEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewEmptyController());
  }
}
