import '../models/messageslist_item_model.dart';
import '../controller/messages_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class MessageslistItemWidget extends StatelessWidget {
  MessageslistItemWidget(
    this.messageslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MessageslistItemModel messageslistItemModelObj;

  var controller = Get.find<MessagesListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50.adaptSize,
            width: 50.adaptSize,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: messageslistItemModelObj.milano!.value,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    radius: BorderRadius.circular(
                      25.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(left: 37.h),
                    padding: EdgeInsets.all(2.h),
                    decoration: AppDecoration.outlineWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Container(
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.greenA400,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    messageslistItemModelObj.milano1!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 8.v),
                Obx(
                  () => Text(
                    messageslistItemModelObj
                        .temporincididuntutlaboreetdolo!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 11.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Text(
                      messageslistItemModelObj.text!.value,
                      style: CustomTextStyles.labelSmallOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 15.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillRedA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Obx(
                      () => Text(
                        messageslistItemModelObj.itemCounter!.value,
                        style: CustomTextStyles.labelSmallWhiteA700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
