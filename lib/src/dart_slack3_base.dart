library slack_io;

import 'package:dartslack3/src/models/models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Slack {
  final String authority;
  final String path;
  Slack( this.authority, this.path );

  /// Posts a Slack message to the properly authenticated Slack token.
  /// The messages will go to whatever channel the token was set up for.
  send(Message m) async {
    
    String payload = jsonEncode(m);
    await http.post(Uri.https(authority, path), body: {'payload': payload});
  }
}
