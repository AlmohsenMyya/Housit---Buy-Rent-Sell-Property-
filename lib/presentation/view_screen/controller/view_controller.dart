import '../../../core/app_export.dart';import '../models/view_model.dart';/// A controller class for the ViewScreen.
///
/// This class manages the state of the ViewScreen, including the
/// current viewModelObj
class ViewController extends GetxController {Rx<ViewModel> viewModelObj = ViewModel().obs;

 }
