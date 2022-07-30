import 'package:dio/dio.dart';
import 'feed_repository_interface.dart';

class FeedRepository implements IFeedRepository {
  final Dio dioPerfil;
  FeedRepository(this.dioPerfil);

  @override
  Future<Response<dynamic>> getSubreddit(String subreddit) async {
    var response = await dioPerfil.get('${subreddit}.json');
    return response;
  }

  @override
  Future<List> getComments(String endpoint) async {
    endpoint = '${endpoint.substring(3, endpoint.length - 1)}.json';
    var response = await dioPerfil.get(endpoint);
    return response.data;
  }
}
