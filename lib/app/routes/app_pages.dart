import 'package:get/get.dart';
import '../modules/contact_me/bindings/contact_me_binding.dart';
import '../modules/contact_me/views/contact_me_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';

part 'app_routes.dart';


class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOARD;

  static final routes = [
    GetPage(
        name: _Paths.DASHBOARD,
        page: () => DashboardView(),
        binding: DashboardBinding()),
    GetPage(
        name: _Paths.CONTACT_ME,
        page: () => ContactMeView(),
        binding: ContactMeBinding()),
  ];
}
