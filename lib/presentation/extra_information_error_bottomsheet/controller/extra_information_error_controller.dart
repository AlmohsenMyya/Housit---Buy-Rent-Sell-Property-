import '../../../core/app_export.dart';
import '../models/extra_information_error_model.dart';

/// A controller class for the ExtraInformationErrorBottomsheet.
///
/// This class manages the state of the ExtraInformationErrorBottomsheet, including the
/// current extraInformationErrorModelObj
class ExtraInformationErrorController extends GetxController {
  Rx<ExtraInformationErrorModel> extraInformationErrorModelObj =
      ExtraInformationErrorModel().obs;
}
