import '../../../core/app_export.dart';import '../models/edit_form_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditFormScreen.
///
/// This class manages the state of the EditFormScreen, including the
/// current editFormModelObj
class EditFormController extends GetxController {TextEditingController formPasswordController = TextEditingController();

Rx<EditFormModel> editFormModelObj = EditFormModel().obs;

@override void onClose() { super.onClose(); formPasswordController.dispose(); } 
 }
