import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';
import 'widgets/locationlist_item_widget.dart';
import 'models/locationlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';
import 'controller/location_distance_controller.dart';

class LocationDistanceBottomsheet extends StatelessWidget {
  LocationDistanceBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  LocationDistanceController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 60.h,
            child: Divider(),
          ),
          SizedBox(height: 32.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 17.v,
                  bottom: 10.v,
                ),
                child: Text(
                  "msg_location_distance".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              CustomElevatedButton(
                height: 50.v,
                width: 76.h,
                text: "lbl_edit".tr,
                buttonStyle: CustomButtonStyles.fillBlueGray,
                buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
              ),
            ],
          ),
          SizedBox(height: 35.v),
          Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 15.v,
                );
              },
              itemCount: controller.locationDistanceModelObj.value
                  .locationlistItemList.value.length,
              itemBuilder: (context, index) {
                LocationlistItemModel model = controller
                    .locationDistanceModelObj
                    .value
                    .locationlistItemList
                    .value[index];
                return LocationlistItemWidget(
                  model,
                );
              },
            ),
          ),
          SizedBox(height: 29.v),
        ],
      ),
    );
  }
}
