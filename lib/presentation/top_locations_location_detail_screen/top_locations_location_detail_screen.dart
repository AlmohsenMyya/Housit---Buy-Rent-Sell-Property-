import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';import 'package:almohsen_s_application12/widgets/custom_search_view.dart';import 'models/frameeightyone_item_model.dart';import '../top_locations_location_detail_screen/widgets/frameeightyone_item_widget.dart';import 'widgets/toplocationslocationdetail_item_widget.dart';import 'models/toplocationslocationdetail_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/top_locations_location_detail_controller.dart';class TopLocationsLocationDetailScreen extends GetWidget<TopLocationsLocationDetailController> {const TopLocationsLocationDetailScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 10.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 22.v), padding: EdgeInsets.symmetric(horizontal: 10.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildBackground(), SizedBox(height: 27.v), Padding(padding: EdgeInsets.only(left: 14.h), child: Text("lbl_bali".tr, style: theme.textTheme.headlineSmall)), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(left: 14.h), child: Text("msg_our_recommended2".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 36.v), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 14.h), child: CustomSearchView(controller: controller.searchController, hintText: "lbl_modern_house".tr, alignment: Alignment.center))), SizedBox(height: 20.v), _buildItemHeader(), SizedBox(height: 20.v), _buildFrameEightyOne(), SizedBox(height: 20.v), _buildTopLocationsLocationDetail()]))))])))); } 
/// Section Widget
Widget _buildBackground() { return SizedBox(height: 320.v, width: 355.h, child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.centerLeft, child: SizedBox(height: 320.v, width: 235.h, child: Stack(alignment: Alignment.bottomLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape320x235, height: 320.v, width: 235.h, alignment: Alignment.center), Padding(padding: EdgeInsets.only(left: 14.h, bottom: 24.v), child: CustomIconButton(height: 53.adaptSize, width: 53.adaptSize, padding: EdgeInsets.all(14.h), decoration: IconButtonStyleHelper.fillOrange, alignment: Alignment.bottomLeft, child: CustomImageView(imagePath: ImageConstant.imgSignal)))]))), CustomImageView(imagePath: ImageConstant.imgShape10, height: 100.v, width: 110.h, alignment: Alignment.bottomRight), CustomImageView(imagePath: ImageConstant.imgShape11, height: 210.v, width: 110.h, alignment: Alignment.topRight), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 256.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(16.h), decoration: IconButtonStyleHelper.fillWhiteA, onTap: () {onTapBtnArrowLeft();}, child: CustomImageView(imagePath: ImageConstant.imgArrowLeft)), CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(15.h), decoration: IconButtonStyleHelper.fillPrimary, child: CustomImageView(imagePath: ImageConstant.imgIconSettingWhiteA700))])))])); } 
/// Section Widget
Widget _buildItemHeader() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 14.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 9.v, bottom: 8.v), child: Text("lbl_found".tr, style: CustomTextStyles.titleMediumMedium)), Padding(padding: EdgeInsets.only(left: 5.h, top: 10.v, bottom: 7.v), child: Text("lbl_0".tr, style: CustomTextStyles.titleMediumRedA200)), Padding(padding: EdgeInsets.only(left: 5.h, top: 9.v, bottom: 8.v), child: Text("lbl_estates".tr, style: CustomTextStyles.titleMediumMedium)), Spacer(), Container(width: 93.h, padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Container(height: 24.v, width: 36.h, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: CustomImageView(imagePath: ImageConstant.imgGridOnprimarycontainer, height: 12.adaptSize, width: 12.adaptSize, alignment: Alignment.center)), Container(height: 24.v, width: 36.h, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: CustomImageView(imagePath: ImageConstant.imgIconHorizontalBlueGray80001, height: 12.adaptSize, width: 12.adaptSize, alignment: Alignment.center))]))]))); } 
/// Section Widget
Widget _buildFrameEightyOne() { return Padding(padding: EdgeInsets.only(left: 14.h), child: Obx(() => Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(controller.topLocationsLocationDetailModelObj.value.frameeightyoneItemList.value.length, (index) {FrameeightyoneItemModel model = controller.topLocationsLocationDetailModelObj.value.frameeightyoneItemList.value[index]; return FrameeightyoneItemWidget(model);})))); } 
/// Section Widget
Widget _buildTopLocationsLocationDetail() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 14.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 11.v);}, itemCount: controller.topLocationsLocationDetailModelObj.value.toplocationslocationdetailItemList.value.length, itemBuilder: (context, index) {ToplocationslocationdetailItemModel model = controller.topLocationsLocationDetailModelObj.value.toplocationslocationdetailItemList.value[index]; return ToplocationslocationdetailItemWidget(model);})))); } 

/// Navigates to the previous screen.
onTapBtnArrowLeft() { Get.back(); } 
 }
