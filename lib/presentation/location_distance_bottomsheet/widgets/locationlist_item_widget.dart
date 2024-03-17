import '../models/locationlist_item_model.dart';
import '../controller/location_distance_controller.dart';
import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class LocationlistItemWidget extends StatelessWidget {
  LocationlistItemWidget(
    this.locationlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LocationlistItemModel locationlistItemModelObj;

  var controller = Get.find<LocationDistanceController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.outlineBlueGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgLinkedinDeepOrangeA20050x50,
            ),
          ),
          Container(
            width: 203.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 8.v,
              bottom: 5.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_2_5_km".tr,
                    style: CustomTextStyles.bodySmallff242b5c,
                  ),
                  TextSpan(
                    text: "msg_from_srengseng".tr,
                    style: CustomTextStyles.bodySmallff53577a,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
