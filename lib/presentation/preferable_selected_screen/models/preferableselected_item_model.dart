import '../../../core/app_export.dart';/// This class is used in the [preferableselected_item_widget] screen.
class PreferableselectedItemModel {PreferableselectedItemModel({this.apartment, this.checkmark, this.apartment1, this.id, }) { apartment = apartment  ?? Rx(ImageConstant.imgShape49);checkmark = checkmark  ?? Rx(ImageConstant.imgCheckmarkWhiteA700);apartment1 = apartment1  ?? Rx("Apartment");id = id  ?? Rx(""); }

Rx<String>? apartment;

Rx<String>? checkmark;

Rx<String>? apartment1;

Rx<String>? id;

 }
