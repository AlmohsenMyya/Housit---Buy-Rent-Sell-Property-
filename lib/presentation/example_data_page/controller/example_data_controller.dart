import '../../../core/app_export.dart';
import '../models/example_data_model.dart';

/// A controller class for the ExampleDataPage.
///
/// This class manages the state of the ExampleDataPage, including the
/// current exampleDataModelObj
class ExampleDataController extends GetxController {
  ExampleDataController(this.exampleDataModelObj);

  Rx<ExampleDataModel> exampleDataModelObj;
}
