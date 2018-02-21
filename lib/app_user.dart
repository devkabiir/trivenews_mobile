import 'package:meta/meta.dart';

import 'globals.dart';

class AppUser {
  String _fname;
  String _lname;
  String _uuid;
  String _email;

  bool isResearcher;

  AppUser({@required String userID, @required String email}) {
    _email = GetVal(email, _email, varName: 'email');
    _uuid = GetVal(userID, _uuid, varName: 'userID');
  }

  String toString() => _uuid.toString() + ":" + _email.toString();
}
