import 'package:google_maps_flutter/google_maps_flutter.dart';import 'dart:async';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/filter_choose_location_controller.dart';
// ignore_for_file: must_be_immutable
class FilterChooseLocationScreen extends GetWidget<FilterChooseLocationController> {FilterChooseLocationScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: _buildFilterChoose())); } 
/// Section Widget
Widget _buildFilterChoose() { return SizedBox(height: SizeUtils.height, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
 }
