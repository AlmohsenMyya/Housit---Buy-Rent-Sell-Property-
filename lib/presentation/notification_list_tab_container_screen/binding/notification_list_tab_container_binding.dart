import 'package:almohsen_s_application12/presentation/notification_list_tab_container_screen/controller/notification_list_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationListTabContainerScreen.
///
/// This class ensures that the NotificationListTabContainerController is created when the
/// NotificationListTabContainerScreen is first loaded.
class NotificationListTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationListTabContainerController());
  }
}
