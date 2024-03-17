import 'package:almohsen_s_application12/presentation/history_detail_screen/controller/history_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HistoryDetailScreen.
///
/// This class ensures that the HistoryDetailController is created when the
/// HistoryDetailScreen is first loaded.
class HistoryDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryDetailController());
  }
}
