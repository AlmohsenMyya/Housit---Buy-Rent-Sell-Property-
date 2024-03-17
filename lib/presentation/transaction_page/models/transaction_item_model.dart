import '../../../core/app_export.dart';/// This class is used in the [transaction_item_widget] screen.
class TransactionItemModel {TransactionItemModel({this.wingsTower, this.wingsTower1, this.date, this.id, }) { wingsTower = wingsTower  ?? Rx(ImageConstant.imgShape17);wingsTower1 = wingsTower1  ?? Rx("Wings Tower");date = date  ?? Rx("November 21,2021");id = id  ?? Rx(""); }

Rx<String>? wingsTower;

Rx<String>? wingsTower1;

Rx<String>? date;

Rx<String>? id;

 }
