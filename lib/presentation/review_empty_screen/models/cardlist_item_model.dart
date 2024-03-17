import '../../../core/app_export.dart';/// This class is used in the [cardlist_item_widget] screen.
class CardlistItemModel {CardlistItemModel({this.text, this.balance, this.price, this.balance1, this.id, }) { text = text  ?? Rx("•••••••• 1222");balance = balance  ?? Rx("Balance");price = price  ?? Rx(" 31,250");balance1 = balance1  ?? Rx(ImageConstant.imgUser);id = id  ?? Rx(""); }

Rx<String>? text;

Rx<String>? balance;

Rx<String>? price;

Rx<String>? balance1;

Rx<String>? id;

 }
