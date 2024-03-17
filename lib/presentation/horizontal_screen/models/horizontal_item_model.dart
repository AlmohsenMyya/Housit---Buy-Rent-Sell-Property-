import '../../../core/app_export.dart';/// This class is used in the [horizontal_item_widget] screen.
class HorizontalItemModel {HorizontalItemModel({this.image, this.baliBeachviewVilla, this.image1, this.text, this.baliIndonesia, this.price, this.month, this.id, }) { image = image  ?? Rx(ImageConstant.imgShape140x126);baliBeachviewVilla = baliBeachviewVilla  ?? Rx("Bali Beachview Villa");image1 = image1  ?? Rx(ImageConstant.imgSignalYellow700);text = text  ?? Rx("4.2 ");baliIndonesia = baliIndonesia  ?? Rx("Bali, Indonesia");price = price  ?? Rx(" 420");month = month  ?? Rx("/month");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? baliBeachviewVilla;

Rx<String>? image1;

Rx<String>? text;

Rx<String>? baliIndonesia;

Rx<String>? price;

Rx<String>? month;

Rx<String>? id;

 }
