import 'package:almohsen_s_application12/presentation/form_detail_screen/controller/form_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FormDetailScreen.
///
/// This class ensures that the FormDetailController is created when the
/// FormDetailScreen is first loaded.
class FormDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FormDetailController());
  }
}
