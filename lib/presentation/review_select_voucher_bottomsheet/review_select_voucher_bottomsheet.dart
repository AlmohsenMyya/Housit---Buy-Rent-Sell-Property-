import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';import 'package:almohsen_s_application12/widgets/custom_text_form_field.dart';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/review_select_voucher_controller.dart';
// ignore_for_file: must_be_immutable
class ReviewSelectVoucherBottomsheet extends StatelessWidget {ReviewSelectVoucherBottomsheet(this.controller, {Key? key}) : super(key: key);

ReviewSelectVoucherController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.customBorderTL50), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), SizedBox(width: 60.h, child: Divider()), SizedBox(height: 36.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_add_voucher".tr, style: CustomTextStyles.titleMediumBold)), SizedBox(height: 16.v), CustomTextFormField(controller: controller.televisionController, hintText: "msg_type_your_voucher".tr, hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgTelevisionBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v)), SizedBox(height: 26.v), Align(alignment: Alignment.centerLeft, child: Text("msg_your_available_vouchers".tr, style: CustomTextStyles.titleMediumBold)), SizedBox(height: 16.v), _buildCardCoupon2(hGJCTwenty: "lbl_hlwn40".tr, clicktousethisvoucher: "msg_click_to_use_this".tr), SizedBox(height: 10.v), _buildCardCoupon2(hGJCTwenty: "lbl_hgjc20".tr, clicktousethisvoucher: "msg_click_to_use_this".tr), SizedBox(height: 13.v), CustomElevatedButton(text: "lbl_apply_voucher".tr, onPressed: () {onTapApplyVoucher();})])); } 
/// Common widget
Widget _buildCardCoupon2({required String hGJCTwenty, required String clicktousethisvoucher, }) { return Container(padding: EdgeInsets.all(16.h), decoration: AppDecoration.gradientGreenAToTealA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(children: [CustomIconButton(height: 53.adaptSize, width: 53.adaptSize, padding: EdgeInsets.all(14.h), decoration: IconButtonStyleHelper.fillGreenA, child: CustomImageView(imagePath: ImageConstant.imgTelevisionWhiteA70053x53)), Padding(padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 6.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(hGJCTwenty, style: CustomTextStyles.titleMediumBold.copyWith(color: appTheme.blueGray80001)), SizedBox(height: 7.v), Text(clicktousethisvoucher, style: theme.textTheme.labelSmall!.copyWith(color: appTheme.blueGray600))]))])); } 
/// Navigates to the reviewFillScreen when the action is triggered.
onTapApplyVoucher() { Get.toNamed(AppRoutes.reviewFillScreen, ); } 
 }
