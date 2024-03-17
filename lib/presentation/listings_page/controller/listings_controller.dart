import '../../../core/app_export.dart';
import '../models/listings_model.dart';

/// A controller class for the ListingsPage.
///
/// This class manages the state of the ListingsPage, including the
/// current listingsModelObj
class ListingsController extends GetxController {
  ListingsController(this.listingsModelObj);

  Rx<ListingsModel> listingsModelObj;
}
