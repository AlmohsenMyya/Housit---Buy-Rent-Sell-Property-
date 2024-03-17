import '../../../core/app_export.dart';/// This class is used in the [categorylist_item_widget] screen.
class CategorylistItemModel {CategorylistItemModel({this.all, this.id, }) { all = all  ?? Rx("All");id = id  ?? Rx(""); }

Rx<String>? all;

Rx<String>? id;

 }
