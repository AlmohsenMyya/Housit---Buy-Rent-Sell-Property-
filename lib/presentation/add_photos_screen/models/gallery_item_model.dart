import '../../../core/app_export.dart';/// This class is used in the [gallery_item_widget] screen.
class GalleryItemModel {GalleryItemModel({this.shape, this.iconClose, this.id, }) { shape = shape  ?? Rx(ImageConstant.imgShape161x159);iconClose = iconClose  ?? Rx(ImageConstant.imgIconCloseWhiteA700);id = id  ?? Rx(""); }

Rx<String>? shape;

Rx<String>? iconClose;

Rx<String>? id;

 }
