import 'package:budgetappwidget/AppWidget/StylesExport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../page/chat.dart';

import '../page/home.dart';
import '../page/message.dart';

import '../page/search.dart';
import 'bloc/CameraBloc/CameraBloc.dart';
import 'bloc/CameraBloc/CameraBloc.dart';
import 'bloc/CameraBloc/CameraBlocExport.dart';

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => new MyHomeState();
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();

    controller = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipOval(
            child: new SizedBox(
              width: 40.0,
              height: 40.0,
              child: new Image.network(
                  "https://robertkatai.com/wp-content/uploads/2018/09/wsi-imageoptim-reddit-marketing-.jpg"),
            ),
          ),
        ),
        title: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey),
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: new TabBarView(
        children: <Widget>[
          new Home(),
          new Search(),
          new Divider(),
          new Chat(),
          new Message(),
        ],
        controller: controller,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<CameraBloc>(context).add(SelectImageFromGallery());
        },
        shape: AppShape.FabSquare,
        child: new Text(
          'Yolo NFT',
          style: new TextStyle(
            fontSize: 10.0,
            letterSpacing: 2.0,
          ),
          textAlign:TextAlign.center ,
        ),
      ),
      bottomNavigationBar: new Material(
        shadowColor: Colors.white,
        color: Theme
            .of(context)
            .primaryColorDark,
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              icon: new Icon(
                Icons.face,
                size: 30.0,
              ),
            ),
            new Tab(
              icon: new Icon(
                Icons.dashboard,
                size: 30.0,
              ),
            ),
            new Tab(
              text: "",
            ),
            new Tab(
              icon: new Icon(
                Icons.textsms,
                size: 30.0,
              ),
            ),
            new Tab(
              icon: new Icon(
                Icons.mail,
                size: 30.0,
              ),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
