import '../../../core/app_export.dart';
import '../models/select_location_model.dart';

/// A controller class for the SelectLocationBottomsheet.
///
/// This class manages the state of the SelectLocationBottomsheet, including the
/// current selectLocationModelObj
class SelectLocationController extends GetxController {
  Rx<SelectLocationModel> selectLocationModelObj = SelectLocationModel().obs;
}
