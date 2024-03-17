import '../models/totalroomschipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class TotalroomschipviewItemWidget extends StatelessWidget {
  TotalroomschipviewItemWidget(
    this.totalroomschipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TotalroomschipviewItemModel totalroomschipviewItemModelObj;

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
          totalroomschipviewItemModelObj.buttonCategory!.value,
          style: TextStyle(
            color: (totalroomschipviewItemModelObj.isSelected?.value ?? false)
                ? appTheme.whiteA700
                : appTheme.blueGray80001,
            fontSize: 10.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 18.v,
          width: 15.h,
          margin: EdgeInsets.only(right: 8.h),
        ),
        selected: (totalroomschipviewItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray100,
        selectedColor: theme.colorScheme.primary,
        shape: (totalroomschipviewItemModelObj.isSelected?.value ?? false)
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
          totalroomschipviewItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
