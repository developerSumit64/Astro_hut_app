// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:api/agentView/aggentView.dart' as _i3;
import 'package:api/allContacts/all_contactsView.dart' as _i16;
import 'package:api/callerHistoryFromKundli/callerHistoryFromKundli.dart'
    as _i18;
import 'package:api/callerLogs/callerLogsView.dart' as _i4;
import 'package:api/callReceiving/call_receiveView.dart' as _i14;
import 'package:api/editProfile/editProfileView.dart' as _i13;
import 'package:api/firstView/firstViewScreen.dart' as _i2;
import 'package:api/forgetPassworddView/forgetPasswordView.dart' as _i9;
import 'package:api/kundliView/kundliView.dart' as _i17;
import 'package:api/loginOrRegisterSelecterView/loginOrRegisterView.dart'
    as _i7;
import 'package:api/loginView/loginView.dart' as _i6;
import 'package:api/newRegisteratoin/newRegisterationview.dart' as _i15;
import 'package:api/profileVIew/profileView.dart' as _i8;
import 'package:api/profileViewScreen/profileViewScreenView.dart' as _i12;
import 'package:api/showHistory/showHistoryView.dart' as _i19;
import 'package:api/signUpView.dart' as _i5;
import 'package:api/SpecificCallLogDetails/specificCallLogsDetails.dart'
    as _i10;
import 'package:api/updateList/updateListView.dart' as _i11;
import 'package:flutter/material.dart' as _i20;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i21;

class Routes {
  static const firstViewScreen = '/first-view-screen';

  static const agentView = '/agent-view';

  static const callerLogsView = '/caller-logs-view';

  static const singUpView = '/sing-up-view';

  static const loginView = '/login-view';

  static const loginOrRegisterView = '/';

  static const profileView = '/profile-view';

  static const forgetPassword = '/forget-password';

  static const callLogDetailView = '/call-log-detail-view';

  static const updateListAgent = '/update-list-agent';

  static const profileSettings = '/profile-settings';

  static const profileEditApp = '/profile-edit-app';

  static const callReceiveView = '/call-receive-view';

  static const registration = '/Registration';

  static const allContactsView = '/all-contacts-view';

  static const filterDialog = '/filter-dialog';

  static const kundliView = '/kundli-view';

  static const callerHistoryViewKundli = '/caller-history-view-kundli';

  static const showHistoryView = '/show-history-view';

