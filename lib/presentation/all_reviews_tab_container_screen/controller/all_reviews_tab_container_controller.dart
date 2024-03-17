import '../../../core/app_export.dart';import '../models/all_reviews_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the AllReviewsTabContainerScreen.
///
/// This class manages the state of the AllReviewsTabContainerScreen, including the
/// current allReviewsTabContainerModelObj
class AllReviewsTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<AllReviewsTabContainerModel> allReviewsTabContainerModelObj = AllReviewsTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 5));

 }
