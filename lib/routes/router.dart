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
            AutoRoute(
              page: AcademyDashboardRoute.page,
              path: "dashboards/academy",
            ),
            AutoRoute(
              page: AnalyticsDashboardRoute.page,
              path: "dashboards/analytics",
            ),
            AutoRoute(
              page: CrmDashboardRoute.page,
              path: "dashboards/crm",
            ),
            AutoRoute(
              page: EcommerceDashboardRoute.page,
              path: "dashboards/ecommerce",
            ),
            AutoRoute(
              page: LogisticsDashboardRoute.page,
              path: "dashboards/logistics",
            ),
          ],
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
