import 'widgets/userreviewslist_item_widget.dart';import 'models/userreviewslist_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/reviews_controller.dart';import 'models/reviews_model.dart';
// ignore_for_file: must_be_immutable
class ReviewsPage extends StatelessWidget {ReviewsPage({Key? key}) : super(key: key);

ReviewsController controller = Get.put(ReviewsController(ReviewsModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 36.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_user_reviews".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), _buildUserReviewsList()]))]))))); } 
/// Section Widget
Widget _buildUserReviewsList() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 10.v);}, itemCount: controller.reviewsModelObj.value.userreviewslistItemList.value.length, itemBuilder: (context, index) {UserreviewslistItemModel model = controller.reviewsModelObj.value.userreviewslistItemList.value[index]; return UserreviewslistItemWidget(model);})); } 
 }
