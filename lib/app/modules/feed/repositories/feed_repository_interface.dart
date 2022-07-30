import 'package:dio/dio.dart';

abstract class IFeedRepository {
  Future<Response<dynamic>> getSubreddit(String subreddit);
  Future<List> getComments(String endpoint);
}
