import '../../../core/app_export.dart';/// This class is used in the [addreviewfill_item_widget] screen.
class AddreviewfillItemModel {AddreviewfillItemModel({this.shape, this.iconClose, this.id, }) { shape = shape  ?? Rx(ImageConstant.imgShape50);iconClose = iconClose  ?? Rx(ImageConstant.imgIconCloseWhiteA700);id = id  ?? Rx(""); }

Rx<String>? shape;

Rx<String>? iconClose;

Rx<String>? id;

 }
