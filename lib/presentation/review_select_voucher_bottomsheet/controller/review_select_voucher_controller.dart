import '../../../core/app_export.dart';import '../models/review_select_voucher_model.dart';import 'package:flutter/material.dart';/// A controller class for the ReviewSelectVoucherBottomsheet.
///
/// This class manages the state of the ReviewSelectVoucherBottomsheet, including the
/// current reviewSelectVoucherModelObj
class ReviewSelectVoucherController extends GetxController {TextEditingController televisionController = TextEditingController();

Rx<ReviewSelectVoucherModel> reviewSelectVoucherModelObj = ReviewSelectVoucherModel().obs;

@override void onClose() { super.onClose(); televisionController.dispose(); } 
 }
