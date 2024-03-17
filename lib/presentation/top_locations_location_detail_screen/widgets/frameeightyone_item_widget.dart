import '../models/frameeightyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class FrameeightyoneItemWidget extends StatelessWidget {
  FrameeightyoneItemWidget(
    this.frameeightyoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameeightyoneItemModel frameeightyoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.only(
            top: 16.v,
            right: 10.h,
            bottom: 16.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            frameeightyoneItemModelObj.buttonFilter!.value,
            style: TextStyle(
              color: appTheme.blueGray80001,
              fontSize: 14.fSize,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
            ),
          ),
          avatar: CustomImageView(
            imagePath: ImageConstant.imgIconClose,
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.only(right: 19.h),
          ),
          selected: (frameeightyoneItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.deepPurpleA20033,
          shape: (frameeightyoneItemModelObj.isSelected?.value ?? false)
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
            frameeightyoneItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
