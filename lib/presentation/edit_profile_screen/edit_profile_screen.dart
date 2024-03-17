import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_subtitle.dart';import 'package:almohsen_s_application12/widgets/custom_text_form_field.dart';import 'package:almohsen_s_application12/core/utils/validation_functions.dart';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/edit_profile_controller.dart';
// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {EditProfileScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 17.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgShape34, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(50.h)), SizedBox(height: 30.v), _buildLockEditText(), SizedBox(height: 15.v), _buildSettingsEditText(), SizedBox(height: 15.v), _buildEmailEditText(), SizedBox(height: 15.v), _buildUnlink(), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildChooseLocationButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_edit_profile".tr)); } 
/// Section Widget
Widget _buildLockEditText() { return CustomTextFormField(controller: controller.lockEditTextController, hintText: "msg_jonathan_anderson".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgLockBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)); } 
/// Section Widget
Widget _buildSettingsEditText() { return CustomTextFormField(controller: controller.settingsEditTextController, hintText: "msg_12_345_7890_1234".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)); } 
/// Section Widget
Widget _buildEmailEditText() { return CustomTextFormField(controller: controller.emailEditTextController, hintText: "lbl_user_email_com".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgDownload, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}); } 
/// Section Widget
Widget _buildUnlinkButton() { return Expanded(child: CustomElevatedButton(text: "lbl_unlink".tr, margin: EdgeInsets.only(right: 5.h), leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 25.adaptSize, width: 25.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700_1)); } 
/// Section Widget
Widget _buildLinkButton() { return Expanded(child: CustomElevatedButton(text: "lbl_link".tr, margin: EdgeInsets.only(left: 5.h), leftIcon: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 25.adaptSize, width: 25.adaptSize)), buttonStyle: CustomButtonStyles.fillGrayTL25, buttonTextStyle: CustomTextStyles.labelLargeSemiBold)); } 
/// Section Widget
Widget _buildUnlink() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildUnlinkButton(), _buildLinkButton()]); } 
/// Section Widget
Widget _buildChooseLocationButton() { return CustomElevatedButton(text: "lbl_choose_location".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
