import '../../../core/app_export.dart';
import '../models/horizontal_model.dart';

/// A controller class for the HorizontalScreen.
///
/// This class manages the state of the HorizontalScreen, including the
/// current horizontalModelObj
class HorizontalController extends GetxController {
  Rx<HorizontalModel> horizontalModelObj = HorizontalModel().obs;
}
