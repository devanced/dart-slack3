library slack_webhook;

import 'package:http/http.dart' as http;
import 'package:slack_webhook/src/exceptions/invalid_response_exception.dart';
import 'dart:convert';
import 'package:slack_webhook/src/models/models.dart';

class Slack {
  final String authority;
  final String path;
  Slack( this.authority, this.path );

  void send(Message m) async  {
    String payload = jsonEncode(m);
    http.Response r = await http.post(Uri.https(authority, path), body: {'payload': payload});
    
    
    if( r.body != 'ok' ) {
      throw InvalidResponseException("Invalid response ${r.body}");
    }
  }
}
