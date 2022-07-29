// ignore_for_file: avoid_classes_with_only_static_members

import 'package:base_dependencies/main.dart';
import 'package:help_app/app/modules/features/help/help_module.dart';

class HelpAppModule {
  static final List<Bind<Object>> binds = <Bind<Object>>[
    ...HelpModule.getBinds(),
  ];

  static final List<ModularRoute> routes = <ModularRoute>[
    ...HelpModule.getRoutes(),
  ];
}
