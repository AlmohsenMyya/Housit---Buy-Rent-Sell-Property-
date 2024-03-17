import '../../../core/app_export.dart';/// This class is used in the [allreviews_item_widget] screen.
class AllreviewsItemModel {AllreviewsItemModel({this.fairviewApartment, this.fairviewApartment1, this.image, this.text, this.semarangIndonesia, this.geraldo, this.geraldo1, this.description, this.time, this.id, }) { fairviewApartment = fairviewApartment  ?? Rx(ImageConstant.imgShape36x74);fairviewApartment1 = fairviewApartment1  ?? Rx("Fairview Apartment");image = image  ?? Rx(ImageConstant.imgSignalYellow7009x9);text = text  ?? Rx("4.9");semarangIndonesia = semarangIndonesia  ?? Rx("Semarang, Indonesia");geraldo = geraldo  ?? Rx(ImageConstant.imgShape23);geraldo1 = geraldo1  ?? Rx("Geraldo");description = description  ?? Rx("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ");time = time  ?? Rx("10 mins ago");id = id  ?? Rx(""); }

Rx<String>? fairviewApartment;

Rx<String>? fairviewApartment1;

Rx<String>? image;

Rx<String>? text;

Rx<String>? semarangIndonesia;

Rx<String>? geraldo;

Rx<String>? geraldo1;

Rx<String>? description;

Rx<String>? time;

Rx<String>? id;

 }
