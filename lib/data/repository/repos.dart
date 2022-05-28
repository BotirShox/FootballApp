
import 'package:get/get.dart';
import 'package:untitled1/data/api/client.dart';

import '../../utils/constants.dart';

class Repo extends GetxService{
  final ApiClient apiClient;
  Repo({required this.apiClient});
  Future<Response> getRepo() async{

    return await apiClient.getData(AppConst.URL);

  }
}