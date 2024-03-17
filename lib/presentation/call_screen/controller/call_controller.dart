import '../../../core/app_export.dart';import '../models/call_model.dart';/// A controller class for the CallScreen.
///
/// This class manages the state of the CallScreen, including the
/// current callModelObj
class CallController extends GetxController {Rx<CallModel> callModelObj = CallModel().obs;

 }
