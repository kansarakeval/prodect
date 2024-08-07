import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../../util/api_helper.dart';
import '../model/home_model.dart';

class HomeController extends GetxController {
  Rxn<HomeModel> model = Rxn<HomeModel>();
  var filteredProducts = <Product>[].obs;
  var isLoading = true.obs;

  Future<void> getApiData() async {
    try {
      isLoading(true);
      HomeModel? m1 = await ApiHelper.helper.getData();
      if (m1 != null) {
        model.value = m1;
        filteredProducts.assignAll(m1.products ?? []);
      }
    } finally {
      isLoading(false);
    }
  }

  void filterProducts(String query) {
    if (query.isEmpty) {
      filteredProducts.assignAll(model.value?.products ?? []);
    } else {
      var filteredList = model.value?.products?.where((product) {
        return product.title!.toLowerCase().contains(query.toLowerCase());
      }).toList();
      filteredProducts.assignAll(filteredList ?? []);
    }
  }
}