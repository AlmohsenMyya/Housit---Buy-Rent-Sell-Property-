import 'filter_item_model.dart';import '../../../core/app_export.dart';import 'layout1_item_model.dart';/// This class defines the variables used in the [result_filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ResultFilterModel {Rx<List<FilterItemModel>> filterItemList = Rx(List.generate(2,(index) =>FilterItemModel()));

Rx<List<Layout1ItemModel>> layout1ItemList = Rx([Layout1ItemModel(image:ImageConstant.imgShape41.obs,favorite:ImageConstant.imgFavoriteRedA200.obs,bridgelandModernHouse: "Bridgeland Modern House".obs,text: "4.9".obs,semarangIndonesia: "Semarang, Indonesia".obs,price: " 260".obs,month: "/month".obs),Layout1ItemModel(image:ImageConstant.imgShape31.obs,favorite:ImageConstant.imgFavorite.obs,bridgelandModernHouse: "Wayside Modern House".obs,text: "4.4".obs,semarangIndonesia: "Semarang, Indonesia".obs,price: " 220".obs,month: "/month".obs),Layout1ItemModel(image:ImageConstant.imgShape42.obs,favorite:ImageConstant.imgFavoriteRedA200.obs,bridgelandModernHouse: "Shoolview House".obs,text: "4.6".obs,semarangIndonesia: "Semarang, Indonesia".obs,price: " 245".obs,month: "/month".obs)]);

 }
