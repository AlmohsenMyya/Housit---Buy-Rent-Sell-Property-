import '../../../core/app_export.dart';/// This class is used in the [paymentmethodlist_item_widget] screen.
class PaymentmethodlistItemModel {PaymentmethodlistItemModel({this.checkmark, this.text, this.balance, this.price, this.balance1, this.id, }) { checkmark = checkmark  ?? Rx(ImageConstant.imgCheckmark);text = text  ?? Rx("•••••••• 1222");balance = balance  ?? Rx("Balance");price = price  ?? Rx(" 54,200");balance1 = balance1  ?? Rx(ImageConstant.imgSettings);id = id  ?? Rx(""); }

Rx<String>? checkmark;

Rx<String>? text;

Rx<String>? balance;

Rx<String>? price;

Rx<String>? balance1;

Rx<String>? id;

 }
