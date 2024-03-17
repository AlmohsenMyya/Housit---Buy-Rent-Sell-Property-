import '../../../core/app_export.dart';import '../models/product_tour_two_model.dart';/// A controller class for the ProductTourTwoScreen.
///
/// This class manages the state of the ProductTourTwoScreen, including the
/// current productTourTwoModelObj
class ProductTourTwoController extends GetxController {Rx<ProductTourTwoModel> productTourTwoModelObj = ProductTourTwoModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.loginScreen, ); } 
 }
