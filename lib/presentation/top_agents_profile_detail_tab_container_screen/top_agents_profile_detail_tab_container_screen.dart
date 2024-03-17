import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_subtitle.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:almohsen_s_application12/presentation/top_agents_profile_detail_page/top_agents_profile_detail_page.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/top_agents_profile_detail_tab_container_controller.dart';class TopAgentsProfileDetailTabContainerScreen extends GetWidget<TopAgentsProfileDetailTabContainerController> {const TopAgentsProfileDetailTabContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 15.v), child: Column(children: [SizedBox(height: 101.v, width: 100.h, child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape19, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(50.h), alignment: Alignment.center), CustomElevatedButton(height: 28.v, width: 22.h, text: "lbl_1".tr, margin: EdgeInsets.only(left: 2.h), buttonStyle: CustomButtonStyles.fillOrange, buttonTextStyle: CustomTextStyles.labelLargeWhiteA700, alignment: Alignment.topLeft)])), SizedBox(height: 11.v), Text("lbl_amanda".tr, style: CustomTextStyles.titleSmallBold), SizedBox(height: 8.v), Text("msg_amanda_email_com".tr, style: CustomTextStyles.labelLargeBluegray600), SizedBox(height: 10.v), _buildTabview(), SizedBox(height: 636.v, child: TabBarView(controller: controller.tabviewController, children: [TopAgentsProfileDetailPage(), TopAgentsProfileDetailPage(), TopAgentsProfileDetailPage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_profile".tr), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgTwitter, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 3.v))]); } 
/// Section Widget
Widget _buildTabview() { return Container(height: 70.v, width: 326.h, child: TabBar(controller: controller.tabviewController, labelPadding: EdgeInsets.zero, tabs: [Tab(child: Text("lbl_5_0".tr)), Tab(child: Column(children: [Text("lbl_2352".tr), Padding(padding: EdgeInsets.only(top: 4.v), child: Text("lbl_reviews".tr))])), Tab(child: Column(children: [Text("lbl_112".tr), Padding(padding: EdgeInsets.only(top: 5.v), child: Text("lbl_sold".tr))]))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }