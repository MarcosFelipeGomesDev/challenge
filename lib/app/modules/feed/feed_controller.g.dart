// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedController on _FeedControllerBase, Store {
  final _$dataAtom = Atom(name: '_FeedControllerBase.data');

  @override
  dynamic get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(dynamic value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  final _$dataCommentsAtom = Atom(name: '_FeedControllerBase.dataComments');

  @override
  List<dynamic> get dataComments {
    _$dataCommentsAtom.reportRead();
    return super.dataComments;
  }

  @override
  set dataComments(List<dynamic> value) {
    _$dataCommentsAtom.reportWrite(value, super.dataComments, () {
      super.dataComments = value;
    });
  }

  final _$dataHeaderAtom = Atom(name: '_FeedControllerBase.dataHeader');

  @override
  List<dynamic> get dataHeader {
    _$dataHeaderAtom.reportRead();
    return super.dataHeader;
  }

  @override
  set dataHeader(List<dynamic> value) {
    _$dataHeaderAtom.reportWrite(value, super.dataHeader, () {
      super.dataHeader = value;
    });
  }

  final _$_endpointAtom = Atom(name: '_FeedControllerBase._endpoint');

  @override
  String get _endpoint {
    _$_endpointAtom.reportRead();
    return super._endpoint;
  }

  @override
  set _endpoint(String value) {
    _$_endpointAtom.reportWrite(value, super._endpoint, () {
      super._endpoint = value;
    });
  }

  final _$onGetSubredditAsyncAction =
      AsyncAction('_FeedControllerBase.onGetSubreddit');

  @override
  Future<void> onGetSubreddit(String subreddit) {
    return _$onGetSubredditAsyncAction
        .run(() => super.onGetSubreddit(subreddit));
  }

  final _$onGetCommentsAsyncAction =
      AsyncAction('_FeedControllerBase.onGetComments');

  @override
  Future<void> onGetComments() {
    return _$onGetCommentsAsyncAction.run(() => super.onGetComments());
  }

  final _$_FeedControllerBaseActionController =
      ActionController(name: '_FeedControllerBase');

  @override
  dynamic setEndpoint(String endpoint, int numComments) {
    final _$actionInfo = _$_FeedControllerBaseActionController.startAction(
        name: '_FeedControllerBase.setEndpoint');
    try {
      return super.setEndpoint(endpoint, numComments);
    } finally {
      _$_FeedControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
data: ${data},
dataComments: ${dataComments},
dataHeader: ${dataHeader}
    ''';
  }
}
