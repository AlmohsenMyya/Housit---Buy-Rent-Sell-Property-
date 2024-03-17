import '../../../core/app_export.dart';import '../models/property_details_model.dart';/// A controller class for the PropertyDetailsScreen.
///
/// This class manages the state of the PropertyDetailsScreen, including the
/// current propertyDetailsModelObj
class PropertyDetailsController extends GetxController {Rx<PropertyDetailsModel> propertyDetailsModelObj = PropertyDetailsModel().obs;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in propertyDetailsModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} propertyDetailsModelObj.value.dropdownItemList.refresh(); } 
 }
