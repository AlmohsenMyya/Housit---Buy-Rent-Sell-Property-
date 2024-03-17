import '../../../core/app_export.dart';/// This class is used in the [home_item_widget] screen.
class HomeItemModel {HomeItemModel({this.wingsTower, this.favorite, this.price, this.month, this.wingsTower1, this.image, this.text, this.jakartaIndonesia, this.jakartaIndonesia1, this.id, }) { wingsTower = wingsTower  ?? Rx(ImageConstant.imgShape160x144);favorite = favorite  ?? Rx(ImageConstant.imgFavorite);price = price  ?? Rx(" 220");month = month  ?? Rx("/month");wingsTower1 = wingsTower1  ?? Rx("Wings Tower");image = image  ?? Rx(ImageConstant.imgSignalOrange3009x9);text = text  ?? Rx("4.9");jakartaIndonesia = jakartaIndonesia  ?? Rx(ImageConstant.imgLinkedin);jakartaIndonesia1 = jakartaIndonesia1  ?? Rx("Jakarta, Indonesia");id = id  ?? Rx(""); }

Rx<String>? wingsTower;

Rx<String>? favorite;

Rx<String>? price;

Rx<String>? month;

Rx<String>? wingsTower1;

Rx<String>? image;

Rx<String>? text;

Rx<String>? jakartaIndonesia;

Rx<String>? jakartaIndonesia1;

Rx<String>? id;

 }
