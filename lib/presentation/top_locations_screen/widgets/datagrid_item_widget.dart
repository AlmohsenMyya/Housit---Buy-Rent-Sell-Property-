import '../models/datagrid_item_model.dart';
import '../controller/top_locations_controller.dart';
import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class DatagridItemWidget extends StatelessWidget {
  DatagridItemWidget(
    this.datagridItemModelObj, {
    Key? key,
    this.onTapEstatesCardLocation,
  }) : super(
          key: key,
        );

  DatagridItemModel datagridItemModelObj;

  var controller = Get.find<TopLocationsController>();

  VoidCallback? onTapEstatesCardLocation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapEstatesCardLocation!.call();
      },
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
              height: 174.v,
              width: 144.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: datagridItemModelObj.bali!.value,
                      height: 174.v,
                      width: 144.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  _buildOneButton(),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Obx(
                () => Text(
                  datagridItemModelObj.bali1!.value,
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

  /// Section Widget
  Widget _buildOneButton() {
    return CustomElevatedButton(
      height: 25.v,
      width: 22.h,
      text: "lbl_1".tr,
      margin: EdgeInsets.only(
        left: 10.h,
        top: 10.v,
      ),
      buttonStyle: CustomButtonStyles.fillOrange,
      buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
      alignment: Alignment.topLeft,
    );
  }
}
