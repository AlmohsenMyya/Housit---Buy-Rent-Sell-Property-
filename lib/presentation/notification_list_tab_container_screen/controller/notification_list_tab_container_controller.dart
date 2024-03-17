import '../../../core/app_export.dart';import '../models/notification_list_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the NotificationListTabContainerScreen.
///
/// This class manages the state of the NotificationListTabContainerScreen, including the
/// current notificationListTabContainerModelObj
class NotificationListTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<NotificationListTabContainerModel> notificationListTabContainerModelObj = NotificationListTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

 }
