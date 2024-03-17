import '../models/layout13_item_model.dart';
import '../controller/home_controller.dart';
import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';
import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Layout13ItemWidget extends StatelessWidget {
  Layout13ItemWidget(
    this.layout13ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout13ItemModel layout13ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      width: 268.h,
      child: Row(
        children: [
          SizedBox(
            height: 140.v,
            width: 126.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: layout13ItemModelObj.image!.value,
                    height: 140.v,
                    width: 126.h,
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
                      right: 46.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => CustomIconButton(
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            padding: EdgeInsets.all(6.h),
                            decoration: IconButtonStyleHelper.fillWhiteATL12,
                            child: CustomImageView(
                              imagePath: layout13ItemModelObj.favorite!.value,
                            ),
                          ),
                        ),
                        SizedBox(height: 74.v),
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
              top: 9.v,
              bottom: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 102.h,
                  child: Obx(
                    () => Text(
                      layout13ItemModelObj.skyDandelionsApartment!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall!.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSignalYellow7009x9,
                      height: 9.adaptSize,
                      width: 9.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        top: 1.v,
                      ),
                      child: Obx(
                        () => Text(
                          layout13ItemModelObj.text!.value,
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
                          layout13ItemModelObj.jakartaIndonesia!.value,
                          style: theme.textTheme.labelSmall,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 23.v),
                Row(
                  children: [
                    Obx(
                      () => Text(
                        layout13ItemModelObj.price!.value,
                        style: CustomTextStyles.titleMedium16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5.v,
                        bottom: 3.v,
                      ),
                      child: Obx(
                        () => Text(
                          layout13ItemModelObj.month!.value,
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
