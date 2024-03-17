import '../../../core/app_export.dart';import '../models/top_locations_location_detail_model.dart';import 'package:flutter/material.dart';/// A controller class for the TopLocationsLocationDetailScreen.
///
/// This class manages the state of the TopLocationsLocationDetailScreen, including the
/// current topLocationsLocationDetailModelObj
class TopLocationsLocationDetailController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<TopLocationsLocationDetailModel> topLocationsLocationDetailModelObj = TopLocationsLocationDetailModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
