library slack_webhook;

import 'package:http/http.dart' as http;
import 'package:slack_webhook/src/exceptions/invalid_response_exception.dart';
import 'dart:convert';
import 'package:slack_webhook/src/models/models.dart';

// Inteface API to Slack
class Slack {
  /// Hostname eg 'hooks.slack.com'
  final String authority;

  /// Unencoded path eg '/services/T000000/B00000/kldSD34SDsaa'
  final String path;
  Slack(this.authority, this.path);

  /// Sends a message to Slack. Throws [InvalidResponseException] when body of response isn't 'ok'
  void send(Message m) async {
    String payload = jsonEncode(m);
    http.Response r =
        await http.post(Uri.https(authority, path), body: {'payload': payload});

    if (r.body != 'ok') {
      throw InvalidResponseException("Invalid response ${r.body}");
    }
  }
}
