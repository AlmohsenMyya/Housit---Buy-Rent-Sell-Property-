import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_trailing_button.dart';import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';import 'package:almohsen_s_application12/widgets/custom_text_form_field.dart';import 'package:almohsen_s_application12/core/utils/validation_functions.dart';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/user_empty_controller.dart';import 'package:almohsen_s_application12/presentation/user_success_bottomsheet/user_success_bottomsheet.dart';import 'package:almohsen_s_application12/presentation/user_success_bottomsheet/controller/user_success_controller.dart';
// ignore_for_file: must_be_immutable
class UserEmptyScreen extends GetWidget<UserEmptyController> {UserEmptyScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v), child: Column(children: [SizedBox(height: 39.v), Align(alignment: Alignment.centerLeft, child: SizedBox(width: 225.h, child: Text("msg_fill_your_information".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50)))), SizedBox(height: 24.v), Align(alignment: Alignment.centerLeft, child: Text("msg_you_can_edit_this".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 54.v), Container(width: 100.h, margin: EdgeInsets.symmetric(horizontal: 113.h), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder50), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 27.v), CustomImageView(imagePath: ImageConstant.imgLockOnprimarycontainer, height: 42.v, width: 40.h), CustomIconButton(height: 30.adaptSize, width: 30.adaptSize, padding: EdgeInsets.all(9.h), decoration: IconButtonStyleHelper.fillBlueGrayTL15, alignment: Alignment.centerRight, child: CustomImageView(imagePath: ImageConstant.imgEdit))])), SizedBox(height: 30.v), _buildLock(), SizedBox(height: 15.v), _buildMobileNumber(), SizedBox(height: 15.v), _buildEmail(), SizedBox(height: 42.v), CustomImageView(imagePath: ImageConstant.imgProgressBarGradient, height: 1.v, width: 100.h)]))))), bottomNavigationBar: _buildFinish())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft();}), actions: [AppbarTrailingButton(margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 8.v))]); } 
/// Section Widget
Widget _buildLock() { return CustomTextFormField(controller: controller.lockController, hintText: "msg_jonathan_anderson".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgLockBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v)); } 
/// Section Widget
Widget _buildMobileNumber() { return CustomTextFormField(controller: controller.mobileNumberController, hintText: "lbl_mobile_number".tr, hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputType: TextInputType.phone, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;}, contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v)); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "lbl_user_email_com".tr, hintStyle: CustomTextStyles.titleSmallBluegray50, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray50, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.fillBlueGrayTL12, fillColor: appTheme.blueGray600); } 
/// Section Widget
Widget _buildFinish() { return CustomElevatedButton(text: "lbl_finish".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapFinish();}); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 

/// Displays a scrollable bottom sheet widget using the [Get] package 
/// and the [UserSuccessBottomsheet] widget.
///
/// The bottom sheet is controlled by the [UserSuccessController]
/// and is displayed using the [Get.bottomSheet] method with
/// [isScrollControlled] set to true.

onTapFinish() { Get.bottomSheet(UserSuccessBottomsheet(Get.put(UserSuccessController(),),),isScrollControlled: true,); } 
 }
