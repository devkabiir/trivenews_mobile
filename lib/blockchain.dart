import 'package:meta/meta.dart';

import 'wallet.dart';

/// A blockchain is only supposed to make transactions.
abstract class BlockChain {
  /// Make a transaction of [value] amount from [wallet] to [toAddress].
  bool makeTransaction(
      {@required Wallet wallet,
      @required String toAddress,
      @required double value});

  double getBalance({@required String publicAddress});
}
