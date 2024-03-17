import 'package:almohsen_s_application12/presentation/top_locations_location_detail_screen/controller/top_locations_location_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TopLocationsLocationDetailScreen.
///
/// This class ensures that the TopLocationsLocationDetailController is created when the
/// TopLocationsLocationDetailScreen is first loaded.
class TopLocationsLocationDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopLocationsLocationDetailController());
  }
}
