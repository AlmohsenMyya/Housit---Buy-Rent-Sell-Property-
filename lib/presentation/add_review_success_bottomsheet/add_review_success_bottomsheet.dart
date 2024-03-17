import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';
import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';
import 'controller/add_review_success_controller.dart';

class AddReviewSuccessBottomsheet extends StatelessWidget {
  AddReviewSuccessBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  AddReviewSuccessController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          SizedBox(
            width: 60.h,
            child: Divider(),
          ),
          SizedBox(height: 22.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 92.h),
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillGreenA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder71,
            ),
            child: Container(
              height: 110.adaptSize,
              width: 110.adaptSize,
              padding: EdgeInsets.all(20.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.circleBorder55,
              ),
              child: CustomIconButton(
                height: 70.adaptSize,
                width: 70.adaptSize,
                padding: EdgeInsets.all(19.h),
                decoration: IconButtonStyleHelper.fillGreenATL35,
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkWhiteA70070x70,
                ),
              ),
            ),
          ),
          SizedBox(height: 26.v),
          Container(
            width: 266.h,
            margin: EdgeInsets.symmetric(horizontal: 30.h),
            child: Text(
              "msg_successfully_submitted_your".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 27.v),
          Text(
            "msg_lorem_ipsum_dolor2".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 37.v),
          CustomElevatedButton(
            text: "msg_continue_exploring".tr,
          ),
        ],
      ),
    );
  }
}
