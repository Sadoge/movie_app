//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/presentation/movie_app.dart';
import 'package:pedantic/pedantic.dart';
import 'package:movie_app/di/get_it.dart' as getIt;
import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  unawaited(getIt.init());
  runApp(
    DevicePreview(
      enabled: false, //!kReleaseMode,
      builder: (context) => MovieApp(),
    ),
  );
}
