import 'package:challenge/app/modules/feed/compoments/comments_page.dart';

import 'feed_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'feed_page.dart';

class FeedModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => FeedController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => FeedPage()),
      ];
  // static Inject get to => Inject<HomeModule>.of();
}
