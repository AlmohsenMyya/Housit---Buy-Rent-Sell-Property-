import '../models/horizontal_item_model.dart';
import '../controller/horizontal_controller.dart';
import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';
import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class HorizontalItemWidget extends StatelessWidget {
  HorizontalItemWidget(
    this.horizontalItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HorizontalItemModel horizontalItemModelObj;

  var controller = Get.find<HorizontalController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140.v,
            width: 168.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: horizontalItemModelObj.image!.value,
                    height: 140.v,
                    width: 168.h,
                    radius: BorderRadius.circular(
                      18.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      right: 112.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          decoration: IconButtonStyleHelper.fillRedA,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFavorite,
                          ),
                        ),
                        SizedBox(height: 75.v),
                        CustomElevatedButton(
                          height: 24.v,
                          width: 48.h,
                          text: "lbl_villa".tr,
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 6.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgClose,
                              height: 13.v,
                              width: 11.h,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8,
                          buttonTextStyle: CustomTextStyles.labelSmallGray100,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 15.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 101.h,
                  child: Obx(
                    () => Text(
                      horizontalItemModelObj.baliBeachviewVilla!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                Row(
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath: horizontalItemModelObj.image1!.value,
                        height: 9.adaptSize,
                        width: 9.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Obx(
                        () => Text(
                          horizontalItemModelObj.text!.value,
                          style: CustomTextStyles.labelSmallBold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedin,
                      height: 9.adaptSize,
                      width: 9.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Obx(
                        () => Text(
                          horizontalItemModelObj.baliIndonesia!.value,
                          style: theme.textTheme.labelSmall,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 19.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        horizontalItemModelObj.price!.value,
                        style: CustomTextStyles.titleMedium16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.v),
                      child: Obx(
                        () => Text(
                          horizontalItemModelObj.month!.value,
                          style: CustomTextStyles.labelSmallBluegray80001,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
