import 'package:flutter/material.dart';
import 'package:trive/globals.dart';

class WalletViewScreen extends StatefulWidget {
  @override
  __WalletViewScreenState createState() => new __WalletViewScreenState();
}

class __WalletViewScreenState extends State<WalletViewScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Your Wallet (actual view)'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new RaisedButton(
            onPressed: deleteWallet,
            child: new Text('Delete wallet'),
            textTheme: ButtonTextTheme.primary,
          )
        ],
      ),
    );
  }

  void deleteWallet() {
    Globals.isWalletAvailable = false;
  }
}
