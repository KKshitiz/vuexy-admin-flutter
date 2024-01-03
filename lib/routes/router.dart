import 'package:auto_route/auto_route.dart';
import 'package:vuexy_flutter/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: HomeRoute.page)
      ];
}
