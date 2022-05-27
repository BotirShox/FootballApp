import 'package:get/get.dart';
import 'package:untitled1/controller/control.dart';
import 'package:untitled1/data/repository/repos.dart';

import '../data/api/client.dart';

Future<void> init()async{

  Get.lazyPut(() => ApiClient(appUrl : "https//www.google.com"));

  Get.lazyPut(() => Repo(apiClient: Get.find()));

  Get.lazyPut(() => Control(repo: Get.find()));
}