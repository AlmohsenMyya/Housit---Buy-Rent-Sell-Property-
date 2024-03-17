import '../models/realestateslistbycategory_item_model.dart';
import '../controller/real_estates_list_by_category_controller.dart';
import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class RealestateslistbycategoryItemWidget extends StatelessWidget {
  RealestateslistbycategoryItemWidget(
    this.realestateslistbycategoryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RealestateslistbycategoryItemModel realestateslistbycategoryItemModelObj;

  var controller = Get.find<RealEstatesListByCategoryController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 160.v,
              width: 144.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: realestateslistbycategoryItemModelObj
                          .wingsTower!.value,
                      height: 160.v,
                      width: 144.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Obx(
                            () => CustomIconButton(
                              height: 25.adaptSize,
                              width: 25.adaptSize,
                              padding: EdgeInsets.all(6.h),
                              decoration: IconButtonStyleHelper.fillRedA,
                              alignment: Alignment.centerRight,
                              child: CustomImageView(
                                imagePath: realestateslistbycategoryItemModelObj
                                    .favorite!.value,
                              ),
                            ),
                          ),
                          SizedBox(height: 91.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: CustomIconButton(
                                  height: 25.adaptSize,
                                  width: 25.adaptSize,
                                  padding: EdgeInsets.all(5.h),
                                  decoration:
                                      IconButtonStyleHelper.fillBlueGrayAf,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgClose,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 6.v,
                                ),
                                decoration:
                                    AppDecoration.fillBlueGrayAf.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Obx(
                                      () => Text(
                                        realestateslistbycategoryItemModelObj
                                            .price!.value,
                                        style:
                                            CustomTextStyles.labelLargeGray100,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.v),
                                      child: Obx(
                                        () => Text(
                                          realestateslistbycategoryItemModelObj
                                              .month!.value,
                                          style: CustomTextStyles
                                              .labelSmallGray100,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Obx(
                () => Text(
                  realestateslistbycategoryItemModelObj.wingsTower1!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ),
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Row(
                children: [
                  SizedBox(
                    width: 22.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSignalOrange300,
                          height: 9.adaptSize,
                          width: 9.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Obx(
                            () => Text(
                              realestateslistbycategoryItemModelObj.text!.value,
                              style: CustomTextStyles.labelSmallBold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLinkedin,
                    height: 9.adaptSize,
                    width: 9.adaptSize,
                    margin: EdgeInsets.only(
                      left: 7.h,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Obx(
                      () => Text(
                        realestateslistbycategoryItemModelObj
                            .jakartaIndonesia!.value,
                        style: theme.textTheme.labelSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.v),
          ],
        ),
      ),
    );
  }
}
