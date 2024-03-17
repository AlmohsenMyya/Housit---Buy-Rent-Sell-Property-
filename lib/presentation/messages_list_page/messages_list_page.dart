import 'widgets/messageslist_item_widget.dart';
import 'models/messageslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application12/core/app_export.dart';
import 'controller/messages_list_controller.dart';
import 'models/messages_list_model.dart';

class MessagesListPage extends StatelessWidget {
  MessagesListPage({Key? key})
      : super(
          key: key,
        );

  MessagesListController controller =
      Get.put(MessagesListController(MessagesListModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 37.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_all_chats".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 16.v),
                    _buildMessagesList(),
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
  Widget _buildMessagesList() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 10.v,
          );
        },
        itemCount: controller
            .messagesListModelObj.value.messageslistItemList.value.length,
        itemBuilder: (context, index) {
          MessageslistItemModel model = controller
              .messagesListModelObj.value.messageslistItemList.value[index];
          return MessageslistItemWidget(
            model,
          );
        },
      ),
    );
  }
}
