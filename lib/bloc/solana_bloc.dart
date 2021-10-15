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
      var secret = List<int>.from([
        199,
        235,
        179,
        75,
        218,
        125,
        173,
        3,
        24,
        132,
        29,
        108,
        2,
        163,
        189,
        118,
        202,
        51,
        88,
        99,
        95,
        88,
        126,
        112,
        43,
        101,
        19,
        109,
        117,
        44,
        150,
        186,
        110,
        47,
        186,
        74,
        72,
        183,
        243,
        48,
        35,
        227,
        144,
        38,
        234,
        131,
        194,
        66,
        198,
        174,
        80,
        154,
        10,
        25,
        60,
        15,
        4,
        244,
        155,
        209,
        29,
        40,
        37,
        1
      ]);
      final source = Wallet(
        signer: await Ed25519HDKeyPair.fromMnemonic(
         "fragile kitten perfect fire nasty record explain sure flag spin deny leopard",),
        rpcClient: rpcClient,
      );

      print("Address found ? ${source.address}");
      // Address found ? AEfhiihRCt8EaBnv8SG1xVuqPgZx5oCxkCCw1vck2S1u

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
