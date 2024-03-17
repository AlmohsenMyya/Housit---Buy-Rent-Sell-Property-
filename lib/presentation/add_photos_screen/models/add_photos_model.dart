import '../../../core/app_export.dart';import 'gallery_item_model.dart';/// This class defines the variables used in the [add_photos_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPhotosModel {Rx<List<GalleryItemModel>> galleryItemList = Rx([GalleryItemModel(shape:ImageConstant.imgShape161x159.obs,iconClose:ImageConstant.imgIconCloseWhiteA700.obs),GalleryItemModel(shape:ImageConstant.imgShape21.obs,iconClose:ImageConstant.imgIconCloseWhiteA700.obs),GalleryItemModel(shape:ImageConstant.imgShape22.obs,iconClose:ImageConstant.imgIconCloseWhiteA700.obs)]);

 }
