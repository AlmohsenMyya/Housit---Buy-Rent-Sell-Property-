import '../../../core/app_export.dart';import '../models/review_fill_model.dart';import 'package:flutter/material.dart';/// A controller class for the ReviewFillScreen.
///
/// This class manages the state of the ReviewFillScreen, including the
/// current reviewFillModelObj
class ReviewFillController extends GetxController {TextEditingController startDateEditTextController = TextEditingController();

TextEditingController endDateEditTextController = TextEditingController();

TextEditingController televisionEditTextController = TextEditingController();

Rx<ReviewFillModel> reviewFillModelObj = ReviewFillModel().obs;

@override void onClose() { super.onClose(); startDateEditTextController.dispose(); endDateEditTextController.dispose(); televisionEditTextController.dispose(); } 
 }
