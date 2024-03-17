import '../../../core/app_export.dart';/// This class is used in the [datagrid_item_widget] screen.
class DatagridItemModel {DatagridItemModel({this.bali, this.bali1, this.id, }) { bali = bali  ?? Rx(ImageConstant.imgShape174x144);bali1 = bali1  ?? Rx("Bali");id = id  ?? Rx(""); }

Rx<String>? bali;

Rx<String>? bali1;

Rx<String>? id;

 }
