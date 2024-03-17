import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application12/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:almohsen_s_application12/widgets/app_bar/appbar_trailing_iconbutton_five.dart';
import 'package:almohsen_s_application12/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:almohsen_s_application12/widgets/custom_search_view.dart';
import 'package:almohsen_s_application12/presentation/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';
import 'controller/home_tab_container_controller.dart';
import 'models/home_tab_container_model.dart';

class HomeTabContainerPage extends StatelessWidget {
  HomeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  HomeTabContainerController controller =
      Get.put(HomeTabContainerController(HomeTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 34.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 255.h,
                  margin: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "msg_hey_jonathan_let_s".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 21.v),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_find_location".tr,
                      alignment: Alignment.center,
                      contentPadding: EdgeInsets.symmetric(vertical: 26.v),
                      borderDecoration: SearchViewStyleHelper.outlineIndigoB,
                      fillColor: appTheme.whiteA700.withOpacity(0.8),
                    ),
                  ),
                ),
                SizedBox(height: 26.v),
                _buildTabview(),
                SizedBox(
                  height: 1250.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      HomePage(),
                      HomePage(),
                      HomePage(),
                      HomePage(),
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: Obx(
        () => AppbarTitleDropdown(
          margin: EdgeInsets.only(left: 24.h),
          hintText: "msg_jakarta_indonesia".tr,
          items:
              controller.homeTabContainerModelObj.value.dropdownItemList!.value,
          onTap: (value) {
            controller.onSelected(value);
          },
        ),
      ),
      actions: [
        AppbarTrailingIconbuttonFive(
          imagePath: ImageConstant.imgIonNotificationsOutline,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 3.v,
            right: 3.h,
          ),
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgShape69,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 3.v,
            right: 27.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 51.v,
      width: 351.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: appTheme.gray100,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray80001,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        indicatorPadding: EdgeInsets.all(
          0.5.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.greenA400,
          borderRadius: BorderRadius.circular(
            25.h,
          ),
        ),
        tabs: [
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillGreenA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 18.v,
                    width: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "lbl_all".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 18.v,
                    width: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_house".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 18.v,
                    width: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 3.v,
                    ),
                    child: Text(
                      "lbl_apartment".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 1.v,
                    ),
                    child: Text(
                      "lbl_house".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildLayout({required String house}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 15.adaptSize,
            width: 15.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 1.v,
            ),
            child: Text(
              house,
              style: CustomTextStyles.labelLargeMedium.copyWith(
                color: appTheme.blueGray80001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
