import '../../../core/app_export.dart';
import '../models/filter_full_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FilterFullBottomsheet.
///
/// This class manages the state of the FilterFullBottomsheet, including the
/// current filterFullModelObj
class FilterFullController extends GetxController {
  TextEditingController searchController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController formValueController = TextEditingController();

  Rx<FilterFullModel> filterFullModelObj = FilterFullModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    priceController.dispose();
    formValueController.dispose();
  }
}
