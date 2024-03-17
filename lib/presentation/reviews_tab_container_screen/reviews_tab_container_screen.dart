import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_subtitle.dart';import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:almohsen_s_application12/presentation/reviews_page/reviews_page.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/reviews_tab_container_controller.dart';class ReviewsTabContainerScreen extends GetWidget<ReviewsTabContainerController> {const ReviewsTabContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 17.v), child: Column(children: [_buildEstatesCardWide(), SizedBox(height: 20.v), _buildTabview(), SizedBox(height: 565.v, child: TabBarView(controller: controller.tabviewController, children: [ReviewsPage(), ReviewsPage(), ReviewsPage(), ReviewsPage(), ReviewsPage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_reviews".tr)); } 
/// Section Widget
Widget _buildEstatesCardWide() { return Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.all(8.h), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [SizedBox(height: 104.v, width: 168.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape160x144, height: 104.v, width: 168.h, radius: BorderRadius.circular(15.h), alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 8.h, right: 88.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 25.adaptSize, width: 25.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillWhiteATL122, child: CustomImageView(imagePath: ImageConstant.imgFavoriteRedA200)), SizedBox(height: 39.v), CustomElevatedButton(height: 24.v, width: 72.h, text: "lbl_apartment".tr, leftIcon: Container(margin: EdgeInsets.only(right: 6.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 13.v, width: 11.h)), buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8, buttonTextStyle: CustomTextStyles.labelSmallGray100)])))])), Padding(padding: EdgeInsets.only(left: 16.h, top: 18.v, bottom: 14.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 88.h, child: Text("msg_sky_dandelions_apartment".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.50))), SizedBox(height: 8.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgSignalOrange300, height: 9.adaptSize, width: 9.adaptSize, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl_4_2".tr, style: CustomTextStyles.labelSmallBold))]), SizedBox(height: 6.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 9.adaptSize, width: 9.adaptSize), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("msg_jakarta_indonesia".tr, style: theme.textTheme.labelSmall))])]))])); } 
/// Section Widget
Widget _buildTabview() { return Container(height: 51.v, width: 351.h, child: TabBar(controller: controller.tabviewController, isScrollable: true, labelColor: appTheme.gray100, labelStyle: TextStyle(fontSize: 10.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w700), unselectedLabelColor: appTheme.blueGray80001, unselectedLabelStyle: TextStyle(fontSize: 10.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w500), indicatorPadding: EdgeInsets.all(0.5.h), indicator: BoxDecoration(color: appTheme.greenA400, borderRadius: BorderRadius.circular(25.h)), tabs: [Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v), decoration: AppDecoration.fillGreenA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 9.h, top: 4.v), child: Text("lbl_all".tr))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v), child: Text("lbl_1".tr))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v), child: Text("lbl_2".tr))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v), child: Text("lbl_3".tr))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 15.adaptSize, width: 15.adaptSize, margin: EdgeInsets.symmetric(vertical: 1.v)), Padding(padding: EdgeInsets.only(left: 8.h, top: 1.v), child: Text("lbl_4".tr))])))])); } 
/// Common widget
Widget _buildLayout({required String text}) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v), child: Text(text, style: theme.textTheme.labelMedium!.copyWith(color: appTheme.blueGray80001)))])); } 
/// Common widget
Widget _buildLayout1({required String text}) { return Container(padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 15.adaptSize, width: 15.adaptSize, margin: EdgeInsets.symmetric(vertical: 1.v)), Padding(padding: EdgeInsets.only(left: 8.h, top: 1.v), child: Text(text, style: theme.textTheme.labelMedium!.copyWith(color: appTheme.blueGray80001)))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }