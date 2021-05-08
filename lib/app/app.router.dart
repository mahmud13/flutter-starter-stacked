// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/views/home/home_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/signup/signup_view.dart';
import '../ui/views/startup/startup_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String loginView = '/login-view';
  static const String signupView = '/signup-view';
  static const String homeView = '/home-view';
  static const all = <String>{
    startUpView,
    loginView,
    signupView,
    homeView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.signupView, page: SignupView),
    RouteDef(Routes.homeView, page: HomeView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartUpView(),
        settings: data,
      );
    },
    LoginView: (data) {
      var args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    SignupView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}
