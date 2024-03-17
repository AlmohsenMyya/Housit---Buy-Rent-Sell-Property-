import '../models/layout11_item_model.dart';
import '../controller/property_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Layout11ItemWidget extends StatelessWidget {
  Layout11ItemWidget(
    this.layout11ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout11ItemModel layout11ItemModelObj;

  var controller = Get.find<PropertyDetailsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 143.h,
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
              Obx(
                () => CustomImageView(
                  imagePath: layout11ItemModelObj.bedroom!.value,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 4.v,
                ),
                child: Obx(
                  () => Text(
                    layout11ItemModelObj.bedroomCounter!.value,
                    style: theme.textTheme.bodySmall,
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
