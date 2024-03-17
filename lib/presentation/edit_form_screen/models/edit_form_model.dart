import 'layout2_item_model.dart';import 'layout4_item_model.dart';import '../../../core/app_export.dart';import 'shape_item_model.dart';import 'layout6_item_model.dart';import 'layout8_item_model.dart';import 'layout9_item_model.dart';import 'seventy_item_model.dart';/// This class defines the variables used in the [edit_form_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EditFormModel {Rx<List<Layout2ItemModel>> layout2ItemList = Rx(List.generate(2,(index) =>Layout2ItemModel()));

Rx<List<Layout4ItemModel>> layout4ItemList = Rx(List.generate(5,(index) =>Layout4ItemModel()));

Rx<List<ShapeItemModel>> shapeItemList = Rx([ShapeItemModel(shape:ImageConstant.imgShape52.obs),ShapeItemModel(shape:ImageConstant.imgShape53.obs),ShapeItemModel(shape:ImageConstant.imgShape21.obs),ShapeItemModel(shape:ImageConstant.imgShape21.obs)]);

Rx<List<Layout6ItemModel>> layout6ItemList = Rx(List.generate(2,(index) =>Layout6ItemModel()));

Rx<List<Layout8ItemModel>> layout8ItemList = Rx([Layout8ItemModel(bedroom: "Bedroom".obs,text: "2".obs),Layout8ItemModel(bedroom: "Bathroom".obs,text: "2".obs),Layout8ItemModel(bedroom: "Balcony".obs,text: "1".obs)]);

Rx<List<Layout9ItemModel>> layout9ItemList = Rx(List.generate(4,(index) =>Layout9ItemModel()));

Rx<List<SeventyItemModel>> seventyItemList = Rx(List.generate(7,(index) =>SeventyItemModel()));

 }
