import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';
import 'controller/extra_information_error_controller.dart';

class ExtraInformationErrorBottomsheet extends StatelessWidget {
  ExtraInformationErrorBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ExtraInformationErrorController controller;

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
            decoration: AppDecoration.fillRedA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder71,
            ),
            child: Container(
              padding: EdgeInsets.all(20.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.circleBorder55,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 31.h,
                  vertical: 19.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder35,
                ),
                child: Text(
                  "lbl2".tr,
                  style: CustomTextStyles.headlineSmallMontserratWhiteA700,
                ),
              ),
            ),
          ),
          SizedBox(height: 28.v),
          Container(
            width: 230.h,
            margin: EdgeInsets.only(
              left: 45.h,
              right: 51.h,
            ),
            child: Text(
              "msg_aw_snap_something".tr,
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
          SizedBox(height: 35.v),
          _buildButtonRow(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomElevatedButton(
            text: "lbl_close".tr,
            margin: EdgeInsets.only(right: 4.h),
            buttonStyle: CustomButtonStyles.fillGrayTL35,
            buttonTextStyle: CustomTextStyles.titleMedium16,
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            text: "lbl_retry".tr,
            margin: EdgeInsets.only(left: 4.h),
          ),
        ),
      ],
    );
  }
}
