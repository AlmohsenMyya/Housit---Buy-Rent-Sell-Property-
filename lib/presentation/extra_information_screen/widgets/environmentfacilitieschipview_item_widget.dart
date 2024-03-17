import '../models/environmentfacilitieschipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class EnvironmentfacilitieschipviewItemWidget extends StatelessWidget {
  EnvironmentfacilitieschipviewItemWidget(
    this.environmentfacilitieschipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EnvironmentfacilitieschipviewItemModel
      environmentfacilitieschipviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 19.v,
          right: 24.h,
          bottom: 19.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          environmentfacilitieschipviewItemModelObj.buttonCategory!.value,
          style: TextStyle(
            color:
                (environmentfacilitieschipviewItemModelObj.isSelected?.value ??
                        false)
                    ? appTheme.blueGray80001
                    : appTheme.gray100,
            fontSize: 12.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w600,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 18.v,
          width: 15.h,
          margin: EdgeInsets.only(right: 8.h),
        ),
        selected:
            (environmentfacilitieschipviewItemModelObj.isSelected?.value ??
                false),
        backgroundColor: theme.colorScheme.primary,
        selectedColor: appTheme.gray100,
        shape: (environmentfacilitieschipviewItemModelObj.isSelected?.value ??
                false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  25.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  25.h,
                ),
              ),
        onSelected: (value) {
          environmentfacilitieschipviewItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
