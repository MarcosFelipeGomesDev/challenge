import 'dart:convert';
import 'package:challenge/app/modules/feed/repositories/feed_repository_interface.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobx/mobx.dart';

part 'feed_controller.g.dart';

class FeedController = _FeedControllerBase with _$FeedController;

abstract class _FeedControllerBase with Store {
  final IFeedRepository _feedRepository = Modular.get();
  @observable
  var data;
  @observable
  List dataComments = [];
  @observable
  List dataHeader = [];
  @observable
  String _endpoint = '';

  @action
  setEndpoint(String endpoint, int numComments) {
    _endpoint = endpoint;
    if (_endpoint != '' && numComments > 0) {
      Modular.to.pushNamed('/comments');
    }
    // print(numComments);
    if (numComments == 0) {
      Fluttertoast.showToast(
          msg: "Not comments",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  @action
  Future<void> onGetSubreddit(String subreddit) async {
    Response<dynamic> _result = await _feedRepository.getSubreddit(subreddit);
    data = _result.data;
  }

  @action
  Future<void> onGetComments() async {
    List _result = await _feedRepository.getComments(_endpoint);
    dataHeader = _result;
    dataComments = _result[1]['data']['children'];
  }
}
