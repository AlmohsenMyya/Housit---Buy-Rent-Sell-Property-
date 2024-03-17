import 'layoutchipview_item_model.dart';import '../../../core/app_export.dart';import 'propertyfeatureslist_item_model.dart';import 'totalroomschipview_item_model.dart';import 'environmentfacilitieschipview_item_model.dart';/// This class defines the variables used in the [extra_information_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExtraInformationModel {Rx<List<LayoutchipviewItemModel>> layoutchipviewItemList = Rx(List.generate(2,(index) =>LayoutchipviewItemModel()));

Rx<List<PropertyfeatureslistItemModel>> propertyfeatureslistItemList = Rx([PropertyfeatureslistItemModel(bedroom: "Bedroom".obs,text: "3".obs),PropertyfeatureslistItemModel(bedroom: "Bathroom".obs,text: "2".obs),PropertyfeatureslistItemModel(bedroom: "Balcony".obs,text: "2".obs)]);

Rx<List<TotalroomschipviewItemModel>> totalroomschipviewItemList = Rx(List.generate(4,(index) =>TotalroomschipviewItemModel()));

Rx<List<EnvironmentfacilitieschipviewItemModel>> environmentfacilitieschipviewItemList = Rx(List.generate(7,(index) =>EnvironmentfacilitieschipviewItemModel()));

 }
