// ignore_for_file: avoid_classes_with_only_static_members, always_specify_types

import 'package:base_dependencies/main.dart';
import 'package:help_app/main.dart';
import 'package:login_app/main.dart';

abstract class CoreModule {
  static final List<Bind> binds = [
    ...LoginAppModule.binds,
    ...HelpAppModule.binds,
  ];

  static final List<ModularRoute> routes = [
    ...LoginAppModule.routes,
    ...HelpAppModule.routes,
  ];
}
