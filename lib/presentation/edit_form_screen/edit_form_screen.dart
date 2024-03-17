import 'package:almohsen_s_application12/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_s_application12/widgets/app_bar/appbar_subtitle.dart';import 'package:almohsen_s_application12/widgets/custom_icon_button.dart';import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';import 'package:almohsen_s_application12/widgets/custom_text_form_field.dart';import 'models/layout2_item_model.dart';import '../edit_form_screen/widgets/layout2_item_widget.dart';import 'models/layout4_item_model.dart';import '../edit_form_screen/widgets/layout4_item_widget.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'dart:async';import 'widgets/shape_item_widget.dart';import 'models/shape_item_model.dart';import 'models/layout6_item_model.dart';import '../edit_form_screen/widgets/layout6_item_widget.dart';import 'widgets/layout8_item_widget.dart';import 'models/layout8_item_model.dart';import 'models/layout9_item_model.dart';import '../edit_form_screen/widgets/layout9_item_widget.dart';import 'models/seventy_item_model.dart';import '../edit_form_screen/widgets/seventy_item_widget.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/edit_form_controller.dart';import 'package:almohsen_s_application12/presentation/edit_success_bottomsheet/edit_success_bottomsheet.dart';import 'package:almohsen_s_application12/presentation/edit_success_bottomsheet/controller/edit_success_controller.dart';
// ignore_for_file: must_be_immutable
class EditFormScreen extends GetWidget<EditFormController> {EditFormScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 17.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildEstatesCardWide(), SizedBox(height: 39.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_listing_title".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 14.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: CustomTextFormField(controller: controller.formPasswordController, hintText: "msg_schoolview_house".tr, hintStyle: theme.textTheme.labelLarge!, textInputAction: TextInputAction.done, alignment: Alignment.center, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgHomeBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v))), SizedBox(height: 39.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_listing_type".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 14.v), _buildLayout(), SizedBox(height: 38.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("msg_property_category".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 14.v), _buildLayout1(), SizedBox(height: 36.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_location".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 16.v), _buildLinkedin(), SizedBox(height: 20.v), _buildLayout2(), SizedBox(height: 39.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_listing_photos".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 14.v), _buildShape(), SizedBox(height: 37.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_sell_price".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 16.v), _buildFormTextFill(), SizedBox(height: 37.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_rent_price".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 16.v), _buildShape1(), SizedBox(height: 15.v), _buildLayout3(), SizedBox(height: 41.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("msg_property_features".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 14.v), _buildLayout4(), SizedBox(height: 37.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_total_rooms".tr, style: CustomTextStyles.titleMediumBold)), SizedBox(height: 16.v), _buildWidget(), SizedBox(height: 39.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("msg_environment_facilities".tr, style: CustomTextStyles.titleMediumBold)), SizedBox(height: 16.v), _buildSeventy()]))))])), bottomNavigationBar: _buildUpdate())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_edit_listing".tr)); } 
/// Section Widget
Widget _buildEstatesCardWide() { return Align(alignment: Alignment.center, child: Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.all(8.h), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [SizedBox(height: 104.v, width: 168.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape36, height: 104.v, width: 168.h, radius: BorderRadius.circular(15.h), alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 8.h, right: 104.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 25.adaptSize, width: 25.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillWhiteATL121, child: CustomImageView(imagePath: ImageConstant.imgFavoriteRedA200)), SizedBox(height: 39.v), CustomElevatedButton(height: 24.v, width: 56.h, text: "lbl_house".tr, leftIcon: Container(margin: EdgeInsets.only(right: 6.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 13.v, width: 11.h)), buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8, buttonTextStyle: CustomTextStyles.labelSmallGray100)])))])), Padding(padding: EdgeInsets.only(left: 16.h, top: 18.v, bottom: 14.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 66.h, child: Text("msg_schoolview_house".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.50))), SizedBox(height: 8.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgSignalOrange300, height: 9.adaptSize, width: 9.adaptSize, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl_4_2".tr, style: CustomTextStyles.labelSmallBold))]), SizedBox(height: 6.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 9.adaptSize, width: 9.adaptSize), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("msg_jakarta_indonesia".tr, style: theme.textTheme.labelSmall))])]))]))); } 
/// Section Widget
Widget _buildLayout() { return Padding(padding: EdgeInsets.only(left: 23.h), child: Obx(() => Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(controller.editFormModelObj.value.layout2ItemList.value.length, (index) {Layout2ItemModel model = controller.editFormModelObj.value.layout2ItemList.value[index]; return Layout2ItemWidget(model);})))); } 
/// Section Widget
Widget _buildLayout1() { return Align(alignment: Alignment.center, child: Obx(() => Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(controller.editFormModelObj.value.layout4ItemList.value.length, (index) {Layout4ItemModel model = controller.editFormModelObj.value.layout4ItemList.value[index]; return Layout4ItemWidget(model);})))); } 
/// Section Widget
Widget _buildLinkedin() { return Padding(padding: EdgeInsets.only(left: 24.h, right: 35.h), child: Row(children: [CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(15.h), child: CustomImageView(imagePath: ImageConstant.imgLinkedinBlueGray60050x50)), Expanded(child: Container(width: 250.h, margin: EdgeInsets.only(left: 15.h, top: 8.v, bottom: 5.v), child: Text("msg_jl_gerungsari".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall!.copyWith(height: 1.50))))])); } 
/// Section Widget
Widget _buildLayout2() { return Align(alignment: Alignment.center, child: Card(clipBehavior: Clip.antiAlias, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25), child: Container(height: 200.v, width: 327.h, decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder25), child: Stack(alignment: Alignment.bottomCenter, children: [SizedBox(height: 200.v, width: 327.h, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)), Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 112.h, vertical: 16.v), decoration: AppDecoration.fillWhiteA, child: Text("msg_select_on_the_map".tr, style: CustomTextStyles.bodySmallBluegray80001_1))), CustomImageView(imagePath: ImageConstant.imgPinRealEstate, height: 51.v, width: 34.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 40.v, right: 118.h))])))); } 
/// Section Widget
Widget _buildShape() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 162.v, crossAxisCount: 2, mainAxisSpacing: 9.h, crossAxisSpacing: 9.h), physics: NeverScrollableScrollPhysics(), itemCount: controller.editFormModelObj.value.shapeItemList.value.length, itemBuilder: (context, index) {ShapeItemModel model = controller.editFormModelObj.value.shapeItemList.value[index]; return ShapeItemWidget(model);})))); } 
/// Section Widget
Widget _buildFormTextFill() { return Align(alignment: Alignment.center, child: Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 1.v), child: Text("lbl_150_000".tr, style: theme.textTheme.titleSmall)), CustomImageView(imagePath: ImageConstant.imgIconoirmail, height: 20.adaptSize, width: 20.adaptSize)]))); } 
/// Section Widget
Widget _buildShape1() { return Align(alignment: Alignment.center, child: Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 23.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(top: 6.v), child: Text("lbl_320".tr, style: theme.textTheme.titleSmall)), Padding(padding: EdgeInsets.only(left: 2.h, top: 9.v, bottom: 2.v), child: Text("lbl_month".tr, style: CustomTextStyles.labelMediumSemiBold)), Spacer(), CustomImageView(imagePath: ImageConstant.imgIconoirmail, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(top: 1.v))]))); } 
/// Section Widget
Widget _buildLayout3() { return Padding(padding: EdgeInsets.only(left: 24.h), child: Obx(() => Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(controller.editFormModelObj.value.layout6ItemList.value.length, (index) {Layout6ItemModel model = controller.editFormModelObj.value.layout6ItemList.value[index]; return Layout6ItemWidget(model);})))); } 
/// Section Widget
Widget _buildLayout4() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 15.v);}, itemCount: controller.editFormModelObj.value.layout8ItemList.value.length, itemBuilder: (context, index) {Layout8ItemModel model = controller.editFormModelObj.value.layout8ItemList.value[index]; return Layout8ItemWidget(model);})))); } 
/// Section Widget
Widget _buildWidget() { return Align(alignment: Alignment.centerRight, child: SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(left: 24.h), child: IntrinsicWidth(child: Obx(() => Wrap(runSpacing: 15.v, spacing: 15.h, children: List<Widget>.generate(controller.editFormModelObj.value.layout9ItemList.value.length, (index) {Layout9ItemModel model = controller.editFormModelObj.value.layout9ItemList.value[index]; return Layout9ItemWidget(model);})))))); } 
/// Section Widget
Widget _buildSeventy() { return Padding(padding: EdgeInsets.only(left: 24.h), child: Obx(() => Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(controller.editFormModelObj.value.seventyItemList.value.length, (index) {SeventyItemModel model = controller.editFormModelObj.value.seventyItemList.value[index]; return SeventyItemWidget(model);})))); } 
/// Section Widget
Widget _buildUpdate() { return CustomElevatedButton(text: "lbl_update".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapUpdate();}); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 

/// Displays a scrollable bottom sheet widget using the [Get] package 
/// and the [EditSuccessBottomsheet] widget.
///
/// The bottom sheet is controlled by the [EditSuccessController]
/// and is displayed using the [Get.bottomSheet] method with
/// [isScrollControlled] set to true.

onTapUpdate() { Get.bottomSheet(EditSuccessBottomsheet(Get.put(EditSuccessController(),),),isScrollControlled: true,); } 
 }
