import '../../../core/app_export.dart';import '../models/add_review_fill_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddReviewFillScreen.
///
/// This class manages the state of the AddReviewFillScreen, including the
/// current addReviewFillModelObj
class AddReviewFillController extends GetxController {TextEditingController formTextareaController = TextEditingController();

Rx<AddReviewFillModel> addReviewFillModelObj = AddReviewFillModel().obs;

@override void onClose() { super.onClose(); formTextareaController.dispose(); } 
 }
