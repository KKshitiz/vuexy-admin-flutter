// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:vuexy_flutter/presentation/auth/pages/forgot_password_page.dart'
    as _i1;
import 'package:vuexy_flutter/presentation/auth/pages/login_page.dart' as _i3;
import 'package:vuexy_flutter/presentation/auth/pages/registration_page.dart'
    as _i4;
import 'package:vuexy_flutter/presentation/auth/pages/reset_password_page.dart'
    as _i5;
import 'package:vuexy_flutter/presentation/auth/pages/two_steps_page.dart'
    as _i6;
import 'package:vuexy_flutter/presentation/auth/pages/verify_email_page.dart'
    as _i7;
import 'package:vuexy_flutter/presentation/home/pages/home_page.dart' as _i2;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    ForgotPasswordRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ForgotPasswordPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RegistrationPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ResetPasswordPage(),
      );
    },
    TwoStepsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.TwoStepsPage(),
      );
    },
    VerifyEmailRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.VerifyEmailPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ForgotPasswordPage]
class ForgotPasswordRoute extends _i8.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RegistrationPage]
class RegistrationRoute extends _i8.PageRouteInfo<void> {
  const RegistrationRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ResetPasswordPage]
class ResetPasswordRoute extends _i8.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.TwoStepsPage]
class TwoStepsRoute extends _i8.PageRouteInfo<void> {
  const TwoStepsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          TwoStepsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TwoStepsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.VerifyEmailPage]
class VerifyEmailRoute extends _i8.PageRouteInfo<void> {
  const VerifyEmailRoute({List<_i8.PageRouteInfo>? children})
      : super(
          VerifyEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyEmailRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
