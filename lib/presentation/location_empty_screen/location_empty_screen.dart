import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_trailing_button.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'dart:async';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/location_empty_controller.dart';
// ignore_for_file: must_be_immutable
class LocationEmptyScreen extends GetWidget<LocationEmptyController> {LocationEmptyScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v), child: Column(children: [SizedBox(height: 40.v), Align(alignment: Alignment.centerLeft, child: Text("msg_add_your_location".tr, style: theme.textTheme.headlineSmall)), SizedBox(height: 30.v), Align(alignment: Alignment.centerLeft, child: Text("msg_you_can_edit_this".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 50.v), _buildMapStack(), SizedBox(height: 15.v), _buildFormLocation(), SizedBox(height: 67.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h)])), bottomNavigationBar: _buildNext())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft();}), actions: [AppbarTrailingButton(margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 8.v), onTap: () {onTapSkip();})]); } 
/// Section Widget
Widget _buildMap() { return SizedBox(height: 300.v, width: 327.h, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
/// Section Widget
Widget _buildMapStack() { return Card(clipBehavior: Clip.antiAlias, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25), child: Container(height: 300.v, width: 327.h, decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder25), child: Stack(alignment: Alignment.bottomCenter, children: [_buildMap(), CustomElevatedButton(height: 50.v, width: 327.h, text: "lbl_select_on_map2".tr, buttonStyle: CustomButtonStyles.fillWhiteA2, buttonTextStyle: CustomTextStyles.titleSmallMedium, alignment: Alignment.bottomCenter)]))); } 
/// Section Widget
Widget _buildFormLocation() { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgLinkedinDeepOrangeA20020x20, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(left: 10.h, bottom: 2.v), child: Text("lbl_location_detail".tr, style: CustomTextStyles.bodyMediumOnPrimaryContainer)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize)])); } 
/// Section Widget
Widget _buildNext() { return CustomElevatedButton(text: "lbl_next".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapNext();}); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the locationChooseLocationScreen when the action is triggered.
onTapNext() { Get.toNamed(AppRoutes.locationChooseLocationScreen, ); } 
 }
