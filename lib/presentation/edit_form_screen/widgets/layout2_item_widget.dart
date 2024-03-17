import '../models/layout2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Layout2ItemWidget extends StatelessWidget {
  Layout2ItemWidget(
    this.layout2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout2ItemModel layout2ItemModelObj;

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
          layout2ItemModelObj.buttonCategory!.value,
          style: TextStyle(
            color: appTheme.whiteA700,
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
        selected: (layout2ItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.primary,
        selectedColor: theme.colorScheme.primary,
        shape: (layout2ItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.whiteA700.withOpacity(0.6),
                  width: 1.h,
                ),
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
          layout2ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
