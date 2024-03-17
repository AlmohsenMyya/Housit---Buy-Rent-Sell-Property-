import '../../../core/app_export.dart';import 'messageslist_item_model.dart';/// This class defines the variables used in the [messages_list_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesListModel {Rx<List<MessageslistItemModel>> messageslistItemList = Rx([MessageslistItemModel(milano:ImageConstant.imgShape27.obs,milano1: "Milano".obs,temporincididuntutlaboreetdolo: "tempor incididunt ut labore et dolore".obs,text: "10.45".obs,itemCounter: "1".obs),MessageslistItemModel(milano1: "Emmet Perry".obs,temporincididuntutlaboreetdolo: "Excepteur sint occaecat cupidatat non".obs),MessageslistItemModel(milano1: "Walter Lindsey".obs,temporincididuntutlaboreetdolo: "Quis nostrud exercitation ullamco".obs)]);

 }
