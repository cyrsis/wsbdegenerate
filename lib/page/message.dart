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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: AppPadding.All10,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 500.0,
                        height: 300.0,
                        decoration: AppDecoration.BorderRadius10Color(
                          Color(0xFFE35E33),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text('Account Balance',
                                  style: AppStyle.f30WhiteBold),
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
                                      BlocProvider.of<SolanaBloc>(context)
                                          .add(GetBalance());
                                      print("tap tap");
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 350.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    itemExtent: 300.0,
                    children: <Widget>[
                      _buildBills('SC Credit Card'),
                      _buildBills('Tax Bills'),
                      _buildBills('Water Bills'),
                      _buildBills('Clothing Bills'),
                      _buildBills('Porn '),
                      _buildBills('Dinner'),
                      _buildBills('Whatever'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildBills(title) {
    return Padding(
      padding: AppPadding.All10,
      child: Container(
        width: 650.0,
        height: 300.0,
        decoration: AppDecoration.BorderRadius10Color(
          Colors.green,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(title, style: AppStyle.f30WhiteBold),
              SizedBox(height: 10.0),
              InkWell(
                onTap: () {
                  BlocProvider.of<SolanaBloc>(context).add(GetBalance());
                  print("tap tap");
                  setState(() {});
                },
                child: new Text(
                    'Address 8R84KzaZK27KUZMhaio4kxgr7r2cLsGkowM3af8kXg4Q',
                    style: AppStyle.f20Black),
              ),
              SizedBox(height: 20.0),
              new Text('SOL: 2.0', style: AppStyle.f20blod()),
              AppWidget.SizeBoxH30,
              new Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 40,
                    decoration: AppDecoration.BorderRadius10Color(
                      Colors.white,
                    ),
                    child: new Text('NFT',textAlign: TextAlign.center,),
                  ),
                  Text('Pay', style: AppStyle.f30WhiteBold),
                  IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 40.0,
                      color: Colors.white70,
                    ),
                    onPressed: () {
                      BlocProvider.of<SolanaBloc>(context).add(PayBills());
                      setState(() {});
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
