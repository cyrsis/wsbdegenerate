import 'package:solana/solana.dart';


Future<void> main() async {

  // Create a wallet
  // final _wallet = Wallet(
  //   signer: await Ed25519HDKeyPair.random(),
  //   rpcClient: rpcClient,
  // );


  // Because this is an example, let's put some lamports into the source
  // wallet. Note that this will of course not work on the main network.




  // Final Destination (so funny :D)
  // final destination = await Ed25519HDKeyPair.random();
  //
  // // Finally transfer the tokens to the recipient
  // await source.transferWithMemo(
  //   destination: destination.address,
  //   lamports: 1,
  //   memo: 'You can add a message here!',
  // );
  //
  // // Compute the fee that source payed
  // final fee = 4 - await source.getLamports();

  // print('You payed $fee lamports for the network fee');

  // To confirm that it worked let's see if there's any balance
  // in the recipients wallet
  // final lamports = await rpcClient.getBalance(destination.address);
  // if (lamports == 1) {
  //   print('Good, it worked.');
  // } else {
  //   print('Bad, it failed.');
  // }
}

