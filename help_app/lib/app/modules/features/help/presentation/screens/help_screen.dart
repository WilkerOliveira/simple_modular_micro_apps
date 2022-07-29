import 'package:base_dependencies/main.dart';
import 'package:base_ds/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:help_app/app/modules/features/help/presentation/controllers/help_controller.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  late HelpController _helpController;

  @override
  void initState() {
    super.initState();
    _helpController = Modular.get<HelpController>();
  }

  @override
  void dispose() {
    Modular.dispose<HelpController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help Screen'),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: EdgeInsets.symmetric(
            horizontal: defaultSpace, vertical: defaultSpace),
        child: Column(
          children: <Widget>[
            Observer(builder: (_) => Center(child: Text(_helpController.nome))),
            ElevatedButton(
                onPressed: () => _helpController.changeName(),
                child: const Text('Change Name')),
          ],
        ),
      ),
    );
  }
}
