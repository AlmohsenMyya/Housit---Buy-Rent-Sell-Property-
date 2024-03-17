import '../models/preferablegrid_item_model.dart';
import '../controller/preferable_controller.dart';
import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class PreferablegridItemWidget extends StatelessWidget {
  PreferablegridItemWidget(
    this.preferablegridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PreferablegridItemModel preferablegridItemModelObj;

  var controller = Get.find<PreferableController>();

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
                alignment: Alignment.centerLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: preferablegridItemModelObj.house!.value,
                      height: 160.v,
                      width: 144.h,
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
                        right: 111.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomIconButton(
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            decoration: IconButtonStyleHelper.fillWhiteATL122,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCheckmark,
                            ),
                          ),
                          SizedBox(height: 94.v),
                          CustomIconButton(
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            decoration: IconButtonStyleHelper.fillBlueGrayAf,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgClose,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Obx(
                () => Text(
                  preferablegridItemModelObj.house1!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ),
            SizedBox(height: 7.v),
          ],
        ),
      ),
    );
  }
}
