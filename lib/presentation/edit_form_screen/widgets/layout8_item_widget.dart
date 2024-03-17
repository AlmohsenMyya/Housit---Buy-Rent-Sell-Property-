import '../models/layout8_item_model.dart';
import '../controller/edit_form_controller.dart';
import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Layout8ItemWidget extends StatelessWidget {
  Layout8ItemWidget(
    this.layout8ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout8ItemModel layout8ItemModelObj;

  var controller = Get.find<EditFormController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 20.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 7.v),
              child: Obx(
                () => Text(
                  layout8ItemModelObj.bedroom!.value,
                  style: CustomTextStyles.labelLargeSemiBold,
                ),
              ),
            ),
            Spacer(),
            CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgCloseOnprimarycontainer30x30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 6.v,
                bottom: 4.v,
              ),
              child: Obx(
                () => Text(
                  layout8ItemModelObj.text!.value,
                  style: CustomTextStyles.titleMedium16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCloseOnprimarycontainer30x30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
