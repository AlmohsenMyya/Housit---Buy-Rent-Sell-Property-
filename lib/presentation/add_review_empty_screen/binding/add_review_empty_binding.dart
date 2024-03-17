import 'package:almohsen_s_application12/presentation/add_review_empty_screen/controller/add_review_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddReviewEmptyScreen.
///
/// This class ensures that the AddReviewEmptyController is created when the
/// AddReviewEmptyScreen is first loaded.
class AddReviewEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddReviewEmptyController());
  }
}
