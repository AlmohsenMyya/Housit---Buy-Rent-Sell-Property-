import '../models/categorylist_item_model.dart';
import '../controller/notification_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class CategorylistItemWidget extends StatelessWidget {
  CategorylistItemWidget(
    this.categorylistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategorylistItemModel categorylistItemModelObj;

  var controller = Get.find<NotificationListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      width: 87.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 18.v,
            width: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Obx(
              () => Text(
                categorylistItemModelObj.all!.value,
                style: CustomTextStyles.labelLargeGray100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
