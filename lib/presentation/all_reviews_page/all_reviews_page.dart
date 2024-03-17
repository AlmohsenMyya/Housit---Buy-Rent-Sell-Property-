import 'widgets/allreviews_item_widget.dart';import 'models/allreviews_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_application12/core/app_export.dart';import 'controller/all_reviews_controller.dart';import 'models/all_reviews_model.dart';
// ignore_for_file: must_be_immutable
class AllReviewsPage extends StatelessWidget {AllReviewsPage({Key? key}) : super(key: key);

AllReviewsController controller = Get.put(AllReviewsController(AllReviewsModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 17.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_user_reviews".tr, style: theme.textTheme.titleMedium), SizedBox(height: 15.v), _buildAllReviews()]))]))))); } 
/// Section Widget
Widget _buildAllReviews() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 19.v);}, itemCount: controller.allReviewsModelObj.value.allreviewsItemList.value.length, itemBuilder: (context, index) {AllreviewsItemModel model = controller.allReviewsModelObj.value.allreviewsItemList.value[index]; return AllreviewsItemWidget(model);})); } 
 }
