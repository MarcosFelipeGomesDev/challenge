import 'package:challenge/app/modules/feed/feed_controller.dart';
import 'package:challenge/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeedPage extends StatefulWidget {
  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final _feedController = Modular.get<FeedController>();
  final _homeController = Modular.get<HomeController>();

  Future<void> _pullRefresh() async {
    _feedController.onGetSubreddit(_homeController.getSubredditsName());
  }

  Widget build(BuildContext context) {
    _feedController.onGetSubreddit(_homeController.getSubredditsName());
    return Scaffold(
        appBar: AppBar(title: Text('Feed')),
        body: Observer(builder: (_) {
          return RefreshIndicator(
            onRefresh: _pullRefresh,
            child: _feedController.data == null
                ? Text('Loading...')
                : ListView.builder(
                    itemCount: _feedController.data['data']['children'].length,
                    itemBuilder: (BuildContext context, int index) {
                      final item =
                          _feedController.data['data']['children'][index];
                      return ListTile(
                        onTap: () => {
                          _feedController.setEndpoint(item['data']['permalink'],
                              item['data']['num_comments'])
                        },
                        leading: SizedBox(
                          height: 100.0,
                          width: 100.0, // fixed width and height
                          child: item['data']['thumbnail'] == 'self' ||
                                  item['data']['thumbnail'] == 'default'
                              ? Text('')
                              : Image.network(item['data']['thumbnail']),
                        ),
                        // trailing: const Text(
                        //   "GFG",
                        //   style: TextStyle(color: Colors.green, fontSize: 15),
                        // ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item['data']['title']),
                            Text('Comments: ${item['data']['num_comments']}'),
                            Text('Score: ${item['data']['score']}'),
                          ],
                        ),
                      );
                    }),
          );
        }));
  }
}
