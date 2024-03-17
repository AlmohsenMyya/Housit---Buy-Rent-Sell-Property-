import 'widgets/summarychange_item_widget.dart';import 'models/summarychange_item_model.dart';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/summary_change_payment_controller.dart';import 'package:almohsen_s_application12/presentation/summary_success_bottomsheet/summary_success_bottomsheet.dart';import 'package:almohsen_s_application12/presentation/summary_success_bottomsheet/controller/summary_success_controller.dart';
// ignore_for_file: must_be_immutable
class SummaryChangePaymentBottomsheet extends StatelessWidget {SummaryChangePaymentBottomsheet(this.controller, {Key? key}) : super(key: key);

SummaryChangePaymentController controller;

@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 24.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder50), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), SizedBox(width: 60.h, child: Divider()), SizedBox(height: 36.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_change_payment".tr, style: CustomTextStyles.titleMediumBold))), SizedBox(height: 14.v), _buildSummaryChange(), SizedBox(height: 50.v), CustomElevatedButton(text: "lbl_select_payment".tr, margin: EdgeInsets.symmetric(horizontal: 24.h), onPressed: () {onTapSelectPayment();})])); } 
/// Section Widget
Widget _buildSummaryChange() { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 180.v, child: Obx(() => ListView.separated(padding: EdgeInsets.only(left: 24.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: controller.summaryChangePaymentModelObj.value.summarychangeItemList.value.length, itemBuilder: (context, index) {SummarychangeItemModel model = controller.summaryChangePaymentModelObj.value.summarychangeItemList.value[index]; return SummarychangeItemWidget(model);})))); } 

/// Displays a scrollable bottom sheet widget using the [Get] package 
/// and the [SummarySuccessBottomsheet] widget.
///
/// The bottom sheet is controlled by the [SummarySuccessController]
/// and is displayed using the [Get.bottomSheet] method with
/// [isScrollControlled] set to true.

onTapSelectPayment() { Get.bottomSheet(SummarySuccessBottomsheet(Get.put(SummarySuccessController(),),),isScrollControlled: true,); } 
 }
