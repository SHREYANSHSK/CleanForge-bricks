import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{project_name}}/app/app.dart';
import 'package:{{project_name}}/common/resources/storage_resources/local_client.dart';
import 'package:{{project_name}}/common/resources/app_resources/app_map_keys.dart';
import 'package:{{project_name}}/common/resources/storage_resources/localKeys.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await LocalClient.init();
  AppMapKeys.accessToken = await LocalClient.getString(
    key: LocalKeys.accessToken,
  );
  runApp(const App());
}