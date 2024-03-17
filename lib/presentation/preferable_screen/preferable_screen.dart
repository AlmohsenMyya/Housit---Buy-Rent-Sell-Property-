import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_trailing_button.dart';import 'widgets/preferablegrid_item_widget.dart';import 'models/preferablegrid_item_model.dart';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/preferable_controller.dart';class PreferableScreen extends GetWidget<PreferableController> {const PreferableScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 50.v), Container(width: 254.h, margin: EdgeInsets.only(left: 24.h), child: Text("msg_select_your_preferable_real".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50))), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("msg_you_can_edit_this".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 54.v), SizedBox(height: 656.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [_buildPreferableGrid(), _buildNextColumn()]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft();}), actions: [AppbarTrailingButton(margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 8.v))]); } 
/// Section Widget
Widget _buildPreferableGrid() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 213.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: BouncingScrollPhysics(), itemCount: controller.preferableModelObj.value.preferablegridItemList.value.length, itemBuilder: (context, index) {PreferablegridItemModel model = controller.preferableModelObj.value.preferablegridItemList.value[index]; return PreferablegridItemWidget(model);})))); } 
/// Section Widget
Widget _buildNextColumn() { return Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(bottom: 139.v), padding: EdgeInsets.all(24.h), decoration: AppDecoration.linear, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 39.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h), SizedBox(height: 11.v), CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNext();})]))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the preferableSelectedScreen when the action is triggered.
onTapNext() { Get.toNamed(AppRoutes.preferableSelectedScreen, ); } 
 }