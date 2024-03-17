import '../models/chipviewlayout3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Chipviewlayout3ItemWidget extends StatelessWidget {
  Chipviewlayout3ItemWidget(
    this.chipviewlayout3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Chipviewlayout3ItemModel chipviewlayout3ItemModelObj;

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
          chipviewlayout3ItemModelObj.buttonCategory!.value,
          style: TextStyle(
            color: (chipviewlayout3ItemModelObj.isSelected?.value ?? false)
                ? appTheme.whiteA700
                : appTheme.blueGray80001,
            fontSize: 12.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w600,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 18.v,
          width: 16.h,
          margin: EdgeInsets.only(right: 8.h),
        ),
        selected: (chipviewlayout3ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray100,
        selectedColor: theme.colorScheme.primary,
        shape: (chipviewlayout3ItemModelObj.isSelected?.value ?? false)
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
          chipviewlayout3ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
