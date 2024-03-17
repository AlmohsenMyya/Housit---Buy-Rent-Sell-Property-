import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product Tour - One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productTourOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product Tour - Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productTourTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product Tour - Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productTourThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Featured Estates".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.featuredEstatesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Real Estates List by Category".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.realEstatesListByCategoryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Top Locations".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.topLocationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Top Locations - Location Detail".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.topLocationsLocationDetailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Top Agents ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.topAgentsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              " Top Agents - Profile Detail - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .topAgentsProfileDetailTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Review - Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reviewEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Review - Fill".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reviewFillScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Summary ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.summaryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Form Detail".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.formDetailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Photos".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPhotosScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Extra Information".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.extraInformationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Form - Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.formEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification List - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationListTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Call".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.callScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Favourite Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.favouriteEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Horizontal".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.horizontalScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Register Form - Empty".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registerFormEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Form - OTP".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.formOtpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Empty map".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.emptyMapScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " All Reviews - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.allReviewsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Empty search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.emptySearchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Result".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchResultScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Filter - Choose Location".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.filterChooseLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Result - Filter".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resultFilterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Location - Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.locationEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Location - Choose Location".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.locationChooseLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Location - Fill".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.locationFillScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Preferable ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.preferableScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Preferable - Selected".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.preferableSelectedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment - Empty - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentEmptyTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " History Detail".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.historyDetailScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Add Review - Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addReviewEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Add Review - Fill".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addReviewFillScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "User - Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.userEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Form".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editFormScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Property Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.propertyDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "360 View".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.viewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "View on Map".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.viewOnMapScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reviews - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.reviewsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reviews - Gallery".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reviewsGalleryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Promotion".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.promotionScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
