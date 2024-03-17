import '../models/layout14_item_model.dart';
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Layout14ItemWidget extends StatelessWidget {
  Layout14ItemWidget(
    this.layout14ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout14ItemModel layout14ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder28,
      ),
      width: 89.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: layout14ItemModelObj.bali!.value,
              height: 40.adaptSize,
              width: 40.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 10.v,
              bottom: 12.v,
            ),
            child: Obx(
              () => Text(
                layout14ItemModelObj.bali1!.value,
                style: CustomTextStyles.titleSmallMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
