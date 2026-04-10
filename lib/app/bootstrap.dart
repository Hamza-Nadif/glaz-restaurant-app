import 'package:flutter/widgets.dart';
import 'package:get_storage/get_storage.dart';
import 'package:glaz/app/glaz_app.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(const GlazApp());
}
