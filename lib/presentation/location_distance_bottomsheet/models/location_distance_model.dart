import 'locationlist_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [location_distance_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class LocationDistanceModel {Rx<List<LocationlistItemModel>> locationlistItemList = Rx(List.generate(2,(index) => LocationlistItemModel()));

 }
