/// Exception thrown by send metohd Slack class when Slack Incoming Webhook doesn't respond with ok
class InvalidResponseException implements Exception {
  /// Exception message
  dynamic message;

  InvalidResponseException([this.message]);
}
