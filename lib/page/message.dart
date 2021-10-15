import 'package:budgetappwidget/AppWidget/AppStyleExport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wsbdegenerate/bloc/solana_bloc.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SolanaBloc>(context).add(GetBalance());
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
        accentColor: Colors.white,
      ),
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: Column(
            children: [
              // new AppBar(
              //   bottom: new TabBar(
              //     tabs: [
              //       new Tab(
              //         child: Text(
              //           "Notifications",
              //           style: TextStyle(fontSize: 16.0),
              //         ),
              //       ),
              //       new Tab(
              //         child: Text(
              //           "Messages",
              //           style: TextStyle(fontSize: 16.0),
              //         ),
              //       ),
              //       new Tab(
              //         child: Text(
              //           "Mod Mail",
              //           style: TextStyle(fontSize: 16.0),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: AppPadding.All10,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 500.0,
                    height: 300.0,
                    decoration: AppDecoration.BorderRadius10Color(
                      Color(0xFFE35E33),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('Account Balance', style: AppStyle.f40),
                        SizedBox(height: 10.0),
                        InkWell(
                          onTap: () {
                            BlocProvider.of<SolanaBloc>(context)
                                .add(GetBalance());
                            print("tap tap");
                            setState(() {});
                          },
                          child: new Text(
                              'Address 8R84KzaZK27KUZMhaio4kxgr7r2cLsGkowM3af8kXg4Q',
                              style: AppStyle.f20Black),
                        ),
                        SizedBox(height: 20.0),
                        new Text(
                            'SOL: ${BlocProvider.of<SolanaBloc>(context).banans}',
                            style: AppStyle.f20blod()),
                        AppWidget.SizeBoxH30,
                        new Row(
                          children: <Widget>[
                            new Expanded(child: new Container()),
                            Text('AirDrop', style: AppStyle.f30WhiteBold),
                            IconButton(
                              icon: Icon(
                                Icons.add,
                                size: 40.0,
                                color: Colors.white70,
                              ),
                              onPressed: () {
                                print("Click clikc");
                                BlocProvider.of<SolanaBloc>(context)
                                    .add(AddToken());
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // new TabBarView(
              //   children: [
              //     new Container(
              //       child: ListView(
              //         children: <Widget>[
              //           new Container(
              //             padding: EdgeInsets.only(top: 10.0),
              //             child: ListTile(
              //               leading: CircleAvatar(
              //                 radius: 25.0,
              //                 backgroundImage: NetworkImage(
              //                     'https://www.inovex.de/blog/wp-content/uploads/2019/01/Flutter-1-1.png'),
              //               ),
              //               title: Text(
              //                 "Flutter",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 18.0,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               subtitle: Container(
              //                 padding: EdgeInsets.only(top: 5.0),
              //                 child: Text(
              //                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              //                   style: TextStyle(
              //                       color: Colors.black, fontSize: 15.0),
              //                 ),
              //               ),
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //     new Container(
              //       child: ListView(
              //         children: <Widget>[
              //           new Container(
              //             padding: EdgeInsets.only(top: 10.0),
              //             child: ListTile(
              //               leading: CircleAvatar(
              //                 radius: 25.0,
              //                 backgroundImage: NetworkImage(
              //                     'https://pbs.twimg.com/profile_images/1093585928642162688/oVdX1KD-.jpg'),
              //               ),
              //               title: Text(
              //                 "WTM",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 18.0,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               subtitle: Container(
              //                 padding: EdgeInsets.only(top: 5.0),
              //                 child: Text(
              //                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              //                   style: TextStyle(
              //                       color: Colors.black, fontSize: 15.0),
              //                 ),
              //               ),
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //     new Container(
              //       child: ListView(
              //         children: <Widget>[
              //           new Container(
              //             padding: EdgeInsets.only(top: 10.0),
              //             child: ListTile(
              //               leading: CircleAvatar(
              //                 radius: 25.0,
              //                 backgroundImage: NetworkImage(
              //                     'https://pbs.twimg.com/profile_images/2899657035/9c362f3925b029b91676cca2cfef3e5e_400x400.png'),
              //               ),
              //               title: Text(
              //                 "GDG",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 18.0,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               subtitle: Container(
              //                 padding: EdgeInsets.only(top: 5.0),
              //                 child: Text(
              //                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              //                   style: TextStyle(
              //                       color: Colors.black, fontSize: 15.0),
              //                 ),
              //               ),
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
