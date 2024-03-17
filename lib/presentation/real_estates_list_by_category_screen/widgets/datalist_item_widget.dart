import '../models/datalist_item_model.dart';
import '../controller/real_estates_list_by_category_controller.dart';
import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class DatalistItemWidget extends StatelessWidget {
  DatalistItemWidget(
    this.datalistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DatalistItemModel datalistItemModelObj;

  var controller = Get.find<RealEstatesListByCategoryController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 268.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(8.h),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: Row(
            children: [
              SizedBox(
                height: 140.v,
                width: 126.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgShape140x126,
                      height: 140.v,
                      width: 126.h,
                      radius: BorderRadius.circular(
                        18.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          right: 70.h,
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
                            SizedBox(height: 74.v),
                            Container(
                              width: 48.h,
                              padding: EdgeInsets.symmetric(vertical: 4.v),
                              decoration: AppDecoration.fillBlueGrayAf.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgClose,
                                    height: 13.v,
                                    width: 11.h,
                                    margin: EdgeInsets.only(bottom: 1.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 2.v,
                                      bottom: 1.v,
                                    ),
                                    child: Obx(
                                      () => Text(
                                        datalistItemModelObj.villa!.value,
                                        style:
                                            CustomTextStyles.labelSmallGray100,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
                  top: 10.v,
                  bottom: 10.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 78.h,
                      child: Obx(
                        () => Text(
                          datalistItemModelObj.theLaurelsVilla!.value,
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
                          imagePath: ImageConstant.imgSignalOrange300,
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
                              datalistItemModelObj.text!.value,
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
                              datalistItemModelObj.baliIndonesia!.value,
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
                            datalistItemModelObj.price!.value,
                            style: CustomTextStyles.titleMedium16,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 6.v,
                            bottom: 2.v,
                          ),
                          child: Obx(
                            () => Text(
                              datalistItemModelObj.month!.value,
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
        ),
      ),
    );
  }
}
