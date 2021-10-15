import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/solana_bloc.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _solanaBloc = SolanaBloc();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SolanaBloc>(create: (BuildContext context) => _solanaBloc),
      ],
      child: MaterialApp(
        title: "Degenerate Apps",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          primaryColorDark: Colors.white,
          accentColor: Colors.white,
        ),
        home: MyHome(),
      ),
    );
  }
}
