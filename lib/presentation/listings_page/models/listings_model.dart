import '../../../core/app_export.dart';import 'listings_item_model.dart';/// This class defines the variables used in the [listings_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ListingsModel {Rx<List<ListingsItemModel>> listingsItemList = Rx([ListingsItemModel(fairviewApartment:ImageConstant.imgShape35.obs,price: " 220".obs,day: "/day".obs,fairviewApartment1: "Fairview Apartment".obs,text: "4.2".obs,jakartaIndonesia: "Jakarta, Indonesia".obs),ListingsItemModel(fairviewApartment:ImageConstant.imgShape36.obs,price: " 220".obs,day: "/day".obs,fairviewApartment1: "Shoolview House".obs,text: "4.2".obs,jakartaIndonesia: "Jakarta, Indonesia".obs),ListingsItemModel(fairviewApartment:ImageConstant.imgShape35.obs,price: " 220".obs,day: "/day".obs,fairviewApartment1: "Fairview Apartment".obs),ListingsItemModel(fairviewApartment:ImageConstant.imgShape36.obs,price: " 220".obs,day: "/day".obs,fairviewApartment1: "Shoolview House".obs)]);

 }