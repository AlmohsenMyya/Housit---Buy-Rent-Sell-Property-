import '../../../core/app_export.dart';
import '../models/top_agents_profile_detail_model.dart';

/// A controller class for the TopAgentsProfileDetailPage.
///
/// This class manages the state of the TopAgentsProfileDetailPage, including the
/// current topAgentsProfileDetailModelObj
class TopAgentsProfileDetailController extends GetxController {
  TopAgentsProfileDetailController(this.topAgentsProfileDetailModelObj);

  Rx<TopAgentsProfileDetailModel> topAgentsProfileDetailModelObj;
}
