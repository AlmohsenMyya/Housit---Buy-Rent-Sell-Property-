import '../models/layout4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Layout4ItemWidget extends StatelessWidget {
  Layout4ItemWidget(
    this.layout4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout4ItemModel layout4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 19.v,
          right: 25.h,
          bottom: 19.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          layout4ItemModelObj.buttonCategory!.value,
          style: TextStyle(
            color: (layout4ItemModelObj.isSelected?.value ?? false)
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
          width: 16.h,
          margin: EdgeInsets.only(right: 8.h),
        ),
        selected: (layout4ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray100,
        selectedColor: theme.colorScheme.primary,
        shape: (layout4ItemModelObj.isSelected?.value ?? false)
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
          layout4ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
