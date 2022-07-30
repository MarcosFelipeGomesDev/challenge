import 'package:challenge/app/modules/feed/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CommentsPage extends StatefulWidget {
  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final _feedController = Modular.get<FeedController>();

  Widget build(BuildContext context) {
    _feedController.dataComments = [];
    _feedController.dataHeader = [];
    _feedController.onGetComments();
    return Scaffold(
        appBar: AppBar(title: Text('Comments')),
        body: Observer(builder: (_) {
          return _feedController.dataComments.length == 0
              ? Text('Loading...')
              : Column(
                  children: [
                    _feedController.dataHeader[0]['data']['children'][0]['data']
                                    ['thumbnail'] ==
                                'self' ||
                            _feedController.dataHeader[0]['data']['children'][0]
                                    ['data']['thumbnail'] ==
                                'default'
                        ? Text('')
                        : Container(
                            alignment: Alignment.center,
                            height: 90,
                            width: 140,
                            child: Image.network(
                              _feedController.dataHeader[0]['data']['children']
                                  [0]['data']['thumbnail'],
                              fit: BoxFit.fill,
                            ),
                          ),
                    Text(
                      _feedController.dataHeader[0]['data']['children'][0]
                          ['data']['title'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Flexible(
                      child: ListView.builder(
                          itemCount: _feedController.dataComments.length,
                          itemBuilder: (BuildContext context, int index) {
                            // print(_feedController.dataComments);
                            final item = _feedController.dataComments[index];
                            return ListTile(
                              // leading: SizedBox(
                              //   height: 100.0,
                              //   width: 100.0, // fixed width and height
                              //   child: item['data']['thumbnail'] == 'self' ||
                              //           item['data']['thumbnail'] == 'default'
                              //       ? Text('')
                              //       : Image.network(item['data']['thumbnail']),
                              // ),
                              // trailing: const Text(
                              //   "GFG",
                              //   style: TextStyle(color: Colors.green, fontSize: 15),
                              // ),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${item['data']['body']}',
                                    textAlign: TextAlign.justify,
                                  ),
                                  Divider(
                                    height: 5.0,
                                  ),
                                  Text('Author: ${item['data']['author']}'),
                                  Text('Score: ${item['data']['score']}'),
                                  Divider(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                );
        }));
  }
}
