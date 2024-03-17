import '../../../core/app_export.dart';/// This class is used in the [datalist1_item_widget] screen.
class Datalist1ItemModel {Datalist1ItemModel({this.amanda, this.amanda1, this.text, this.text1, this.sold, this.id, }) { amanda = amanda  ?? Rx(ImageConstant.imgShape100x100);amanda1 = amanda1  ?? Rx("Amanda");text = text  ?? Rx("5.0");text1 = text1  ?? Rx("112");sold = sold  ?? Rx("Sold");id = id  ?? Rx(""); }

Rx<String>? amanda;

Rx<String>? amanda1;

Rx<String>? text;

Rx<String>? text1;

Rx<String>? sold;

Rx<String>? id;

 }
