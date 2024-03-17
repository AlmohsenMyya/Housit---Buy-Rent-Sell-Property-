import '../models/seventy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class SeventyItemWidget extends StatelessWidget {
  SeventyItemWidget(
    this.seventyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeventyItemModel seventyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 19.v,
          right: 27.h,
          bottom: 19.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          seventyItemModelObj.buttonCategory!.value,
          style: TextStyle(
            color: (seventyItemModelObj.isSelected?.value ?? false)
                ? appTheme.whiteA700
                : appTheme.blueGray80001,
            fontSize: 10.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 18.v,
          width: 15.h,
          margin: EdgeInsets.only(right: 8.h),
        ),
        selected: (seventyItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray100,
        selectedColor: theme.colorScheme.primary,
        shape: (seventyItemModelObj.isSelected?.value ?? false)
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
          seventyItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
