import 'widgets/categorylist_item_widget.dart';
import 'models/categorylist_item_model.dart';
import 'widgets/notificationlist_item_widget.dart';
import 'models/notificationlist_item_model.dart';
import 'widgets/samuelellalist_item_widget.dart';
import 'models/samuelellalist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';
import 'controller/notification_list_controller.dart';
import 'models/notification_list_model.dart';

class NotificationListPage extends StatelessWidget {
  NotificationListPage({Key? key})
      : super(
          key: key,
        );

  NotificationListController controller =
      Get.put(NotificationListController(NotificationListModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15.v),
                  decoration: AppDecoration.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 4.v),
                      _buildCategoryList(),
                      SizedBox(height: 35.v),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_today".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 14.v),
                            _buildNotificationList(),
                            SizedBox(height: 37.v),
                            Text(
                              "msg_older_notifications".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 16.v),
                            _buildSamuelEllaList(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryList() {
    return SizedBox(
      height: 54.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 24.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: controller
              .notificationListModelObj.value.categorylistItemList.value.length,
          itemBuilder: (context, index) {
            CategorylistItemModel model = controller.notificationListModelObj
                .value.categorylistItemList.value[index];
            return CategorylistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationList() {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 10.v,
            );
          },
          itemCount: controller.notificationListModelObj.value
              .notificationlistItemList.value.length,
          itemBuilder: (context, index) {
            NotificationlistItemModel model = controller
                .notificationListModelObj
                .value
                .notificationlistItemList
                .value[index];
            return NotificationlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSamuelEllaList() {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount: controller.notificationListModelObj.value
              .samuelellalistItemList.value.length,
          itemBuilder: (context, index) {
            SamuelellalistItemModel model = controller.notificationListModelObj
                .value.samuelellalistItemList.value[index];
            return SamuelellalistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
