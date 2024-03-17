import '../../../core/app_export.dart';import '../models/register_form_empty_model.dart';import 'package:flutter/material.dart';/// A controller class for the RegisterFormEmptyScreen.
///
/// This class manages the state of the RegisterFormEmptyScreen, including the
/// current registerFormEmptyModelObj
class RegisterFormEmptyController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<RegisterFormEmptyModel> registerFormEmptyModelObj = RegisterFormEmptyModel().obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); emailController.dispose(); passwordController.dispose(); } 
@override void onReady() { Get.toNamed(AppRoutes.loginScreen, ); } 
 }
