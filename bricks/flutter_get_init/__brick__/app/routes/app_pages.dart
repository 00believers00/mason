import 'package:get/get.dart';

import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
 part 'app_routes.dart';

abstract class AppPages{
  static final pages = [
    GetPage(
        name: AppRoutes.splashscreen,
        page: () => const SplashScreenView(),
        binding: SplashScreenBinding()
    ),
    GetPage(
        name: AppRoutes.dashboard,
        page: ()=> const DashboardView(),
        binding: DashboardBinding()
    ),
  ];
}