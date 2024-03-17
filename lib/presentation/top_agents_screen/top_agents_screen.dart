import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_iconbutton.dart';import 'widgets/datalist1_item_widget.dart';import 'models/datalist1_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/top_agents_controller.dart';class TopAgentsScreen extends GetWidget<TopAgentsController> {const TopAgentsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 37.v), child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_top_estate_agent".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 8.v), Text("msg_find_the_best_recommendations".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 35.v), _buildDataList()])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft();})); } 
/// Section Widget
Widget _buildDataList() { return Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 207.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: NeverScrollableScrollPhysics(), itemCount: controller.topAgentsModelObj.value.datalist1ItemList.value.length, itemBuilder: (context, index) {Datalist1ItemModel model = controller.topAgentsModelObj.value.datalist1ItemList.value[index]; return Datalist1ItemWidget(model, onTapEstatesCardUser: () {onTapEstatesCardUser();});})); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the topAgentsProfileDetailTabContainerScreen when the action is triggered.
onTapEstatesCardUser() { Get.toNamed(AppRoutes.topAgentsProfileDetailTabContainerScreen, ); } 
 }
