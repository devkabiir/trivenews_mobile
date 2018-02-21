import 'package:flutter/material.dart';
import 'package:trive/globals.dart';

/// Screen to open or create a wallet.
class OpenWalletScreen extends StatefulWidget {
  @override
  _OpenWalletScreenState createState() => new _OpenWalletScreenState();
}

class _OpenWalletScreenState extends State<OpenWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Your Wallet'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new RichText(
            text: new TextSpan(children: [
              new TextSpan(text: 'Some text line 1'),
              new TextSpan(text: 'Some text line 2'),
              new TextSpan(text: 'Some text line 3'),
              new TextSpan(text: 'Some text line 4'),
            ]),
            overflow: TextOverflow.fade,
            maxLines: 5,
          ),
          new RaisedButton(
            child: new Text('Create Wallet'),
            onPressed: createWallet,
          ),
          new Divider(),
          new FlatButton(
            child: new Text('No, I already have a wallet.'),
            color: Colors.orangeAccent[700],
            onPressed: createWallet,
          ),
        ],
      ),
    );
  }

  void createWallet() {
    Globals.isWalletAvailable = !Globals.isWalletAvailable;
  }
}
