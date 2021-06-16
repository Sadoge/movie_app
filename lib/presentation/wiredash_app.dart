import 'package:flutter/material.dart';
import 'package:movie_app/presentation/themes/theme_color.dart';
import 'package:wiredash/wiredash.dart';

class WiredashApp extends StatelessWidget {
  final GlobalKey navigatorKey;
  final String languageCode;
  final Widget child;

  const WiredashApp({
    Key key,
    @required this.navigatorKey,
    @required this.child,
    @required this.languageCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wiredash(
      projectId: 'movie-app-5rrx5oa',
      secret: 'jdnw1xwivzenb8g5jsi96jwv2f8u13bkzbens55cyvc9y6ap',
      navigatorKey: navigatorKey,
      child: child,
      options: WiredashOptionsData(
        showDebugFloatingEntryPoint: false,
        locale: Locale.fromSubtags(languageCode: languageCode),
      ),
      theme: WiredashThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColor.royalBlue,
        secondaryColor: AppColor.violet,
        secondaryBackgroundColor: AppColor.vulcan,
        dividerColor: AppColor.vulcan,
      ),
    );
  }
}
