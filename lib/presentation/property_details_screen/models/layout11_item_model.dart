import '../../../core/app_export.dart';/// This class is used in the [layout11_item_widget] screen.
class Layout11ItemModel {Layout11ItemModel({this.bedroom, this.bedroomCounter, this.id, }) { bedroom = bedroom  ?? Rx(ImageConstant.imgMdiBedEmpty);bedroomCounter = bedroomCounter  ?? Rx("2 Bedroom");id = id  ?? Rx(""); }

Rx<String>? bedroom;

Rx<String>? bedroomCounter;

Rx<String>? id;

 }
