// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:vuexy_flutter/presentation/auth/pages/forgot_password_page.dart'
    as _i6;
import 'package:vuexy_flutter/presentation/auth/pages/login_page.dart' as _i8;
import 'package:vuexy_flutter/presentation/auth/pages/registration_page.dart'
    as _i10;
import 'package:vuexy_flutter/presentation/auth/pages/reset_password_page.dart'
    as _i11;
import 'package:vuexy_flutter/presentation/auth/pages/two_steps_page.dart'
    as _i12;
import 'package:vuexy_flutter/presentation/auth/pages/verify_email_page.dart'
    as _i13;
import 'package:vuexy_flutter/presentation/core/pages/blank_page.dart' as _i3;
import 'package:vuexy_flutter/presentation/dashboards/pages/academy_dashboard_page.dart'
    deferred as _i1;
import 'package:vuexy_flutter/presentation/dashboards/pages/analytics_dashboard_page.dart'
    deferred as _i2;
import 'package:vuexy_flutter/presentation/dashboards/pages/crm_dashboard_page.dart'
    deferred as _i4;
import 'package:vuexy_flutter/presentation/dashboards/pages/ecommerce_dashboard_page.dart'
    deferred as _i5;
import 'package:vuexy_flutter/presentation/dashboards/pages/logistics_dashboard_page.dart'
    deferred as _i9;
import 'package:vuexy_flutter/presentation/home/pages/home_page.dart' as _i7;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    AcademyDashboardRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.AcademyDashboardPage(),
        ),
      );
    },
    AnalyticsDashboardRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.AnalyticsDashboardPage(),
        ),
      );
    },
    BlankRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BlankPage(),
      );
    },
    CrmDashboardRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.CrmDashboardPage(),
        ),
      );
    },
    EcommerceDashboardRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.EcommerceDashboardPage(),
        ),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ForgotPasswordPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginPage(),
      );
    },
    LogisticsDashboardRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i9.loadLibrary,
          () => _i9.LogisticsDashboardPage(),
        ),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.RegistrationPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ResetPasswordPage(),
      );
    },
    TwoStepsRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.TwoStepsPage(),
      );
    },
    VerifyEmailRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.VerifyEmailPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AcademyDashboardPage]
class AcademyDashboardRoute extends _i14.PageRouteInfo<void> {
  const AcademyDashboardRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AcademyDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AcademyDashboardRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AnalyticsDashboardPage]
class AnalyticsDashboardRoute extends _i14.PageRouteInfo<void> {
  const AnalyticsDashboardRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AnalyticsDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnalyticsDashboardRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BlankPage]
class BlankRoute extends _i14.PageRouteInfo<void> {
  const BlankRoute({List<_i14.PageRouteInfo>? children})
      : super(
          BlankRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlankRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CrmDashboardPage]
class CrmDashboardRoute extends _i14.PageRouteInfo<void> {
  const CrmDashboardRoute({List<_i14.PageRouteInfo>? children})
      : super(
          CrmDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'CrmDashboardRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EcommerceDashboardPage]
class EcommerceDashboardRoute extends _i14.PageRouteInfo<void> {
  const EcommerceDashboardRoute({List<_i14.PageRouteInfo>? children})
      : super(
          EcommerceDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'EcommerceDashboardRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ForgotPasswordPage]
class ForgotPasswordRoute extends _i14.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LogisticsDashboardPage]
class LogisticsDashboardRoute extends _i14.PageRouteInfo<void> {
  const LogisticsDashboardRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LogisticsDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'LogisticsDashboardRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.RegistrationPage]
class RegistrationRoute extends _i14.PageRouteInfo<void> {
  const RegistrationRoute({List<_i14.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ResetPasswordPage]
class ResetPasswordRoute extends _i14.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i12.TwoStepsPage]
class TwoStepsRoute extends _i14.PageRouteInfo<void> {
  const TwoStepsRoute({List<_i14.PageRouteInfo>? children})
      : super(
          TwoStepsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TwoStepsRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.VerifyEmailPage]
class VerifyEmailRoute extends _i14.PageRouteInfo<void> {
  const VerifyEmailRoute({List<_i14.PageRouteInfo>? children})
      : super(
          VerifyEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyEmailRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
