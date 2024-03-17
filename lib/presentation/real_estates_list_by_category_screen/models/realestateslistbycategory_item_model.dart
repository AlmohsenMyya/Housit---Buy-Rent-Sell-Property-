import '../../../core/app_export.dart';/// This class is used in the [realestateslistbycategory_item_widget] screen.
class RealestateslistbycategoryItemModel {RealestateslistbycategoryItemModel({this.wingsTower, this.favorite, this.price, this.month, this.wingsTower1, this.text, this.jakartaIndonesia, this.id, }) { wingsTower = wingsTower  ?? Rx(ImageConstant.imgShape160x144);favorite = favorite  ?? Rx(ImageConstant.imgFavorite);price = price  ?? Rx(" 220");month = month  ?? Rx("/month");wingsTower1 = wingsTower1  ?? Rx("Wings Tower");text = text  ?? Rx("4.9");jakartaIndonesia = jakartaIndonesia  ?? Rx("Jakarta, Indonesia");id = id  ?? Rx(""); }

Rx<String>? wingsTower;

Rx<String>? favorite;

Rx<String>? price;

Rx<String>? month;

Rx<String>? wingsTower1;

Rx<String>? text;

Rx<String>? jakartaIndonesia;

Rx<String>? id;

 }
