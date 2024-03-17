import '../../../core/app_export.dart';import 'userreviewslist_item_model.dart';/// This class defines the variables used in the [reviews_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewsModel {Rx<List<UserreviewslistItemModel>> userreviewslistItemList = Rx([UserreviewslistItemModel(kurtMullins:ImageConstant.imgShape56.obs,kurtMullins1: "Kurt Mullins".obs,description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ".obs,time: "10 mins ago".obs),UserreviewslistItemModel(kurtMullins:ImageConstant.imgShape28.obs),UserreviewslistItemModel(kurtMullins:ImageConstant.imgShape57.obs,kurtMullins1: "Kay Swanson".obs,description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperia.".obs,time: "10 mins ago".obs)]);

 }
