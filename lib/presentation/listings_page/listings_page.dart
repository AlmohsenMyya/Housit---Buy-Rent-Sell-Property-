import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';
import 'widgets/listings_item_widget.dart';
import 'models/listings_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';
import 'controller/listings_controller.dart';
import 'models/listings_model.dart';

class ListingsPage extends StatelessWidget {
  ListingsPage({Key? key})
      : super(
          key: key,
        );

  ListingsController controller =
      Get.put(ListingsController(ListingsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildItemHeader(),
                      SizedBox(height: 20.v),
                      _buildListings(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildItemHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 11.v,
            bottom: 6.v,
          ),
          child: Text(
            "lbl_30".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 5.h,
            top: 10.v,
            bottom: 7.v,
          ),
          child: Text(
            "lbl_listings".tr,
            style: CustomTextStyles.titleMediumMedium,
          ),
        ),
        Spacer(),
        Container(
          width: 93.h,
          padding: EdgeInsets.symmetric(vertical: 8.v),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGridOnprimarycontainer,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 6.v),
              ),
              Container(
                height: 24.v,
                width: 36.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder12,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconHorizontal12x12,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL20,
            child: CustomImageView(
              imagePath: ImageConstant.imgIconPlusWhiteA700,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildListings() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 232.v,
          crossAxisCount: 2,
          mainAxisSpacing: 7.h,
          crossAxisSpacing: 7.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount:
            controller.listingsModelObj.value.listingsItemList.value.length,
        itemBuilder: (context, index) {
          ListingsItemModel model =
              controller.listingsModelObj.value.listingsItemList.value[index];
          return ListingsItemWidget(
            model,
          );
        },
      ),
    );
  }
}
