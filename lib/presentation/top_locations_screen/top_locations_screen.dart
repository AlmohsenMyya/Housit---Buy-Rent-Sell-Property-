import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_iconbutton.dart';import 'widgets/datagrid_item_widget.dart';import 'models/datagrid_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/top_locations_controller.dart';class TopLocationsScreen extends GetWidget<TopLocationsController> {const TopLocationsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 16.v), Text("lbl_top_locations".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 8.v), Text("msg_find_the_best_recommendations".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 35.v), _buildDataGrid()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft();})); } 
/// Section Widget
Widget _buildDataGrid() { return Expanded(child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 227.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: BouncingScrollPhysics(), itemCount: controller.topLocationsModelObj.value.datagridItemList.value.length, itemBuilder: (context, index) {DatagridItemModel model = controller.topLocationsModelObj.value.datagridItemList.value[index]; return DatagridItemWidget(model, onTapEstatesCardLocation: () {onTapEstatesCardLocation();});}))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the topLocationsLocationDetailScreen when the action is triggered.
onTapEstatesCardLocation() { Get.toNamed(AppRoutes.topLocationsLocationDetailScreen, ); } 
 }
