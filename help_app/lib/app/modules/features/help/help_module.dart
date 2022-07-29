// ignore_for_file: avoid_classes_with_only_static_members

import 'package:base_commons/main.dart';
import 'package:base_dependencies/main.dart';
import 'package:help_app/app/modules/features/help/data/datasources/help_datasource.dart';
import 'package:help_app/app/modules/features/help/data/repositories/help_repository_impl.dart';
import 'package:help_app/app/modules/features/help/domain/repositories/help_repository.dart';
import 'package:help_app/app/modules/features/help/domain/usecases/help_usecase.dart';
import 'package:help_app/app/modules/features/help/presentation/controllers/help_controller.dart';
import 'package:help_app/app/modules/features/help/presentation/screens/help_screen.dart';
import 'package:modular_interfaces/src/di/injector.dart';
import 'package:modular_interfaces/src/route/modular_arguments.dart';

class HelpModule {
  static List<Bind<Object>> getBinds() => <Bind<Object>>[
        ..._getDatabase(),
        ..._getDatasources(),
        ..._getRepositories(),
        ..._getUsecases(),
        ..._getControllers(),
      ];

  static List<Bind<Object>> _getDatabase() => <Bind<Object>>[];

  static List<Bind<Object>> _getDatasources() => <Bind<Object>>[
        Bind.factory<HelpDatasource>(
            (Injector<dynamic> i) => HelpDatasourceImpl()),
      ];

  static List<Bind<Object>> _getRepositories() => <Bind<Object>>[
        Bind.factory<HelpRepository>(
            (Injector<dynamic> i) => HelpRepositoryImpl(i.get())),
      ];

  static List<Bind<Object>> _getUsecases() => <Bind<Object>>[
        Bind.factory<HelpUsecase>(
            (Injector<dynamic> i) => HelpUsecaseImpl(i.get())),
      ];

  static List<Bind<Object>> _getControllers() => <Bind<Object>>[
        Bind.factory<HelpController>(
            (Injector<dynamic> i) => HelpController(i.get())),
      ];

  static List<ModularRoute> getRoutes() => <ModularRoute>[
        ChildRoute<dynamic>(helpScreen,
            child: (_, ModularArguments args) => const HelpScreen()),
      ];
}
