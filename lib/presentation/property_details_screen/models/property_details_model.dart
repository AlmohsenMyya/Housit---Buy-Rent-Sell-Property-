import 'transactiontype_item_model.dart';import '../../../core/app_export.dart';import 'layout11_item_model.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'layout12_item_model.dart';import 'viewallreviews_item_model.dart';import 'propertydetails_item_model.dart';/// This class defines the variables used in the [property_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PropertyDetailsModel {Rx<List<TransactiontypeItemModel>> transactiontypeItemList = Rx(List.generate(2,(index) =>TransactiontypeItemModel()));

Rx<List<Layout11ItemModel>> layout11ItemList = Rx([Layout11ItemModel(bedroom:ImageConstant.imgMdiBedEmpty.obs,bedroomCounter: "2 Bedroom".obs),Layout11ItemModel(bedroom:ImageConstant.imgTelevisionPrimary.obs,bedroomCounter: "1 Bathroom".obs),Layout11ItemModel(bedroom:ImageConstant.imgContrast.obs,bedroomCounter: "2 Bedroom".obs)]);

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<Layout12ItemModel>> layout12ItemList = Rx([Layout12ItemModel(hospitalCounter: "2 Hospital".obs),Layout12ItemModel(hospitalCounter: "4 Gas stations".obs),Layout12ItemModel(hospitalCounter: "2 Schools".obs)]);

Rx<List<ViewallreviewsItemModel>> viewallreviewsItemList = Rx([ViewallreviewsItemModel(close:ImageConstant.imgClose.obs,text: "4.9".obs,from: "From".obs,text1: "112".obs,reviewers: "reviewers".obs)]);

Rx<List<PropertydetailsItemModel>> propertydetailsItemList = Rx([PropertydetailsItemModel(wingsTower:ImageConstant.imgShape2.obs,price: " 220".obs,month: "/month".obs,wingsTower1: "Wings Tower".obs,text: "4.2".obs,jakartaIndonesia: "Jakarta, Indonesia".obs,skyDandelions:ImageConstant.imgShape1.obs,price1: " 190".obs,month1: "/month".obs,skyDandelions1: "Sky Dandelions ".obs,text1: "4.9".obs,jakartaIndonesia1: "Jakarta, Indonesia".obs),PropertydetailsItemModel(wingsTower:ImageConstant.imgShape160x144.obs,price: " 220".obs,month: "/month".obs,wingsTower1: "Wings Tower".obs,text: "4.2".obs,jakartaIndonesia: "Jakarta, Indonesia".obs,skyDandelions:ImageConstant.imgShape3.obs,price1: " 220".obs,month1: "/month".obs,skyDandelions1: "Wings Tower".obs,text1: "4.2".obs,jakartaIndonesia1: "Jakarta, Indonesia".obs)]);

 }
