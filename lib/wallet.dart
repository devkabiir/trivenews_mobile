/// Wallet is only supposed to store private key.
abstract class Wallet {
  String getPublicKey();
  String getPrivateKey();
}
