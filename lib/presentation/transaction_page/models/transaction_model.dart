import '../../../core/app_export.dart';import 'transaction_item_model.dart';/// This class defines the variables used in the [transaction_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionModel {Rx<List<TransactionItemModel>> transactionItemList = Rx([TransactionItemModel(wingsTower:ImageConstant.imgShape17.obs,wingsTower1: "Wings Tower".obs,date: "November 21,2021".obs),TransactionItemModel(wingsTower:ImageConstant.imgShape33.obs,wingsTower1: "Bridgeland Modern ".obs,date: "December".obs)]);

 }
