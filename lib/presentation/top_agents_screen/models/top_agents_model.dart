import '../../../core/app_export.dart';import 'datalist1_item_model.dart';/// This class defines the variables used in the [top_agents_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopAgentsModel {Rx<List<Datalist1ItemModel>> datalist1ItemList = Rx([Datalist1ItemModel(amanda:ImageConstant.imgShape100x100.obs,amanda1: "Amanda".obs,text: "5.0".obs,text1: "112".obs,sold: "Sold".obs),Datalist1ItemModel(amanda:ImageConstant.imgShape12.obs,amanda1: "Anderson".obs),Datalist1ItemModel(amanda:ImageConstant.imgShape13.obs,amanda1: "Samantha".obs),Datalist1ItemModel(amanda:ImageConstant.imgShape14.obs,amanda1: "Andrew".obs),Datalist1ItemModel(amanda:ImageConstant.imgShape15.obs,amanda1: "Michael".obs),Datalist1ItemModel(amanda:ImageConstant.imgShape16.obs,amanda1: "Tobi".obs)]);

 }
