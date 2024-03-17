import '../../../core/app_export.dart';/// This class is used in the [toplocationslocationdetail_item_widget] screen.
class ToplocationslocationdetailItemModel {ToplocationslocationdetailItemModel({this.flowerHeavenHouse, this.text, this.baliIndonesia, this.price, this.month, this.id, }) { flowerHeavenHouse = flowerHeavenHouse  ?? Rx("Flower Heaven House");text = text  ?? Rx("4.7 ");baliIndonesia = baliIndonesia  ?? Rx("Bali, Indonesia");price = price  ?? Rx(" 370");month = month  ?? Rx("/month");id = id  ?? Rx(""); }

Rx<String>? flowerHeavenHouse;

Rx<String>? text;

Rx<String>? baliIndonesia;

Rx<String>? price;

Rx<String>? month;

Rx<String>? id;

 }
