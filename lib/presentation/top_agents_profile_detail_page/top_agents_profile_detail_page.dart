import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';
import 'widgets/topagentsprofiledetail_item_widget.dart';
import 'models/topagentsprofiledetail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';
import 'controller/top_agents_profile_detail_controller.dart';
import 'models/top_agents_profile_detail_model.dart';

class TopAgentsProfileDetailPage extends StatelessWidget {
  TopAgentsProfileDetailPage({Key? key})
      : super(
          key: key,
        );

  TopAgentsProfileDetailController controller = Get.put(
      TopAgentsProfileDetailController(TopAgentsProfileDetailModel().obs));

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
                Column(
                  children: [
                    _buildButton(),
                    Container(
                      height: 567.v,
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 14.v,
                      ),
                      decoration: AppDecoration.white,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildItemHeader(),
                                SizedBox(height: 20.v),
                                _buildTopAgentsProfileDetail(),
                              ],
                            ),
                          ),
                          CustomElevatedButton(
                            width: 327.h,
                            text: "lbl_start_chat".tr,
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            height: 32.v,
            width: 152.h,
            text: "lbl_listing".tr,
            buttonStyle: CustomButtonStyles.fillWhiteA,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              right: 52.h,
              bottom: 6.v,
            ),
            child: Text(
              "lbl_history".tr,
              style: CustomTextStyles.titleSmallOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItemHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 11.v,
            bottom: 6.v,
          ),
          child: Text(
            "lbl_140".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 7.h,
            top: 10.v,
            bottom: 6.v,
          ),
          child: Text(
            "lbl_listings".tr,
            style: CustomTextStyles.titleMediumMedium,
          ),
        ),
        Container(
          width: 93.h,
          margin: EdgeInsets.only(left: 136.h),
          padding: EdgeInsets.all(8.h),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Row(
            children: [
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
                  imagePath: ImageConstant.imgGrid,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconHorizontal,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.only(
                  left: 17.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTopAgentsProfileDetail() {
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
        itemCount: controller.topAgentsProfileDetailModelObj.value
            .topagentsprofiledetailItemList.value.length,
        itemBuilder: (context, index) {
          TopagentsprofiledetailItemModel model = controller
              .topAgentsProfileDetailModelObj
              .value
              .topagentsprofiledetailItemList
              .value[index];
          return TopagentsprofiledetailItemWidget(
            model,
          );
        },
      ),
    );
  }
}
