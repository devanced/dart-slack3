library slack_io;

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:slack_webhook/src/models/models.dart';

class Slack {
  final String authority;
  final String path;
  Slack( this.authority, this.path );

  send(Message m) async {
    String payload = jsonEncode(m);
    await http.post(Uri.https(authority, path), body: {'payload': payload});
  }
}
