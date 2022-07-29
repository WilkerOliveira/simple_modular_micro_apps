// ignore_for_file: avoid_classes_with_only_static_members

import 'package:base_commons/main.dart';
import 'package:base_dependencies/main.dart';
import 'package:login_app/app/modules/features/login/presentation/screens/login_screen.dart';
import 'package:modular_interfaces/src/route/modular_arguments.dart';

class LoginModule {
  static List<Bind<Object>> getBinds() => <Bind<Object>>[
        ..._getDatabase(),
        ..._getDatasources(),
        ..._getRepositories(),
        ..._getUsecases(),
        ..._getControllers(),
      ];

  static List<Bind<Object>> _getDatabase() => <Bind<Object>>[];

  static List<Bind<Object>> _getDatasources() => <Bind<Object>>[];

  static List<Bind<Object>> _getRepositories() => <Bind<Object>>[];

  static List<Bind<Object>> _getUsecases() => <Bind<Object>>[];

  static List<Bind<Object>> _getControllers() => <Bind<Object>>[];

  static List<ModularRoute> getRoutes() => <ModularRoute>[
        ChildRoute<dynamic>(loginScreen,
            child: (_, ModularArguments args) => const LoginScreen()),
      ];
}
