import '../models/categorychipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class CategorychipviewItemWidget extends StatelessWidget {
  CategorychipviewItemWidget(
    this.categorychipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategorychipviewItemModel categorychipviewItemModelObj;

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
          categorychipviewItemModelObj.buttonCategory!.value,
          style: TextStyle(
            color: appTheme.blueGray80001,
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
        selected: (categorychipviewItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray100,
        selectedColor: appTheme.gray100,
        shape: (categorychipviewItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueGray80001.withOpacity(0.6),
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
          categorychipviewItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
