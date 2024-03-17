import '../../../core/app_export.dart';import 'layout_item_model.dart';/// This class defines the variables used in the [example_data_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExampleDataModel {Rx<List<LayoutItemModel>> layoutItemList = Rx([LayoutItemModel(image:ImageConstant.imgShape104x126.obs,skyDandelionsApartment: "Sky Dandelions\nApartment".obs,text: "4.2 ".obs,jakartaIndonesia: "Jakarta, Indonesia".obs),LayoutItemModel(skyDandelionsApartment: "Sky Dandelions\nApartment".obs,text: "4.2 ".obs,jakartaIndonesia: "Jakarta, Indonesia".obs)]);

 }
