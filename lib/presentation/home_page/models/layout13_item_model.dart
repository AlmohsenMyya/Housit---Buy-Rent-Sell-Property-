import '../../../core/app_export.dart';/// This class is used in the [layout13_item_widget] screen.
class Layout13ItemModel {Layout13ItemModel({this.image, this.favorite, this.skyDandelionsApartment, this.text, this.jakartaIndonesia, this.price, this.month, this.id, }) { image = image  ?? Rx(ImageConstant.imgShape61);favorite = favorite  ?? Rx(ImageConstant.imgFavoriteRedA200);skyDandelionsApartment = skyDandelionsApartment  ?? Rx("Sky Dandelions\nApartment");text = text  ?? Rx("4.9");jakartaIndonesia = jakartaIndonesia  ?? Rx("Jakarta, Indonesia");price = price  ?? Rx(" 290");month = month  ?? Rx("/month");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? favorite;

Rx<String>? skyDandelionsApartment;

Rx<String>? text;

Rx<String>? jakartaIndonesia;

Rx<String>? price;

Rx<String>? month;

Rx<String>? id;

 }
