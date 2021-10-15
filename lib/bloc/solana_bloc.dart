import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:solana/solana.dart';
import 'package:fluttertoast/fluttertoast.dart';

part 'solana_event.dart';

part 'solana_state.dart';

const _rpcClientUrl = 'http://127.0.0.1:8899';

class SolanaBloc extends Bloc<SolanaEvent, SolanaState> {
  int banans = 0;

  SolanaBloc() : super(SolanaInitial());

  @override
  Stream<SolanaState> mapEventToState(
    SolanaEvent event,
  ) async* {
    if (event is GetBalance) {
      final rpcClient = RPCClient(_rpcClientUrl);
      banans = await rpcClient
          .getBalance("8R84KzaZK27KUZMhaio4kxgr7r2cLsGkowM3af8kXg4Q");
    }

    if (event is AddToken) {
      final rpcClient = RPCClient(_rpcClientUrl);
      var some = await rpcClient.requestAirdrop(
          address: "8R84KzaZK27KUZMhaio4kxgr7r2cLsGkowM3af8kXg4Q", lamports:100000000);
      
      Fluttertoast.showToast(
          msg: "${some}",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }
  }
}
