import '../../../core/app_export.dart';/// This class is used in the [searchresult_item_widget] screen.
class SearchresultItemModel {SearchresultItemModel({this.bungalowHouse, this.favorite, this.price, this.month, this.bungalowHouse1, this.text, this.jakartaIndonesia, this.id, }) { bungalowHouse = bungalowHouse  ?? Rx(ImageConstant.imgShape2);favorite = favorite  ?? Rx(ImageConstant.imgFavoriteRedA200);price = price  ?? Rx(" 235");month = month  ?? Rx("/month");bungalowHouse1 = bungalowHouse1  ?? Rx("Bungalow House");text = text  ?? Rx("4.7");jakartaIndonesia = jakartaIndonesia  ?? Rx("Jakarta, Indonesia");id = id  ?? Rx(""); }

Rx<String>? bungalowHouse;

Rx<String>? favorite;

Rx<String>? price;

Rx<String>? month;

Rx<String>? bungalowHouse1;

Rx<String>? text;

Rx<String>? jakartaIndonesia;

Rx<String>? id;

 }
