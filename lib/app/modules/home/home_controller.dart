import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  String _subredditsName = 'FlutterDev';
  @observable
  bool isButtonDisabled = false;

  @action
  void setSubredditsName(String value) {
    _subredditsName = value;
    _subredditsName.length < 3 || _subredditsName == ''
        ? setIsButtonDisabled(true)
        : setIsButtonDisabled(false);
  }

  String getSubredditsName() {
    return _subredditsName;
  }

  @action
  void setIsButtonDisabled(bool value) {
    isButtonDisabled = value;
  }
}
