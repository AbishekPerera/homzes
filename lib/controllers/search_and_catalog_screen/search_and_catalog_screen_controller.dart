import 'package:get/get.dart';
import 'package:homzes/models/property.dart';
import 'package:homzes/services/firestore_service.dart';

class SearchAndCatalogScreenController extends GetxController {
  RxList<Property> properties = <Property>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getDataFromFirestore();
  }

  void getDataFromFirestore() {
    final FirestoreService _firestoreService = FirestoreService();
    isLoading.value = true;

    _firestoreService.getProperties().listen(
      (List<Property> data) {
        print("Fetched ${data.length} properties");
        properties.assignAll(data);
        isLoading.value = false;
      },
      onError: (error) {
        print("Error fetching properties: $error");
        isLoading.value = false;
      },
    );
  }
}
