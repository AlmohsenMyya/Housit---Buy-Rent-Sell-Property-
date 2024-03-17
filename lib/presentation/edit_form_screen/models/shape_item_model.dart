import '../../../core/app_export.dart';/// This class is used in the [shape_item_widget] screen.
class ShapeItemModel {ShapeItemModel({this.shape, this.id, }) { shape = shape  ?? Rx(ImageConstant.imgShape52);id = id  ?? Rx(""); }

Rx<String>? shape;

Rx<String>? id;

 }
