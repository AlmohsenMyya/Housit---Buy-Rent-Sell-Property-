import '../../../core/app_export.dart';/// This class is used in the [estatescardvertical_item_widget] screen.
class EstatescardverticalItemModel {EstatescardverticalItemModel({this.theLaurelsVilla, this.price, this.month, this.theLaurelsVilla1, this.image, this.text, this.baliIndonesia, this.id, }) { theLaurelsVilla = theLaurelsVilla  ?? Rx(ImageConstant.imgShape30);price = price  ?? Rx(" 320");month = month  ?? Rx("/night");theLaurelsVilla1 = theLaurelsVilla1  ?? Rx("The Laurels Villa");image = image  ?? Rx(ImageConstant.imgSignalOrange3009x9);text = text  ?? Rx("4.9");baliIndonesia = baliIndonesia  ?? Rx("Bali, Indonesia");id = id  ?? Rx(""); }

Rx<String>? theLaurelsVilla;

Rx<String>? price;

Rx<String>? month;

Rx<String>? theLaurelsVilla1;

Rx<String>? image;

Rx<String>? text;

Rx<String>? baliIndonesia;

Rx<String>? id;

 }
