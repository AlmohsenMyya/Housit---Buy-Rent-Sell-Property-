import '../../../core/app_export.dart';/// This class is used in the [userreviewslist_item_widget] screen.
class UserreviewslistItemModel {UserreviewslistItemModel({this.kurtMullins, this.kurtMullins1, this.description, this.time, this.id, }) { kurtMullins = kurtMullins  ?? Rx(ImageConstant.imgShape56);kurtMullins1 = kurtMullins1  ?? Rx("Kurt Mullins");description = description  ?? Rx("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ");time = time  ?? Rx("10 mins ago");id = id  ?? Rx(""); }

Rx<String>? kurtMullins;

Rx<String>? kurtMullins1;

Rx<String>? description;

Rx<String>? time;

Rx<String>? id;

 }
