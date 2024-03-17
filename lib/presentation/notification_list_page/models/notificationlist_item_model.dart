import '../../../core/app_export.dart';/// This class is used in the [notificationlist_item_widget] screen.
class NotificationlistItemModel {NotificationlistItemModel({this.emmettPerry, this.emmettPerry1, this.time, this.id, }) { emmettPerry = emmettPerry  ?? Rx(ImageConstant.imgShape50x50);emmettPerry1 = emmettPerry1  ?? Rx("Emmett Perry");time = time  ?? Rx("10 mins ago");id = id  ?? Rx(""); }

Rx<String>? emmettPerry;

Rx<String>? emmettPerry1;

Rx<String>? time;

Rx<String>? id;

 }
