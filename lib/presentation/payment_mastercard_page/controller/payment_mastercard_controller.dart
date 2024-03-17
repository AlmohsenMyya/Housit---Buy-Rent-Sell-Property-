import '../../../core/app_export.dart';import '../models/payment_mastercard_model.dart';import 'package:flutter/material.dart';/// A controller class for the PaymentMastercardPage.
///
/// This class manages the state of the PaymentMastercardPage, including the
/// current paymentMastercardModelObj
class PaymentMastercardController extends GetxController {PaymentMastercardController(this.paymentMastercardModelObj);

TextEditingController lockController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<PaymentMastercardModel> paymentMastercardModelObj;

@override void onClose() { super.onClose(); lockController.dispose(); cvvController.dispose(); } 
 }
