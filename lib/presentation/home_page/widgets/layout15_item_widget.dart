import '../models/layout15_item_model.dart';
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Layout15ItemWidget extends StatelessWidget {
  Layout15ItemWidget(
    this.layout15ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout15ItemModel layout15ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: layout15ItemModelObj.amanda!.value,
                height: 70.adaptSize,
                width: 70.adaptSize,
                radius: BorderRadius.circular(
                  35.h,
                ),
              ),
            ),
            SizedBox(height: 9.v),
            Obx(
              () => Text(
                layout15ItemModelObj.amanda1!.value,
                style: CustomTextStyles.labelLargeMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
