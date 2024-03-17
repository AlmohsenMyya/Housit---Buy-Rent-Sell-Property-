import '../../../core/app_export.dart';import '../models/user_empty_model.dart';import 'package:flutter/material.dart';/// A controller class for the UserEmptyScreen.
///
/// This class manages the state of the UserEmptyScreen, including the
/// current userEmptyModelObj
class UserEmptyController extends GetxController {TextEditingController lockController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

TextEditingController emailController = TextEditingController();

Rx<UserEmptyModel> userEmptyModelObj = UserEmptyModel().obs;

@override void onClose() { super.onClose(); lockController.dispose(); mobileNumberController.dispose(); emailController.dispose(); } 
 }
