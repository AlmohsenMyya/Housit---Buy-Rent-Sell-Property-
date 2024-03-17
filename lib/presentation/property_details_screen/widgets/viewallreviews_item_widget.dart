import '../models/viewallreviews_item_model.dart';
import '../controller/property_details_controller.dart';
import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';
import 'package:almohsen_s_application12/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class ViewallreviewsItemWidget extends StatelessWidget {
  ViewallreviewsItemWidget(
    this.viewallreviewsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewallreviewsItemModel viewallreviewsItemModelObj;

  var controller = Get.find<PropertyDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.gradientRedAToSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomIconButton(
              height: 53.adaptSize,
              width: 53.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillRedATL15,
              child: CustomImageView(
                imagePath: viewallreviewsItemModelObj.close!.value,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 14.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 99.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 7.v,
                        ),
                        child: CustomRatingBar(
                          ignoreGestures: true,
                          initialRating: 0,
                          itemSize: 12,
                        ),
                      ),
                      Obx(
                        () => Text(
                          viewallreviewsItemModelObj.text!.value,
                          style: CustomTextStyles.titleMediumBold,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Obx(
                      () => Text(
                        viewallreviewsItemModelObj.from!.value,
                        style: CustomTextStyles.bodySmall9,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Obx(
                        () => Text(
                          viewallreviewsItemModelObj.text1!.value,
                          style: CustomTextStyles.bodySmallMontserrat,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Obx(
                        () => Text(
                          viewallreviewsItemModelObj.reviewers!.value,
                          style: CustomTextStyles.bodySmall9,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 30.v,
            width: 70.h,
            margin: EdgeInsets.symmetric(vertical: 11.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPlay,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.centerLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPlay,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPlay,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
