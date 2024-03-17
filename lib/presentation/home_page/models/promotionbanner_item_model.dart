import '../../../core/app_export.dart';/// This class is used in the [promotionbanner_item_widget] screen.
class PromotionbannerItemModel {PromotionbannerItemModel({this.halloweenSale, this.offer, this.id, }) { halloweenSale = halloweenSale  ?? Rx("Halloween \nSale!");offer = offer  ?? Rx("All discount up to 60%");id = id  ?? Rx(""); }

Rx<String>? halloweenSale;

Rx<String>? offer;

Rx<String>? id;

 }
