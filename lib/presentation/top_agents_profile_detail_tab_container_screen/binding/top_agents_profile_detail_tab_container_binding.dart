import 'package:almohsen_s_application12/presentation/top_agents_profile_detail_tab_container_screen/controller/top_agents_profile_detail_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TopAgentsProfileDetailTabContainerScreen.
///
/// This class ensures that the TopAgentsProfileDetailTabContainerController is created when the
/// TopAgentsProfileDetailTabContainerScreen is first loaded.
class TopAgentsProfileDetailTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopAgentsProfileDetailTabContainerController());
  }
}
