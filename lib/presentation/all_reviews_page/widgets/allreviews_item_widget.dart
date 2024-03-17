import '../models/allreviews_item_model.dart';
import '../controller/all_reviews_controller.dart';
import 'package:almohsen_s_application12/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class AllreviewsItemWidget extends StatelessWidget {
  AllreviewsItemWidget(
    this.allreviewsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AllreviewsItemModel allreviewsItemModelObj;

  var controller = Get.find<AllReviewsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL25,
          ),
          child: Row(
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: allreviewsItemModelObj.fairviewApartment!.value,
                  height: 36.v,
                  width: 74.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 5.v,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        allreviewsItemModelObj.fairviewApartment1!.value,
                        style: CustomTextStyles.labelMediumBold,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    SizedBox(
                      width: 121.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 25.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(
                                  () => CustomImageView(
                                    imagePath:
                                        allreviewsItemModelObj.image!.value,
                                    height: 9.adaptSize,
                                    width: 9.adaptSize,
                                    margin: EdgeInsets.only(bottom: 2.v),
                                  ),
                                ),
                                Obx(
                                  () => Text(
                                    allreviewsItemModelObj.text!.value,
                                    style:
                                        CustomTextStyles.labelMediumBluegray600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgLinkedinDeepOrangeA200,
                            height: 9.adaptSize,
                            width: 9.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Obx(
                            () => Text(
                              allreviewsItemModelObj.semarangIndonesia!.value,
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.h),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.customBorderBL25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: allreviewsItemModelObj.geraldo!.value,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                  margin: EdgeInsets.only(bottom: 58.v),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 10.v,
                  bottom: 5.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Text(
                            allreviewsItemModelObj.geraldo1!.value,
                            style: CustomTextStyles.labelLargeSemiBold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 4.v),
                          child: CustomRatingBar(
                            ignoreGestures: true,
                            initialRating: 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.v),
                    Container(
                      width: 239.h,
                      margin: EdgeInsets.only(right: 8.h),
                      child: Obx(
                        () => Text(
                          allreviewsItemModelObj.description!.value,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.labelMediumBluegray600_1
                              .copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Obx(
                      () => Text(
                        allreviewsItemModelObj.time!.value,
                        style: CustomTextStyles.labelSmallOnPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
