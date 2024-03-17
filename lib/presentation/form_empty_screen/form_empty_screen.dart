import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_s_application12/core/utils/validation_functions.dart';import 'package:almohsen_s_application12/widgets/custom_text_form_field.dart';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/form_empty_controller.dart';import 'package:almohsen_s_application12/domain/googleauth/google_auth_helper.dart';import 'package:almohsen_s_application12/domain/facebookauth/facebook_auth_helper.dart';
// ignore_for_file: must_be_immutable
class FormEmptyScreen extends GetWidget<FormEmptyController> {FormEmptyScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 50.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_let_s_sign_in".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 30.v), Text("msg_quis_nostrud_exercitation".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 50.v), _buildEmail(), SizedBox(height: 15.v), _buildPassword(), SizedBox(height: 12.v), _buildForgotPasswordRow(), SizedBox(height: 35.v), _buildLoginButton(), SizedBox(height: 18.v), _buildItemSeparatorStack(), SizedBox(height: 18.v), _buildGoogleRow(), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildSeventySevenRow())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft();})); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "lbl_email".tr, hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgDownload, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v)); } 
/// Section Widget
Widget _buildPassword() { return CustomTextFormField(controller: controller.passwordController, hintText: "lbl_password".tr, hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true, contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v)); } 
/// Section Widget
Widget _buildForgotPasswordRow() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_forgot_password".tr, style: CustomTextStyles.titleSmallPrimary), Text("lbl_show_password".tr, style: CustomTextStyles.titleSmallMedium)]); } 
/// Section Widget
Widget _buildLoginButton() { return CustomElevatedButton(text: "lbl_login".tr); } 
/// Section Widget
Widget _buildOR() { return CustomElevatedButton(height: 25.v, width: 35.h, text: "lbl_or".tr, buttonStyle: CustomButtonStyles.fillWhiteA1, buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainer, alignment: Alignment.center); } 
/// Section Widget
Widget _buildItemSeparatorStack() { return SizedBox(height: 25.v, width: 327.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 11.v), child: SizedBox(width: 327.h, child: Divider(color: appTheme.blueGray50)))), _buildOR()])); } 
/// Section Widget
Widget _buildGoogleRow() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 70.v, width: 158.h, padding: EdgeInsets.symmetric(vertical: 22.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.topCenter, onTap: () {onTapImgGoogle();})), Container(height: 70.v, width: 158.h, padding: EdgeInsets.symmetric(vertical: 22.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 25.adaptSize, width: 25.adaptSize, alignment: Alignment.topCenter, onTap: () {onTapImgFacebook();}))]); } 
/// Section Widget
Widget _buildSeventySevenRow() { return Padding(padding: EdgeInsets.only(left: 78.h, right: 78.h, bottom: 24.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_don_t_have_an_account".tr, style: theme.textTheme.bodyMedium)), GestureDetector(onTap: () {onTapTxtRegister();}, child: Padding(padding: EdgeInsets.only(left: 13.h), child: Text("lbl_register".tr, style: CustomTextStyles.titleSmallPrimaryBold)))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
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
/// Navigates to the registerFormEmptyScreen when the action is triggered.
onTapTxtRegister() { Get.toNamed(AppRoutes.registerFormEmptyScreen, ); } 
 }
