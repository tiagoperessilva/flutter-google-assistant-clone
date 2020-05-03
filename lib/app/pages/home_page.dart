import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterdialogflow/app/pages/home_controller.dart';
import 'package:flutterdialogflow/app/widgets/footer/footer_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _homeController = Provider.of<HomeController>(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Color(0xFFFCFDFC),
                child: Observer(
                  builder: (BuildContext context) => ListView.separated(
                    padding: EdgeInsets.all(16),
                    itemCount: _homeController.messages.length,
                    itemBuilder: (BuildContext context, int index) => _homeController.messages[index].toWidget(),
                    separatorBuilder: (BuildContext context, int index) => SizedBox(height: 8),
                  ),
                ),
              ),
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
