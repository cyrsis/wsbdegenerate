import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:solana/solana.dart';

part 'solana_event.dart';

part 'solana_state.dart';

const _rpcClientUrl = 'http://127.0.0.1:8899';

class SolanaBloc extends Bloc<SolanaEvent, SolanaState> {
  int banans = 0;

  SolanaBloc() : super(SolanaInitial());

  String _localAccount = "8R84KzaZK27KUZMhaio4kxgr7r2cLsGkowM3af8kXg4Q";

  @override
  Stream<SolanaState> mapEventToState(
    SolanaEvent event,
  ) async* {
    if (event is GetBalance) {




      final rpcClient = RPCClient(_rpcClientUrl);
      banans = await rpcClient.getBalance(_localAccount);
    }

    if (event is AddToken) {
      final rpcClient = RPCClient(_rpcClientUrl);
      var some = await rpcClient.requestAirdrop(
          address: _localAccount, lamports: 100000000);
    }
    if (event is PayBills) {
      final rpcClient = RPCClient(_rpcClientUrl);
      // Create a wallet


      // await source.transferWithMemo(
      //   destination: "Aj94M5te4ijry2y58YT9QrrQfGP2PxBGeHG9ps5bUqZz",
      //   lamports: 10000,
      //   memo: 'You can add a message here!',
      // );
      //
      // // Compute the fee that source payed
      // final fee = 4 - await source.getLamports();
      //
      // print('You payed $fee lamports for the network fee');
      //
      // // To confirm that it worked let's see if there's any balance
      // // in the recipients wallet
      // final lamports = await rpcClient
      //     .getBalance("Aj94M5te4ijry2y58YT9QrrQfGP2PxBGeHG9ps5bUqZz");
      // if (lamports == 1) {
      //   print('Good, it worked.');
      // } else {
      //   print('Bad, it failed.');
      // }
    }
  }
}
