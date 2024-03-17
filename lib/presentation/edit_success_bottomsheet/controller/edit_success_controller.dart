import '../../../core/app_export.dart';
import '../models/edit_success_model.dart';

/// A controller class for the EditSuccessBottomsheet.
///
/// This class manages the state of the EditSuccessBottomsheet, including the
/// current editSuccessModelObj
class EditSuccessController extends GetxController {
  Rx<EditSuccessModel> editSuccessModelObj = EditSuccessModel().obs;
}
