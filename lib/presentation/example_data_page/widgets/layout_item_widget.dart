import '../models/layout_item_model.dart';
import '../controller/example_data_controller.dart';
import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';
import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class LayoutItemWidget extends StatelessWidget {
  LayoutItemWidget(
    this.layoutItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LayoutItemModel layoutItemModelObj;

  var controller = Get.find<ExampleDataController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineIndigoB.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      width: 268.h,
      child: Row(
        children: [
          SizedBox(
            height: 104.v,
            width: 126.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: layoutItemModelObj.image!.value,
                    height: 104.v,
                    width: 126.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      right: 46.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          decoration: IconButtonStyleHelper.fillWhiteATL12,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFavoriteRedA200,
                          ),
                        ),
                        SizedBox(height: 39.v),
                        CustomElevatedButton(
                          height: 24.v,
                          width: 72.h,
                          text: "lbl_apartment".tr,
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
              top: 13.v,
              bottom: 13.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 102.h,
                  child: Obx(
                    () => Text(
                      layoutItemModelObj.skyDandelionsApartment!.value,
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
                    CustomImageView(
                      imagePath: ImageConstant.imgSignalOrange300,
                      height: 9.adaptSize,
                      width: 9.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Obx(
                        () => Text(
                          layoutItemModelObj.text!.value,
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
                          layoutItemModelObj.jakartaIndonesia!.value,
                          style: theme.textTheme.labelSmall,
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
