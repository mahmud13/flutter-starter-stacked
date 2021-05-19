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
import '../ui/views/report/detail/submission_report_detail_view.dart';
import '../ui/views/report/summary/submission_report_view.dart';
import '../ui/views/signup/signup_view.dart';
import '../ui/views/startup/startup_view.dart';
import '../ui/views/suggestions/create/suggestion_create_view.dart';
import '../ui/views/suggestions/menu/suggestion_menu_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String loginView = '/login-view';
  static const String signupView = '/signup-view';
  static const String homeView = '/home-view';
  static const String suggestionMenuView = '/suggestion-menu-view';
  static const String suggestionCreateView = '/suggestion-create-view';
  static const String submissionReportView = '/submission-report-view';
  static const String submissionReportDetailView =
      '/submission-report-detail-view';
  static const all = <String>{
    startUpView,
    loginView,
    signupView,
    homeView,
    suggestionMenuView,
    suggestionCreateView,
    submissionReportView,
    submissionReportDetailView,
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
    RouteDef(Routes.suggestionMenuView, page: SuggestionMenuView),
    RouteDef(Routes.suggestionCreateView, page: SuggestionCreateView),
    RouteDef(Routes.submissionReportView, page: SubmissionReportView),
    RouteDef(Routes.submissionReportDetailView,
        page: SubmissionReportDetailView),
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
      var args = data.getArgs<SignupViewArguments>(
        orElse: () => SignupViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignupView(key: args.key),
        settings: data,
      );
    },
    HomeView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    SuggestionMenuView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SuggestionMenuView(),
        settings: data,
      );
    },
    SuggestionCreateView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const SuggestionCreateView(),
        settings: data,
      );
    },
    SubmissionReportView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SubmissionReportView(),
        settings: data,
      );
    },
    SubmissionReportDetailView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SubmissionReportDetailView(),
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

/// SignupView arguments holder class
class SignupViewArguments {
  final Key? key;
  SignupViewArguments({this.key});
}
