import 'package:get/get.dart';
import 'package:prodect/screen/Model/db_model.dart';
import 'package:prodect/util/db_helper.dart';


class LikeController extends GetxController {
  Rxn<List<DbModel>> productList = Rxn();

  Future<void> getProductData() async {
    List<DbModel> l1 = await DbHelper.helper.readData();
    productList.value = l1;
  }
}