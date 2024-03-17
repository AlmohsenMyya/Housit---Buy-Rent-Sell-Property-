import '../../../core/app_export.dart';/// This class is used in the [datalist_item_widget] screen.
class DatalistItemModel {DatalistItemModel({this.villa, this.theLaurelsVilla, this.text, this.baliIndonesia, this.price, this.month, this.id, }) { villa = villa  ?? Rx("Villa");theLaurelsVilla = theLaurelsVilla  ?? Rx("The Laurels Villa");text = text  ?? Rx("4.9 ");baliIndonesia = baliIndonesia  ?? Rx("Bali, Indonesia");price = price  ?? Rx(" 320");month = month  ?? Rx("/night");id = id  ?? Rx(""); }

Rx<String>? villa;

Rx<String>? theLaurelsVilla;

Rx<String>? text;

Rx<String>? baliIndonesia;

Rx<String>? price;

Rx<String>? month;

Rx<String>? id;

 }