  static const all = <String>{
    firstViewScreen,
    agentView,
    callerLogsView,
    singUpView,
    loginView,
    loginOrRegisterView,
    profileView,
    forgetPassword,
    callLogDetailView,
    updateListAgent,
    profileSettings,
    profileEditApp,
    callReceiveView,
    registration,
    allContactsView,
    filterDialog,
    kundliView,
    callerHistoryViewKundli,
    showHistoryView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.firstViewScreen,
      page: _i2.FirstViewScreen,
    ),
    _i1.RouteDef(
      Routes.agentView,
      page: _i3.AgentView,
    ),
    _i1.RouteDef(
      Routes.callerLogsView,
      page: _i4.CallerLogsView,
    ),
    _i1.RouteDef(
      Routes.singUpView,
      page: _i5.SingUpView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i6.LoginView,
    ),
    _i1.RouteDef(
      Routes.loginOrRegisterView,
      page: _i7.LoginOrRegisterView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i8.ProfileView,
    ),
    _i1.RouteDef(
      Routes.forgetPassword,
      page: _i9.ForgetPassword,
    ),
    _i1.RouteDef(
      Routes.callLogDetailView,
      page: _i10.CallLogDetailView,
    ),
    _i1.RouteDef(
      Routes.updateListAgent,
      page: _i11.UpdateListAgent,
    ),
    _i1.RouteDef(
      Routes.profileSettings,
      page: _i12.ProfileSettings,
    ),
    _i1.RouteDef(
      Routes.profileEditApp,
      page: _i13.ProfileEditApp,
    ),
    _i1.RouteDef(
      Routes.callReceiveView,
      page: _i14.CallReceiveView,
    ),
    _i1.RouteDef(
      Routes.registration,
      page: _i15.Registration,
    ),
    _i1.RouteDef(
      Routes.allContactsView,
      page: _i16.AllContactsView,
    ),
    _i1.RouteDef(
      Routes.filterDialog,
      page: _i11.FilterDialog,
    ),
    _i1.RouteDef(
      Routes.kundliView,
      page: _i17.KundliView,
    ),
    _i1.RouteDef(
      Routes.callerHistoryViewKundli,
      page: _i18.CallerHistoryViewKundli,
    ),
    _i1.RouteDef(
      Routes.showHistoryView,
      page: _i19.ShowHistoryView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.FirstViewScreen: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.FirstViewScreen(),
        settings: data,
      );
    },
    _i3.AgentView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.AgentView(),
        settings: data,
      );
    },
    _i4.CallerLogsView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.CallerLogsView(),
        settings: data,
      );
    },
    _i5.SingUpView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.SingUpView(),
        settings: data,
      );
    },
    _i6.LoginView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.LoginView(),
        settings: data,
      );
    },
    _i7.LoginOrRegisterView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.LoginOrRegisterView(),
        settings: data,
      );
    },
    _i8.ProfileView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.ProfileView(),
        settings: data,
      );
    },
    _i9.ForgetPassword: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.ForgetPassword(),
        settings: data,
      );
    },
    _i10.CallLogDetailView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.CallLogDetailView(),
        settings: data,
      );
    },
    _i11.UpdateListAgent: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.UpdateListAgent(),
        settings: data,
      );
    },
    _i12.ProfileSettings: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.ProfileSettings(),
        settings: data,
      );
    },
    _i13.ProfileEditApp: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.ProfileEditApp(),
        settings: data,
      );
    },
    _i14.CallReceiveView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.CallReceiveView(),
        settings: data,
      );
    },
    _i15.Registration: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.Registration(),
        settings: data,
      );
    },
    _i16.AllContactsView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.AllContactsView(),
        settings: data,
      );
    },
    _i11.FilterDialog: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.FilterDialog(),
        settings: data,
      );
    },
    _i17.KundliView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.KundliView(),
        settings: data,
      );
    },
    _i18.CallerHistoryViewKundli: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => _i18.CallerHistoryViewKundli(),
        settings: data,
      );
    },
    _i19.ShowHistoryView: (data) {
      return _i20.MaterialPageRoute<dynamic>(
        builder: (context) => _i19.ShowHistoryView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i21.NavigationService {
  Future<dynamic> navigateToFirstViewScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.firstViewScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAgentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.agentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCallerLogsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.callerLogsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSingUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.singUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginOrRegisterView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginOrRegisterView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgetPassword([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgetPassword,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCallLogDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.callLogDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToUpdateListAgent([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.updateListAgent,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileSettings([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileSettings,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileEditApp([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileEditApp,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCallReceiveView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.callReceiveView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegistration([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registration,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAllContactsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.allContactsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFilterDialog([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.filterDialog,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToKundliView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.kundliView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCallerHistoryViewKundli([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.callerHistoryViewKundli,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToShowHistoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.showHistoryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFirstViewScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.firstViewScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAgentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.agentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCallerLogsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.callerLogsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSingUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.singUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginOrRegisterView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginOrRegisterView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgetPassword([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.forgetPassword,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCallLogDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.callLogDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithUpdateListAgent([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.updateListAgent,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileSettings([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileSettings,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileEditApp([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileEditApp,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCallReceiveView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.callReceiveView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegistration([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registration,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAllContactsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.allContactsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFilterDialog([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.filterDialog,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithKundliView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.kundliView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCallerHistoryViewKundli([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.callerHistoryViewKundli,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithShowHistoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.showHistoryView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
