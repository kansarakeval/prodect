import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:prodect/screen/Model/db_model.dart';
import 'package:prodect/util/app_routes.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox<DbModel>('productBox');
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: app_routes,
  ));
}