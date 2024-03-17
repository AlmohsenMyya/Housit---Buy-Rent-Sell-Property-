import '../models/layout12_item_model.dart';
import '../controller/property_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Layout12ItemWidget extends StatelessWidget {
  Layout12ItemWidget(
    this.layout12ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout12ItemModel layout12ItemModelObj;

  var controller = Get.find<PropertyDetailsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 123.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 18.v,
                width: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 5.v,
                ),
                child: Obx(
                  () => Text(
                    layout12ItemModelObj.hospitalCounter!.value,
                    style: CustomTextStyles.labelMediumBluegray600_1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
