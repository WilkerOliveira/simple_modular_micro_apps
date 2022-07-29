// ignore_for_file: avoid_classes_with_only_static_members

import 'package:base_dependencies/main.dart';
import 'package:login_app/app/modules/features/login/login_module.dart';

class LoginAppModule {
  static final List<Bind<Object>> binds = <Bind<Object>>[
    ...LoginModule.getBinds(),
  ];

  static final List<ModularRoute> routes = <ModularRoute>[
    ...LoginModule.getRoutes(),
  ];
}
