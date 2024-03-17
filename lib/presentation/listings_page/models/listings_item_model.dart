import '../../../core/app_export.dart';/// This class is used in the [listings_item_widget] screen.
class ListingsItemModel {ListingsItemModel({this.fairviewApartment, this.price, this.day, this.fairviewApartment1, this.text, this.jakartaIndonesia, this.id, }) { fairviewApartment = fairviewApartment  ?? Rx(ImageConstant.imgShape35);price = price  ?? Rx(" 220");day = day  ?? Rx("/day");fairviewApartment1 = fairviewApartment1  ?? Rx("Fairview Apartment");text = text  ?? Rx("4.2");jakartaIndonesia = jakartaIndonesia  ?? Rx("Jakarta, Indonesia");id = id  ?? Rx(""); }

Rx<String>? fairviewApartment;

Rx<String>? price;

Rx<String>? day;

Rx<String>? fairviewApartment1;

Rx<String>? text;

Rx<String>? jakartaIndonesia;

Rx<String>? id;

 }
