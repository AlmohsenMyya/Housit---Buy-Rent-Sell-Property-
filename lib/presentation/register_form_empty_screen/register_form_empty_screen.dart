import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_s_application12/core/utils/validation_functions.dart';import 'package:almohsen_s_application12/widgets/custom_text_form_field.dart';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/register_form_empty_controller.dart';import 'package:almohsen_s_application12/domain/googleauth/google_auth_helper.dart';import 'package:almohsen_s_application12/domain/facebookauth/facebook_auth_helper.dart';
// ignore_for_file: must_be_immutable
class RegisterFormEmptyScreen extends GetWidget<RegisterFormEmptyController> {RegisterFormEmptyScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 50.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("msg_create_your_account".tr, style: theme.textTheme.headlineSmall)), SizedBox(height: 30.v), Align(alignment: Alignment.centerLeft, child: Text("msg_quis_nostrud_exercitation".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 50.v), _buildFullName(), SizedBox(height: 15.v), _buildEmail(), SizedBox(height: 15.v), _buildPassword(), SizedBox(height: 12.v), Align(alignment: Alignment.centerRight, child: Text("lbl_show_password".tr, style: CustomTextStyles.titleSmallMedium)), SizedBox(height: 35.v), _buildRegister(), SizedBox(height: 18.v), _buildItemSeparator(), SizedBox(height: 18.v), _buildLayout()]))))]))), bottomNavigationBar: _buildSeventyEight())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft();})); } 
/// Section Widget
Widget _buildFullName() { return CustomTextFormField(controller: controller.fullNameController, hintText: "lbl_full_name".tr, hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgLockBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v)); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "lbl_email".tr, hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgDownload, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v)); } 
/// Section Widget
Widget _buildPassword() { return CustomTextFormField(controller: controller.passwordController, hintText: "lbl_password".tr, hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true, contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v)); } 
/// Section Widget
Widget _buildRegister() { return CustomElevatedButton(text: "lbl_register".tr, onPressed: () {onTapRegister();}); } 
/// Section Widget
Widget _buildOr() { return CustomElevatedButton(height: 25.v, width: 35.h, text: "lbl_or".tr, buttonStyle: CustomButtonStyles.fillWhiteA1, buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainer, alignment: Alignment.center); } 
/// Section Widget
Widget _buildItemSeparator() { return SizedBox(height: 25.v, width: 327.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 11.v), child: SizedBox(width: 327.h, child: Divider(color: appTheme.blueGray50)))), _buildOr()])); } 
/// Section Widget
Widget _buildLayout() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 70.v, width: 158.h, padding: EdgeInsets.symmetric(vertical: 22.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.topCenter, onTap: () {onTapImgGoogle();})), Container(height: 70.v, width: 158.h, padding: EdgeInsets.symmetric(vertical: 22.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.topCenter, onTap: () {onTapImgFacebook();}))]); } 
/// Section Widget
Widget _buildSeventyEight() { return Padding(padding: EdgeInsets.only(left: 79.h, right: 79.h, bottom: 24.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_already_have_an".tr, style: theme.textTheme.bodyMedium), GestureDetector(onTap: () {onTapTxtRegister();}, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_login".tr, style: CustomTextStyles.titleSmallPrimaryBold)))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the formOtpScreen when the action is triggered.
onTapRegister() { Get.toNamed(AppRoutes.formOtpScreen, ); } 
onTapImgGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
onTapImgFacebook() async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              Get.snackbar('Error', onError.toString());
            });
             } 
/// Navigates to the loginScreen when the action is triggered.
onTapTxtRegister() { Get.toNamed(AppRoutes.loginScreen, ); } 
 }
