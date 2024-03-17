import '../../../core/app_export.dart';import '../models/product_tour_three_model.dart';/// A controller class for the ProductTourThreeScreen.
///
/// This class manages the state of the ProductTourThreeScreen, including the
/// current productTourThreeModelObj
class ProductTourThreeController extends GetxController {Rx<ProductTourThreeModel> productTourThreeModelObj = ProductTourThreeModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.loginScreen, ); } 
 }
