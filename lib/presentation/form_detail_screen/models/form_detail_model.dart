import 'chipviewlayout1_item_model.dart';import 'chipviewlayout3_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [form_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FormDetailModel {Rx<List<Chipviewlayout1ItemModel>> chipviewlayout1ItemList = Rx(List.generate(2,(index) =>Chipviewlayout1ItemModel()));

Rx<List<Chipviewlayout3ItemModel>> chipviewlayout3ItemList = Rx(List.generate(5,(index) =>Chipviewlayout3ItemModel()));

 }
