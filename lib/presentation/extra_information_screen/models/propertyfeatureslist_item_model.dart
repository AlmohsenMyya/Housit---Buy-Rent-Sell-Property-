import '../../../core/app_export.dart';/// This class is used in the [propertyfeatureslist_item_widget] screen.
class PropertyfeatureslistItemModel {PropertyfeatureslistItemModel({this.bedroom, this.text, this.id, }) { bedroom = bedroom  ?? Rx("Bedroom");text = text  ?? Rx("3");id = id  ?? Rx(""); }

Rx<String>? bedroom;

Rx<String>? text;

Rx<String>? id;

 }
