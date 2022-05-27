import 'package:get/get.dart';
import 'package:untitled1/data/repository/repos.dart';

class Control extends GetxController{
  final Repo repo;
  Control({required this.repo});

  List<dynamic> _list1 = [];
  List<dynamic> get list1 => _list1;

  Future<void> getlist1() async{
   Response response = await repo.getRepo();
   if (response.statusCode == 200) {
     _list1 = [];
  //   _list1.addAll();
     update();
   }else{

   }
  }

}