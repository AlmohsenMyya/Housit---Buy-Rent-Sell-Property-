import '../../../core/app_export.dart';import '../models/add_review_empty_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddReviewEmptyScreen.
///
/// This class manages the state of the AddReviewEmptyScreen, including the
/// current addReviewEmptyModelObj
class AddReviewEmptyController extends GetxController {TextEditingController formTextareaController = TextEditingController();

Rx<AddReviewEmptyModel> addReviewEmptyModelObj = AddReviewEmptyModel().obs;

@override void onClose() { super.onClose(); formTextareaController.dispose(); } 
 }
