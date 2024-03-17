import '../../../core/app_export.dart';import 'cardlist_item_model.dart';/// This class defines the variables used in the [review_empty_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewEmptyModel {Rx<List<CardlistItemModel>> cardlistItemList = Rx([CardlistItemModel(text: "•••••••• 1222".obs,balance: "Balance".obs,price: " 31,250".obs,balance1:ImageConstant.imgUser.obs),CardlistItemModel(text: "•••••••• 1542".obs,balance: "Balance".obs,price: " 54,200".obs,balance1:ImageConstant.imgSettings.obs)]);

 }
