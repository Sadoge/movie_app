import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/presentation/movie_app.dart';
import 'package:pedantic/pedantic.dart';
import 'package:movie_app/di/get_it.dart' as getIt;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  unawaited(getIt.init());
  runApp(MovieApp());
}
