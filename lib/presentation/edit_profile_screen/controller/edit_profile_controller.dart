import '../../../core/app_export.dart';import '../models/edit_profile_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {TextEditingController lockEditTextController = TextEditingController();

TextEditingController settingsEditTextController = TextEditingController();

TextEditingController emailEditTextController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

@override void onClose() { super.onClose(); lockEditTextController.dispose(); settingsEditTextController.dispose(); emailEditTextController.dispose(); } 
 }
