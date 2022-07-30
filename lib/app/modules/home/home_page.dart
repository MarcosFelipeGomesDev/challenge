import 'package:challenge/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeController = Modular.get<HomeController>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter a subreddits',
              ),
              onChanged: (value) => _homeController.setSubredditsName(value),
              initialValue: 'FlutterDev',
            ),
            SizedBox(
              height: 10,
            ),
            Observer(builder: (_) {
              return TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                    _homeController.isButtonDisabled
                        ? Colors.grey
                        : Theme.of(context).primaryColor,
                  ),
                ),
                onPressed: () {
                  _homeController.isButtonDisabled
                      ? false
                      : Modular.to.pushNamed('/feed');
                },
                child: Text('Continue'),
              );
            })
          ],
        ),
      ),
    );
  }
}
