import '../../../core/app_export.dart';import '../models/form_empty_model.dart';import 'package:flutter/material.dart';/// A controller class for the FormEmptyScreen.
///
/// This class manages the state of the FormEmptyScreen, including the
/// current formEmptyModelObj
class FormEmptyController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<FormEmptyModel> formEmptyModelObj = FormEmptyModel().obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
@override void onReady() { Get.toNamed(AppRoutes.registerFormEmptyScreen, ); } 
 }
