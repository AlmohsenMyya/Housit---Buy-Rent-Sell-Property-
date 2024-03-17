import '../../../core/app_export.dart';import 'addreviewfill_item_model.dart';/// This class defines the variables used in the [add_review_fill_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddReviewFillModel {Rx<List<AddreviewfillItemModel>> addreviewfillItemList = Rx([AddreviewfillItemModel(shape:ImageConstant.imgShape50.obs,iconClose:ImageConstant.imgIconCloseWhiteA700.obs),AddreviewfillItemModel(shape:ImageConstant.imgShape51.obs,iconClose:ImageConstant.imgIconCloseWhiteA700.obs)]);

 }
