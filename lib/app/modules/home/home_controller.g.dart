// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$_subredditsNameAtom =
      Atom(name: '_HomeControllerBase._subredditsName');

  @override
  String get _subredditsName {
    _$_subredditsNameAtom.reportRead();
    return super._subredditsName;
  }

  @override
  set _subredditsName(String value) {
    _$_subredditsNameAtom.reportWrite(value, super._subredditsName, () {
      super._subredditsName = value;
    });
  }

  final _$isButtonDisabledAtom =
      Atom(name: '_HomeControllerBase.isButtonDisabled');

  @override
  bool get isButtonDisabled {
    _$isButtonDisabledAtom.reportRead();
    return super.isButtonDisabled;
  }

  @override
  set isButtonDisabled(bool value) {
    _$isButtonDisabledAtom.reportWrite(value, super.isButtonDisabled, () {
      super.isButtonDisabled = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setSubredditsName(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setSubredditsName');
    try {
      return super.setSubredditsName(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsButtonDisabled(bool value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setIsButtonDisabled');
    try {
      return super.setIsButtonDisabled(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isButtonDisabled: ${isButtonDisabled}
    ''';
  }
}
