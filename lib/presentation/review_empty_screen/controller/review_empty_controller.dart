import '../../../core/app_export.dart';import '../models/review_empty_model.dart';import 'package:flutter/material.dart';/// A controller class for the ReviewEmptyScreen.
///
/// This class manages the state of the ReviewEmptyScreen, including the
/// current reviewEmptyModelObj
class ReviewEmptyController extends GetxController {TextEditingController formDateEmptyController = TextEditingController();

TextEditingController formDateEmptyController1 = TextEditingController();

TextEditingController televisionController = TextEditingController();

Rx<ReviewEmptyModel> reviewEmptyModelObj = ReviewEmptyModel().obs;

@override void onClose() { super.onClose(); formDateEmptyController.dispose(); formDateEmptyController1.dispose(); televisionController.dispose(); } 
 }
