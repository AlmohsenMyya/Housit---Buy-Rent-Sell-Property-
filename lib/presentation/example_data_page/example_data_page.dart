import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'widgets/layout_item_widget.dart';
import 'models/layout_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';
import 'controller/example_data_controller.dart';
import 'models/example_data_model.dart';

class ExampleDataPage extends StatelessWidget {
  ExampleDataPage({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  Completer<GoogleMapController> googleMapController1 = Completer();

  ExampleDataController controller =
      Get.put(ExampleDataController(ExampleDataModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: SizedBox(
            height: 722.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: SizeUtils.height,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        _buildMapSection(),
                        _buildMapSection1(),
                      ],
                    ),
                  ),
                ),
                _buildDataListSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMapSection() {
    return SizedBox(
      height: SizeUtils.height,
      width: double.maxFinite,
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
    );
  }

  /// Section Widget
  Widget _buildMapSection1() {
    return Container(
      height: 460.v,
      width: 327.h,
      margin: EdgeInsets.only(top: 24.v),
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
          googleMapController1.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildDataListSection() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          bottom: 14.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10.h),
              decoration: AppDecoration.fillBlueGrayAf.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Text(
                      "lbl_0".tr,
                      style: CustomTextStyles.titleSmallWhiteA700_1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(8.h, 7.v, 3.h, 5.v),
                    child: Text(
                      "lbl_nearby_you".tr,
                      style: CustomTextStyles.titleSmallWhiteA700_1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.v),
            SizedBox(
              height: 120.v,
              child: Obx(
                () => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 10.h,
                    );
                  },
                  itemCount: controller
                      .exampleDataModelObj.value.layoutItemList.value.length,
                  itemBuilder: (context, index) {
                    LayoutItemModel model = controller
                        .exampleDataModelObj.value.layoutItemList.value[index];
                    return LayoutItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
