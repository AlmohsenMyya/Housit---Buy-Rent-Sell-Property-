import 'package:almohsen_s_application12/presentation/top_agents_screen/controller/top_agents_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TopAgentsScreen.
///
/// This class ensures that the TopAgentsController is created when the
/// TopAgentsScreen is first loaded.
class TopAgentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopAgentsController());
  }
}
