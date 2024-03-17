import 'package:almohsen_s_application12/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_application12/core/utils/validation_functions.dart';
import 'package:almohsen_s_application12/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';
import 'controller/payment_paypal_controller.dart';
import 'models/payment_paypal_model.dart';

class PaymentPaypalPage extends StatelessWidget {
  PaymentPaypalPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  PaymentPaypalController controller =
      Get.put(PaymentPaypalController(PaymentPaypalModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: _buildScrollView(),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              children: [
                CustomTextFormField(
                  controller: controller.lockController,
                  hintText: "lbl_jonathan".tr,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(50.h),
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLockBlueGray80001,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 70.v,
                  ),
                ),
                SizedBox(height: 15.v),
                CustomTextFormField(
                  controller: controller.emailController,
                  hintText: "lbl_user_email_com".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgDownload,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 70.v,
                  ),
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.v),
                CustomImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: 1.v,
                  width: 100.h,
                ),
                SizedBox(height: 10.v),
                CustomElevatedButton(
                  text: "lbl_next".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
