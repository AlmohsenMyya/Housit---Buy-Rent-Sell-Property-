import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_subtitle_one.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';import 'package:almohsen_s_application12/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/chat_controller.dart';class ChatScreen extends GetWidget<ChatController> {const ChatScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, margin: EdgeInsets.only(top: 11.v), padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 24.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL25), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [SizedBox(height: 6.v), _buildDecemberButton(), SizedBox(height: 20.v), Container(margin: EdgeInsets.only(left: 56.h, right: 6.h), padding: EdgeInsets.all(8.h), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.customBorderTL16), child: Row(mainAxisSize: MainAxisSize.max, children: [SizedBox(height: 104.v, width: 128.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape104x128, height: 104.v, width: 128.h, radius: BorderRadius.circular(12.h), alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 8.h, right: 48.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 25.adaptSize, width: 25.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillWhiteATL121, child: CustomImageView(imagePath: ImageConstant.imgFavoriteRedA200)), SizedBox(height: 39.v), _buildApartmentButton()])))])), Padding(padding: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 11.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 102.h, child: Text("msg_sky_dandelions_apartment".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall!.copyWith(height: 1.50))), SizedBox(height: 7.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgSignalYellow700, height: 9.adaptSize, width: 9.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 2.h, top: 1.v), child: Text("lbl_4_2".tr, style: CustomTextStyles.labelSmallBold))]), SizedBox(height: 6.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 9.adaptSize, width: 9.adaptSize), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("msg_jakarta_indonesia".tr, style: theme.textTheme.labelSmall))])]))])), SizedBox(height: 15.v), _buildDescriptionEditText(), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(left: 36.h, right: 6.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgCheckmarkGreenA400, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(top: 4.v), child: Text("lbl_10_45".tr, style: CustomTextStyles.labelMediumOnPrimaryContainer_1))])), SizedBox(height: 12.v), _buildDescriptionEditText1(), SizedBox(height: 12.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_10_46".tr, style: CustomTextStyles.labelMediumOnPrimaryContainer_1))), Spacer(), _buildFormChatEditText()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft();}), title: Padding(padding: EdgeInsets.only(left: 10.h), child: Column(children: [Row(children: [SizedBox(height: 50.adaptSize, width: 50.adaptSize, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgShape27, height: 50.adaptSize, width: 50.adaptSize, radius: BorderRadius.circular(25.h), alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(margin: EdgeInsets.only(left: 38.h, bottom: 38.v), padding: EdgeInsets.all(2.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Container(height: 8.adaptSize, width: 8.adaptSize, decoration: BoxDecoration(color: appTheme.greenA400, borderRadius: BorderRadius.circular(4.h)))))])), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v, bottom: 4.v), child: Column(children: [AppbarTitle(text: "lbl_milano".tr, margin: EdgeInsets.only(left: 2.h)), SizedBox(height: 7.v), AppbarSubtitleOne(text: "lbl_online".tr, margin: EdgeInsets.only(right: 10.h))]))])])), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsBlueGray80001, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 3.v), onTap: () {onTapSettings();})]); } 
/// Section Widget
Widget _buildDecemberButton() { return CustomElevatedButton(height: 24.v, width: 124.h, text: "msg_december_12_2022".tr, buttonStyle: CustomButtonStyles.fillOnPrimaryContainer, buttonTextStyle: CustomTextStyles.labelMediumWhiteA700, alignment: Alignment.center); } 
/// Section Widget
Widget _buildApartmentButton() { return CustomElevatedButton(height: 24.v, width: 72.h, text: "lbl_apartment".tr, leftIcon: Container(margin: EdgeInsets.only(right: 6.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 13.v, width: 11.h)), buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8, buttonTextStyle: CustomTextStyles.labelSmallGray100); } 
/// Section Widget
Widget _buildDescriptionEditText() { return Padding(padding: EdgeInsets.only(left: 36.h, right: 6.h), child: CustomTextFormField(controller: controller.descriptionEditTextController, hintText: "msg_lorem_ipsum_dolor4".tr, hintStyle: theme.textTheme.bodyMedium!, maxLines: 2, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), borderDecoration: TextFormFieldStyleHelper.fillWhiteA, fillColor: appTheme.whiteA700)); } 
/// Section Widget
Widget _buildDescriptionEditText1() { return Padding(padding: EdgeInsets.only(left: 6.h), child: CustomTextFormField(controller: controller.descriptionEditTextController1, hintText: "msg_tempor_incididunt2".tr, maxLines: 3, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), borderDecoration: TextFormFieldStyleHelper.fillBlueGray, fillColor: appTheme.blueGray80001)); } 
/// Section Widget
Widget _buildFormChatEditText() { return Padding(padding: EdgeInsets.only(left: 10.h, right: 5.h), child: CustomTextFormField(controller: controller.formChatEditTextController, hintText: "lbl_say_something".tr, hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 15.v, 10.h, 15.v), child: CustomImageView(imagePath: ImageConstant.imgCamera, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 50.v), contentPadding: EdgeInsets.only(top: 16.v, right: 30.h, bottom: 16.v), borderDecoration: TextFormFieldStyleHelper.fillWhiteATL25, fillColor: appTheme.whiteA700)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the callScreen when the action is triggered.
onTapSettings() { Get.toNamed(AppRoutes.callScreen, ); } 
 }
