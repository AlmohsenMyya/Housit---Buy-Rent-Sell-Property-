import '../../../core/app_export.dart';/// This class is used in the [layout1_item_widget] screen.
class Layout1ItemModel {Layout1ItemModel({this.image, this.favorite, this.bridgelandModernHouse, this.text, this.semarangIndonesia, this.price, this.month, this.id, }) { image = image  ?? Rx(ImageConstant.imgShape41);favorite = favorite  ?? Rx(ImageConstant.imgFavoriteRedA200);bridgelandModernHouse = bridgelandModernHouse  ?? Rx("Bridgeland Modern House");text = text  ?? Rx("4.9");semarangIndonesia = semarangIndonesia  ?? Rx("Semarang, Indonesia");price = price  ?? Rx(" 260");month = month  ?? Rx("/month");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? favorite;

Rx<String>? bridgelandModernHouse;

Rx<String>? text;

Rx<String>? semarangIndonesia;

Rx<String>? price;

Rx<String>? month;

Rx<String>? id;

 }
