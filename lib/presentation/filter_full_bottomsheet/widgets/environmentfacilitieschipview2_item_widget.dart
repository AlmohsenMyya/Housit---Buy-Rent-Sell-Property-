import '../models/environmentfacilitieschipview2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Environmentfacilitieschipview2ItemWidget extends StatelessWidget {
  Environmentfacilitieschipview2ItemWidget(
    this.environmentfacilitieschipview2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Environmentfacilitieschipview2ItemModel
      environmentfacilitieschipview2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 18.v,
          right: 19.h,
          bottom: 18.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          environmentfacilitieschipview2ItemModelObj.buttonCategory!.value,
          style: TextStyle(
            color: appTheme.blueGray80001,
            fontSize: 12.fSize,
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
        selected:
            (environmentfacilitieschipview2ItemModelObj.isSelected?.value ??
                false),
        backgroundColor: appTheme.gray100,
        selectedColor: appTheme.gray100,
        shape: (environmentfacilitieschipview2ItemModelObj.isSelected?.value ??
                false)
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
          environmentfacilitieschipview2ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
