
import 'package:get/get.dart';
import 'package:untitled1/utils/constants.dart';

class ApiClient extends GetConnect implements GetxService{
  late String token;
  final String appUrl;
  late Map<String, String> _mainHeader;
  ApiClient({required this.appUrl}){
    baseUrl = appUrl;
    timeout = Duration(seconds: 20);
    token = AppConst.TOKEN;
    _mainHeader = {'Content-type':'application/json; charset = UTF-8', 'Authorization':'Bearer $token',
    };
  }
  Future<Response> getData(String uri,) async {
    try {
      Response response = await get(uri);
      return response;
    }catch(e){

      return Response(statusCode: 1, statusText: e.toString());

    }
  }
}