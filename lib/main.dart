import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/control.dart';
import 'package:untitled1/models/product.dart';
import 'package:untitled1/swipe_pages/home/main_page.dart';
import 'help/dependency.dart' as dep;

Future<void> main() async{
WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<Control>().getListA();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MainPage(),
    );
  }

}