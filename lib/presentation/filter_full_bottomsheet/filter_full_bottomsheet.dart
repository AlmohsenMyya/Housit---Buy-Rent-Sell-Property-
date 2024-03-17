import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';
import 'package:almohsen_s_application12/widgets/custom_search_view.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'models/categorychipview_item_model.dart';
import '../filter_full_bottomsheet/widgets/categorychipview_item_widget.dart';
import 'package:almohsen_s_application12/widgets/custom_text_form_field.dart';
import 'models/environmentfacilitieschipview2_item_model.dart';
import '../filter_full_bottomsheet/widgets/environmentfacilitieschipview2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';
import 'controller/filter_full_controller.dart';

class FilterFullBottomsheet extends StatelessWidget {
  FilterFullBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  FilterFullController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 24.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 3.v),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 60.h,
                child: Divider(),
              ),
            ),
            SizedBox(height: 33.v),
            _buildTitleRow(),
            SizedBox(height: 160.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "lbl_location".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup,
                  height: 4.adaptSize,
                  width: 4.adaptSize,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    bottom: 20.v,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.v),
            CustomSearchView(
              controller: controller.searchController,
              hintText: "lbl_semarang".tr,
              contentPadding: EdgeInsets.symmetric(vertical: 26.v),
            ),
            SizedBox(height: 15.v),
            _buildLayoutStack(),
            SizedBox(height: 39.v),
            Text(
              "lbl_sell_type".tr,
              style: CustomTextStyles.titleMediumBold,
            ),
            SizedBox(height: 14.v),
            _buildCategoryChipView(),
            SizedBox(height: 31.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "lbl_price".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup,
                  height: 4.adaptSize,
                  width: 4.adaptSize,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    bottom: 20.v,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.v),
            _buildFormValueComparisonRow(),
            SizedBox(height: 166.v),
            Text(
              "msg_environment_facilities".tr,
              style: CustomTextStyles.titleMediumBold,
            ),
            SizedBox(height: 16.v),
            _buildEnvironmentFacilitiesChipView(),
            SizedBox(height: 38.v),
            _buildApplyFilterButton(),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReset() {
    return CustomElevatedButton(
      height: 50.v,
      width: 88.h,
      text: "lbl_reset".tr,
      buttonStyle: CustomButtonStyles.fillRedATL25,
      buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
    );
  }

  /// Section Widget
  Widget _buildTitleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 16.v,
            bottom: 11.v,
          ),
          child: Text(
            "lbl_filter".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
        ),
        _buildReset(),
      ],
    );
  }

  /// Section Widget
  Widget _buildLayoutStack() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Container(
        height: 200.v,
        width: 327.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: 200.v,
              width: 327.h,
              child: GoogleMap(
                //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                    37.43296265331129,
                    -122.08832357078792,
                  ),
                  zoom: 14.4746,
                ),
                onMapCreated: (GoogleMapController controller) {
                  googleMapController.complete(controller);
                },
                zoomControlsEnabled: false,
                zoomGesturesEnabled: false,
                myLocationButtonEnabled: false,
                myLocationEnabled: false,
              ),
            ),
            CustomElevatedButton(
              height: 50.v,
              width: 327.h,
              text: "lbl_select_on_map".tr,
              buttonStyle: CustomButtonStyles.fillWhiteA2,
              buttonTextStyle: theme.textTheme.titleSmall!,
              alignment: Alignment.bottomCenter,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgThumbsUpOrange300,
              height: 51.v,
              width: 34.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 44.v,
                right: 132.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryChipView() {
    return Obx(
      () => Wrap(
        runSpacing: 6.v,
        spacing: 6.h,
        children: List<Widget>.generate(
          controller
              .filterFullModelObj.value.categorychipviewItemList.value.length,
          (index) {
            CategorychipviewItemModel model = controller
                .filterFullModelObj.value.categorychipviewItemList.value[index];

            return CategorychipviewItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice() {
    return CustomTextFormField(
      width: 138.h,
      controller: controller.priceController,
      hintText: "lbl_150".tr,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 25.v, 20.h, 24.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconDollarFill,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 70.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 26.v,
        right: 30.h,
        bottom: 26.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL25,
    );
  }

  /// Section Widget
  Widget _buildFormValue() {
    return CustomTextFormField(
      width: 138.h,
      controller: controller.formValueController,
      hintText: "lbl_350".tr,
      textInputAction: TextInputAction.done,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(16.h, 25.v, 20.h, 24.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconDollarFill,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 70.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 26.v,
        right: 30.h,
        bottom: 26.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL25,
    );
  }

  /// Section Widget
  Widget _buildFormValueComparisonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildPrice(),
        CustomImageView(
          imagePath: ImageConstant.imgShare,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 25.v),
        ),
        _buildFormValue(),
      ],
    );
  }

  /// Section Widget
  Widget _buildEnvironmentFacilitiesChipView() {
    return Obx(
      () => Wrap(
        runSpacing: 10.v,
        spacing: 10.h,
        children: List<Widget>.generate(
          controller.filterFullModelObj.value
              .environmentfacilitieschipview2ItemList.value.length,
          (index) {
            Environmentfacilitieschipview2ItemModel model = controller
                .filterFullModelObj
                .value
                .environmentfacilitieschipview2ItemList
                .value[index];

            return Environmentfacilitieschipview2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyFilterButton() {
    return CustomElevatedButton(
      text: "lbl_apply_filter".tr,
    );
  }
}
