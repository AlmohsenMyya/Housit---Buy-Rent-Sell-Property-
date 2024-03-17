import '../../../core/app_export.dart';import 'categorylist_item_model.dart';import 'notificationlist_item_model.dart';import 'samuelellalist_item_model.dart';/// This class defines the variables used in the [notification_list_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationListModel {Rx<List<CategorylistItemModel>> categorylistItemList = Rx([CategorylistItemModel(all: "All".obs),CategorylistItemModel(all: "Review".obs),CategorylistItemModel(all: " Sold".obs),CategorylistItemModel(all: "House".obs)]);

Rx<List<NotificationlistItemModel>> notificationlistItemList = Rx([NotificationlistItemModel(emmettPerry:ImageConstant.imgShape50x50.obs,emmettPerry1: "Emmett Perry".obs,time: "10 mins ago".obs)]);

Rx<List<SamuelellalistItemModel>> samuelellalistItemList = Rx(List.generate(1,(index) => SamuelellalistItemModel()));

 }
