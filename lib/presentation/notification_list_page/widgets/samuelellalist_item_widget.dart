import '../models/samuelellalist_item_model.dart';
import '../controller/notification_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class SamuelellalistItemWidget extends StatelessWidget {
  SamuelellalistItemWidget(
    this.samuelellalistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SamuelellalistItemModel samuelellalistItemModelObj;

  var controller = Get.find<NotificationListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50.adaptSize,
            width: 50.adaptSize,
            margin: EdgeInsets.only(bottom: 38.v),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgShape26,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillBlueGrayAf.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgClose,
                      height: 10.v,
                      width: 8.h,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_samuel_ella".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 7.v),
                SizedBox(
                  width: 111.h,
                  child: Text(
                    "msg_just_buy_your_listing".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        CustomTextStyles.labelLargeBluegray600Medium.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                Text(
                  "lbl_40_mins_ago".tr,
                  style: CustomTextStyles.labelMediumOnPrimaryContainer_1,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgShape25,
            height: 50.v,
            width: 60.h,
            radius: BorderRadius.circular(
              14.h,
            ),
            margin: EdgeInsets.only(
              left: 76.h,
              bottom: 38.v,
            ),
          ),
        ],
      ),
    );
  }
}
