// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/backend/api_requests/api_interceptor.dart';
import '/backend/api_requests/api_manager.dart';

class ExampleInterceptor extends FFApiInterceptor {
  @override
  Future<ApiCallOptions> onRequest({
    required ApiCallOptions options,
  }) async {
    // Perform any necessary calls or modifications to the [options] before
    // the API call is made.
    String? concatenatedValues = await lexicographicalOrder(
        options.params, options.body, options.headers['X-Auth-Token']);
    String? nonce = options.callType == ApiCallType.GET
        ? options.params['msgId']
        : (options.body != null && options.body?.isNotEmpty == true
        ? jsonDecode(options.body ?? '')['msgId']
        : null);

    String? signature = await calculateHmacSHA512(concatenatedValues, nonce);
    options.headers['Authorization'] = 'HmacSHA512_O $signature';
    return options;
  }

  @override
  Future<ApiCallResponse> onResponse({
    required ApiCallResponse response,
    required Future<ApiCallResponse> Function() retryFn,
  }) async {
    // Perform any necessary calls or modifications to the [response] prior
    // to returning it.
    return response;
  }
}
