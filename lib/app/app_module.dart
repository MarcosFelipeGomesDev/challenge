import 'package:challenge/app/shared/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import 'modules/feed/compoments/comments_page.dart';
import 'modules/feed/feed_controller.dart';
import 'modules/feed/feed_module.dart';
import 'modules/feed/repositories/feed_repository.dart';
import 'modules/feed/repositories/feed_repository_interface.dart';
import 'modules/home/home_controller.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE, connectTimeout: 30000))),
        Bind((i) => HomeController()),
        Bind((i) => FeedController()),
        Bind<IFeedRepository>((i) => FeedRepository(i.get<Dio>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ModuleRoute('/feed', module: FeedModule()),
        ChildRoute('/comments', child: (context, args) => CommentsPage()),
      ];

  // @override
  // Widget get bootstrap => AppWidget();

  // static Inject get to => Inject<AppModule>.of();
}
