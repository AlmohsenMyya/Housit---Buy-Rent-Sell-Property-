import '../../../core/app_export.dart';import '../models/featured_estates_model.dart';import 'package:flutter/material.dart';/// A controller class for the FeaturedEstatesScreen.
///
/// This class manages the state of the FeaturedEstatesScreen, including the
/// current featuredEstatesModelObj
class FeaturedEstatesController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<FeaturedEstatesModel> featuredEstatesModelObj = FeaturedEstatesModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
@override void onReady() { Get.toNamed(AppRoutes.realEstatesListByCategoryScreen, ); } 
 }
