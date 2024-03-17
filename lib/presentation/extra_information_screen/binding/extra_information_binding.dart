import 'package:almohsen_s_application12/presentation/extra_information_screen/controller/extra_information_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExtraInformationScreen.
///
/// This class ensures that the ExtraInformationController is created when the
/// ExtraInformationScreen is first loaded.
class ExtraInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExtraInformationController());
  }
}
