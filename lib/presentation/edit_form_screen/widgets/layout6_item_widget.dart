import '../models/layout6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Layout6ItemWidget extends StatelessWidget {
  Layout6ItemWidget(
    this.layout6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout6ItemModel layout6ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 19.v,
          right: 26.h,
          bottom: 19.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          layout6ItemModelObj.buttonCategory!.value,
          style: TextStyle(
            color: (layout6ItemModelObj.isSelected?.value ?? false)
                ? appTheme.blueGray80001
                : appTheme.whiteA700,
            fontSize: 10.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 18.v,
          width: 15.h,
          margin: EdgeInsets.only(right: 9.h),
        ),
        selected: (layout6ItemModelObj.isSelected?.value ?? false),
        backgroundColor: theme.colorScheme.primary,
        selectedColor: appTheme.gray100,
        shape: (layout6ItemModelObj.isSelected?.value ?? false)
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
          layout6ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
