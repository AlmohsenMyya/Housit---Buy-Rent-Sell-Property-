import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_subtitle.dart';import 'package:almohsen_s_application12/widgets/custom_rating_bar.dart';import 'package:almohsen_s_application12/widgets/custom_text_form_field.dart';import 'widgets/addreviewfill_item_widget.dart';import 'models/addreviewfill_item_model.dart';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/add_review_fill_controller.dart';import 'package:almohsen_s_application12/presentation/add_review_success_bottomsheet/add_review_success_bottomsheet.dart';import 'package:almohsen_s_application12/presentation/add_review_success_bottomsheet/controller/add_review_success_controller.dart';class AddReviewFillScreen extends GetWidget<AddReviewFillController> {const AddReviewFillScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 49.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 272.h, margin: EdgeInsets.only(right: 55.h), child: Text("msg_hi_how_was_your".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50))), SizedBox(height: 27.v), Text("msg_lorem_ipsum_dolor6".tr, style: theme.textTheme.bodySmall), SizedBox(height: 52.v), Padding(padding: EdgeInsets.only(right: 40.h), child: Row(children: [CustomRatingBar(initialRating: 0, itemSize: 40), Padding(padding: EdgeInsets.only(left: 15.h, top: 4.v, bottom: 4.v), child: Text("lbl_4_0".tr, style: CustomTextStyles.headlineSmallMontserrat))])), SizedBox(height: 20.v), CustomTextFormField(controller: controller.formTextareaController, hintText: "msg_lorem_ipsum_dolor7".tr, hintStyle: CustomTextStyles.labelLargeSemiBold, textInputAction: TextInputAction.done, maxLines: 4, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 23.v)), SizedBox(height: 15.v), _buildAddReviewFill()]))))])), bottomNavigationBar: _buildSubmit())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_add_review".tr)); } 
/// Section Widget
Widget _buildAddReviewFill() { return Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 162.v, crossAxisCount: 2, mainAxisSpacing: 9.h, crossAxisSpacing: 9.h), physics: NeverScrollableScrollPhysics(), itemCount: controller.addReviewFillModelObj.value.addreviewfillItemList.value.length, itemBuilder: (context, index) {AddreviewfillItemModel model = controller.addReviewFillModelObj.value.addreviewfillItemList.value[index]; return AddreviewfillItemWidget(model);})); } 
/// Section Widget
Widget _buildSubmit() { return CustomElevatedButton(text: "lbl_submit".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapSubmit();}); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 

/// Displays a scrollable bottom sheet widget using the [Get] package 
/// and the [AddReviewSuccessBottomsheet] widget.
///
/// The bottom sheet is controlled by the [AddReviewSuccessController]
/// and is displayed using the [Get.bottomSheet] method with
/// [isScrollControlled] set to true.

onTapSubmit() { Get.bottomSheet(AddReviewSuccessBottomsheet(Get.put(AddReviewSuccessController(),),),isScrollControlled: true,); } 
 }
