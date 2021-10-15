part of 'solana_bloc.dart';

@immutable
abstract class SolanaEvent {}

class GetBalance extends SolanaEvent {}
class AddToken extends SolanaEvent {}
class PayBills extends SolanaEvent {}
