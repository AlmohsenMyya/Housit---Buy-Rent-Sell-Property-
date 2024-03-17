import '../models/filter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class FilterItemWidget extends StatelessWidget {
  FilterItemWidget(
    this.filterItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FilterItemModel filterItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.only(
            top: 17.v,
            right: 10.h,
            bottom: 17.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            filterItemModelObj.buttonFilter!.value,
            style: TextStyle(
              color: appTheme.blueGray80001,
              fontSize: 12.fSize,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
            ),
          ),
          avatar: CustomImageView(
            imagePath: ImageConstant.imgIconClose,
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.only(right: 15.h),
          ),
          selected: (filterItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.tealA70026.withOpacity(0.2),
          shape: (filterItemModelObj.isSelected?.value ?? false)
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
            filterItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
