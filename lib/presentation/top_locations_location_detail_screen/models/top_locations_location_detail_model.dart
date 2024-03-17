import 'frameeightyone_item_model.dart';import '../../../core/app_export.dart';import 'toplocationslocationdetail_item_model.dart';/// This class defines the variables used in the [top_locations_location_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopLocationsLocationDetailModel {Rx<List<FrameeightyoneItemModel>> frameeightyoneItemList = Rx(List.generate(2,(index) =>FrameeightyoneItemModel()));

Rx<List<ToplocationslocationdetailItemModel>> toplocationslocationdetailItemList = Rx([ToplocationslocationdetailItemModel(flowerHeavenHouse: "Flower Heaven House".obs,text: "4.7 ".obs,baliIndonesia: "Bali, Indonesia".obs,price: " 370".obs,month: "/month".obs),ToplocationslocationdetailItemModel(flowerHeavenHouse: "Flower Heaven House".obs,text: "4.7 ".obs,baliIndonesia: "Bali, Indonesia".obs,price: " 370".obs,month: "/month".obs)]);

 }
