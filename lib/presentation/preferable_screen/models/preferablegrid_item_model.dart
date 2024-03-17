import '../../../core/app_export.dart';/// This class is used in the [preferablegrid_item_widget] screen.
class PreferablegridItemModel {PreferablegridItemModel({this.house, this.house1, this.id, }) { house = house  ?? Rx(ImageConstant.imgShape43);house1 = house1  ?? Rx("House");id = id  ?? Rx(""); }

Rx<String>? house;

Rx<String>? house1;

Rx<String>? id;

 }
