import '../../../core/app_export.dart';
import '../models/notification_list_model.dart';

/// A controller class for the NotificationListPage.
///
/// This class manages the state of the NotificationListPage, including the
/// current notificationListModelObj
class NotificationListController extends GetxController {
  NotificationListController(this.notificationListModelObj);

  Rx<NotificationListModel> notificationListModelObj;
}
