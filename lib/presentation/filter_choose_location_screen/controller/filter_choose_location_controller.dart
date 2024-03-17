import '../../../core/app_export.dart';import '../models/filter_choose_location_model.dart';/// A controller class for the FilterChooseLocationScreen.
///
/// This class manages the state of the FilterChooseLocationScreen, including the
/// current filterChooseLocationModelObj
class FilterChooseLocationController extends GetxController {Rx<FilterChooseLocationModel> filterChooseLocationModelObj = FilterChooseLocationModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.resultFilterScreen, ); } 
 }
