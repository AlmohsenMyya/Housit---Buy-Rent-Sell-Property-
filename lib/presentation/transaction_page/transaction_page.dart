import 'widgets/transaction_item_widget.dart';
import 'models/transaction_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';
import 'controller/transaction_controller.dart';
import 'models/transaction_model.dart';

class TransactionPage extends StatelessWidget {
  TransactionPage({Key? key})
      : super(
          key: key,
        );

  TransactionController controller =
      Get.put(TransactionController(TransactionModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.v,
                            bottom: 7.v,
                          ),
                          child: Text(
                            "lbl_2".tr,
                            style: CustomTextStyles.titleMediumBold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 9.v,
                            bottom: 8.v,
                          ),
                          child: Text(
                            "lbl_transactions".tr,
                            style: CustomTextStyles.titleMediumMedium,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 93.h,
                          padding: EdgeInsets.symmetric(vertical: 8.v),
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 24.v,
                                width: 36.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.h,
                                  vertical: 6.v,
                                ),
                                decoration: AppDecoration.white.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder12,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGridBlueGray80001,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  alignment: Alignment.center,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant
                                    .imgIconHorizontalOnprimarycontainer,
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 6.v),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.v),
                    _buildTransaction(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTransaction() {
    return SizedBox(
      height: 231.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 7.h,
            );
          },
          itemCount: controller
              .transactionModelObj.value.transactionItemList.value.length,
          itemBuilder: (context, index) {
            TransactionItemModel model = controller
                .transactionModelObj.value.transactionItemList.value[index];
            return TransactionItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
