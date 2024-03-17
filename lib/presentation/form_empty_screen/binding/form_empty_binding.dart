import 'package:almohsen_s_application12/presentation/form_empty_screen/controller/form_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FormEmptyScreen.
///
/// This class ensures that the FormEmptyController is created when the
/// FormEmptyScreen is first loaded.
class FormEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FormEmptyController());
  }
}
