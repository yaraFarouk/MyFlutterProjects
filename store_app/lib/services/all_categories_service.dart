import 'package:store_app/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await API().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
