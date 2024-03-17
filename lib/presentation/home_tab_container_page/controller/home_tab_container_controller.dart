import '../../../core/app_export.dart';
import '../models/home_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeTabContainerPage.
///
/// This class manages the state of the HomeTabContainerPage, including the
/// current homeTabContainerModelObj
class HomeTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  HomeTabContainerController(this.homeTabContainerModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeTabContainerModel> homeTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in homeTabContainerModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    homeTabContainerModelObj.value.dropdownItemList.refresh();
  }
}
