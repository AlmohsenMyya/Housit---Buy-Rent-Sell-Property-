import 'categorychipview_item_model.dart';import 'environmentfacilitieschipview2_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [filter_full_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterFullModel {Rx<List<CategorychipviewItemModel>> categorychipviewItemList = Rx(List.generate(2,(index) =>CategorychipviewItemModel()));

Rx<List<Environmentfacilitieschipview2ItemModel>> environmentfacilitieschipview2ItemList = Rx(List.generate(7,(index) =>Environmentfacilitieschipview2ItemModel()));

 }
