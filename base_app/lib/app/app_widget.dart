import 'package:base_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ScreenUtilInit(
      designSize: const Size(320, 568),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, Widget? child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Sample Micro Apps',
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      ),
    );
  }
}
