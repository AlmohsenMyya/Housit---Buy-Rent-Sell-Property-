import 'package:almohsen_s_application12/presentation/reviews_gallery_screen/controller/reviews_gallery_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReviewsGalleryScreen.
///
/// This class ensures that the ReviewsGalleryController is created when the
/// ReviewsGalleryScreen is first loaded.
class ReviewsGalleryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewsGalleryController());
  }
}
