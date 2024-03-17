import '../../../core/app_export.dart';/// This class is used in the [viewallreviews_item_widget] screen.
class ViewallreviewsItemModel {ViewallreviewsItemModel({this.close, this.text, this.from, this.text1, this.reviewers, this.id, }) { close = close  ?? Rx(ImageConstant.imgClose);text = text  ?? Rx("4.9");from = from  ?? Rx("From");text1 = text1  ?? Rx("112");reviewers = reviewers  ?? Rx("reviewers");id = id  ?? Rx(""); }

Rx<String>? close;

Rx<String>? text;

Rx<String>? from;

Rx<String>? text1;

Rx<String>? reviewers;

Rx<String>? id;

 }
