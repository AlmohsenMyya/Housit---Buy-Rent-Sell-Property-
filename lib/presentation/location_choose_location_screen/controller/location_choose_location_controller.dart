import '../../../core/app_export.dart';import '../models/location_choose_location_model.dart';/// A controller class for the LocationChooseLocationScreen.
///
/// This class manages the state of the LocationChooseLocationScreen, including the
/// current locationChooseLocationModelObj
class LocationChooseLocationController extends GetxController {Rx<LocationChooseLocationModel> locationChooseLocationModelObj = LocationChooseLocationModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.locationFillScreen, ); } 
 }
