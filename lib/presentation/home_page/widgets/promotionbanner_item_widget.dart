import '../models/promotionbanner_item_model.dart';
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class PromotionbannerItemWidget extends StatelessWidget {
  PromotionbannerItemWidget(
    this.promotionbannerItemModelObj, {
    Key? key,
    this.onTapItemPromotion,
  }) : super(
          key: key,
        );

  PromotionbannerItemModel promotionbannerItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapItemPromotion;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.h,
      child: GestureDetector(
        onTap: () {
          onTapItemPromotion!.call();
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: theme.colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: Container(
            height: 180.v,
            width: 300.h,
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder25,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      top: 24.v,
                      right: 155.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 91.h,
                          child: Obx(
                            () => Text(
                              promotionbannerItemModelObj.halloweenSale!.value,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleMediumWhiteA700_1
                                  .copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Obx(
                          () => Text(
                            promotionbannerItemModelObj.offer!.value,
                            style: CustomTextStyles.bodySmallWhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 56.v,
                    width: 93.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 38.h,
                      vertical: 24.v,
                    ),
                    decoration: AppDecoration.fillBlueGrayAf.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderLR25,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftWhiteA700,
                      height: 7.v,
                      width: 17.h,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSubtract145x207,
                  height: 145.v,
                  width: 207.h,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
