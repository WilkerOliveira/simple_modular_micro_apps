// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HelpController on _HelpController, Store {
  final _$nomeAtom = Atom(name: '_HelpController.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$changeNameAsyncAction = AsyncAction('_HelpController.changeName');

  @override
  Future<void> changeName() {
    return _$changeNameAsyncAction.run(() => super.changeName());
  }

  @override
  String toString() {
    return '''
nome: ${nome}
    ''';
  }
}
