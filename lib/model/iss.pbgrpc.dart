///
//  Generated code. Do not modify.
//  source: iss.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'iss.pb.dart';
export 'iss.pb.dart';

class LocDetectorClient extends Client {
  static final _$getLoc = new ClientMethod<LocRequest, LocReply>(
      '/iss.LocDetector/GetLoc',
      (LocRequest value) => value.writeToBuffer(),
      (List<int> value) => new LocReply.fromBuffer(value));

  LocDetectorClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<LocReply> getLoc(LocRequest request, {CallOptions options}) {
    final call = $createCall(
        _$getLoc, new $async.Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class LocDetectorServiceBase extends Service {
  String get $name => 'iss.LocDetector';

  LocDetectorServiceBase() {
    $addMethod(new ServiceMethod<LocRequest, LocReply>(
        'GetLoc',
        getLoc_Pre,
        false,
        false,
        (List<int> value) => new LocRequest.fromBuffer(value),
        (LocReply value) => value.writeToBuffer()));
  }

  $async.Future<LocReply> getLoc_Pre(
      ServiceCall call, $async.Future request) async {
    return getLoc(call, await request);
  }

  $async.Future<LocReply> getLoc(ServiceCall call, LocRequest request);
}
