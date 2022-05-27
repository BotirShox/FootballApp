import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/swipe_pages/home/main_page.dart';
import 'package:untitled1/swipe_pages/leagues/league_detail.dart';
import 'package:untitled1/swipe_pages/leagues/scroll.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  LeagueDetail(),
    );
  }

}