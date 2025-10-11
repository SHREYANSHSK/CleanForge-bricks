import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/app.dart';
import 'package:my_app/common/resources/storage_resources/local_client.dart';
import 'package:my_app/common/resources/app_resources/app_map_keys.dart';
import 'package:my_app/common/resources/storage_resources/localKeys.dart';
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