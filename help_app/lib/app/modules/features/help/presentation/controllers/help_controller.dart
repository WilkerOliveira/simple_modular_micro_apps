import 'dart:developer';

import 'package:base_dependencies/main.dart';
import 'package:help_app/app/modules/features/help/domain/usecases/help_usecase.dart';

part 'help_controller.g.dart';

class HelpController = _HelpController with _$HelpController;

abstract class _HelpController with Store {
  _HelpController(this._helpUsecase);

  final HelpUsecase _helpUsecase;
  @observable
  String nome = '...';

  @action
  Future<void> changeName() async {
    final Either<Exception, String> result = await _helpUsecase();

    result.fold((Exception error) => log('Some error'), (String response) {
      nome = response;
    });
  }
}
