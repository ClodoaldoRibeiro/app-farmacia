import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class ApplicationParse {
  static final _appId = 'wtzLU0FdbgYr5Su2vLE0zCSowiuCYlzipUMPvlV6';
  static final _apiAddress = 'https://parseapi.back4app.com/';
  static final _clientKey = 'r6BAWQxfZ7GIcN5cuK3Uj8QWOfhp1Qys7eG05pnj';

  static Future<void> initializeParse() async {
    await Parse().initialize(_appId, _apiAddress,
        clientKey: _clientKey, autoSendSessionId: true, debug: true);
  }
}