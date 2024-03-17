import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_trailing_button.dart';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/product_tour_two_controller.dart';class ProductTourTwoScreen extends GetWidget<ProductTourTwoController> {const ProductTourTwoScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 38.v), Container(width: 253.h, margin: EdgeInsets.only(left: 24.h), child: Text("msg_fast_sell_your_property_in".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50))), SizedBox(height: 18.v), Container(width: 262.h, margin: EdgeInsets.only(left: 24.h), child: Text("msg_lorem_ipsum_dolor".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.50))), SizedBox(height: 32.v), SizedBox(height: 520.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgBackgroundIllustration520x375, height: 520.v, width: 375.h, alignment: Alignment.center), CustomElevatedButton(width: 230.h, text: "lbl_next".tr, margin: EdgeInsets.only(bottom: 24.v), onPressed: () {onTapNext();}, alignment: Alignment.bottomCenter)]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 88.v, leadingWidth: 111.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.only(left: 24.h)), actions: [AppbarTrailingButton(margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v), onTap: () {onTapSkip();})]); } 
/// Navigates to the loginScreen when the action is triggered.
onTapSkip() { Get.toNamed(AppRoutes.loginScreen, ); } 
/// Navigates to the productTourThreeScreen when the action is triggered.
onTapNext() { Get.toNamed(AppRoutes.productTourThreeScreen, ); } 
 }