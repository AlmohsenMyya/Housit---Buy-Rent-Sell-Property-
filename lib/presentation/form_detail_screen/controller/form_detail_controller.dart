import '../../../core/app_export.dart';import '../models/form_detail_model.dart';import 'package:flutter/material.dart';/// A controller class for the FormDetailScreen.
///
/// This class manages the state of the FormDetailScreen, including the
/// current formDetailModelObj
class FormDetailController extends GetxController {TextEditingController formPasswordController = TextEditingController();

Rx<FormDetailModel> formDetailModelObj = FormDetailModel().obs;

@override void onClose() { super.onClose(); formPasswordController.dispose(); } 
 }
