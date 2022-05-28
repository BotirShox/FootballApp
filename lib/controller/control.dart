import 'package:get/get.dart';
import 'package:untitled1/data/repository/repos.dart';
import 'package:untitled1/models/product.dart';

class Control extends GetxController{
  final Repo repo;
  Control({required this.repo});

  List<Products> _list1 = [];
  List<Products> get ListA => _list1;

  bool _loIc = false;
  bool get loIc => _loIc;

  Future<void> getListA() async{
   Response response = await repo.getRepo();
   if (response.statusCode == 200) {
     _list1 = [];
    _list1.addAll(Product.fromJson(response.body).products);
    print(_list1);
     _loIc = true;
     update();
   }else{

   }
  }

}