import 'package:auto_route/auto_route.dart';
import 'package:vuexy_flutter/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          path: "/",
          page: HomeRoute.page,
          children: [
            AutoRoute(page: LoginRoute.page),
            AutoRoute(page: RegistrationRoute.page),
            AutoRoute(page: ForgotPasswordRoute.page),
            AutoRoute(page: ResetPasswordRoute.page),
            AutoRoute(page: TwoStepsRoute.page),
          ],
        )
      ];
}
