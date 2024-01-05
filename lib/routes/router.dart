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
          children: const [],
        ),
        AutoRoute(
          page: BlankRoute.page,
          path: "/auth",
          children: [
            AutoRoute(page: LoginRoute.page, path: "login", initial: true),
            AutoRoute(page: RegistrationRoute.page, path: "register"),
            AutoRoute(page: ForgotPasswordRoute.page, path: "forgot-password"),
            AutoRoute(page: ResetPasswordRoute.page, path: "reset-password"),
            AutoRoute(page: TwoStepsRoute.page, path: "two-steps"),
          ],
        )
      ];
}
