import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'data/services/localization_service/localization_service.dart';

import 'routes/app_pages.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: GetPlatform.isWeb ? AppRoutes.dashboard : AppRoutes.splashscreen,
      getPages: AppPages.pages,
      initialBinding: RootBinding(),
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
      builder: (BuildContext context, Widget? widget) {
        ScreenUtil.init(context, designSize: const Size(375, 812));
        return MediaQuery(
          data: const MediaQueryData(textScaleFactor: 1.0),
          child: widget ?? Container(),
        );
      },
    );
  }
}

class RootBinding implements Bindings {
  @override
  void dependencies() {}
}
