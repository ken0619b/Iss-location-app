///
//  Generated code. Do not modify.
//  source: iss.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

class LocRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('LocRequest', package: const $pb.PackageName('iss'))
    ..aOS(1, 'message')
    ..hasRequiredFields = false
  ;

  LocRequest() : super();
  LocRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  LocRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  LocRequest clone() => new LocRequest()..mergeFromMessage(this);
  LocRequest copyWith(void Function(LocRequest) updates) => super.copyWith((message) => updates(message as LocRequest));
  $pb.BuilderInfo get info_ => _i;
  static LocRequest create() => new LocRequest();
  static $pb.PbList<LocRequest> createRepeated() => new $pb.PbList<LocRequest>();
  static LocRequest getDefault() => _defaultInstance ??= create()..freeze();
  static LocRequest _defaultInstance;
  static void $checkItem(LocRequest v) {
    if (v is! LocRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get message => $_getS(0, '');
  set message(String v) { $_setString(0, v); }
  bool hasMessage() => $_has(0);
  void clearMessage() => clearField(1);
}

class LocReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('LocReply', package: const $pb.PackageName('iss'))
    ..aOS(1, 'longitude')
    ..aOS(2, 'latitude')
    ..hasRequiredFields = false
  ;

  LocReply() : super();
  LocReply.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  LocReply.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  LocReply clone() => new LocReply()..mergeFromMessage(this);
  LocReply copyWith(void Function(LocReply) updates) => super.copyWith((message) => updates(message as LocReply));
  $pb.BuilderInfo get info_ => _i;
  static LocReply create() => new LocReply();
  static $pb.PbList<LocReply> createRepeated() => new $pb.PbList<LocReply>();
  static LocReply getDefault() => _defaultInstance ??= create()..freeze();
  static LocReply _defaultInstance;
  static void $checkItem(LocReply v) {
    if (v is! LocReply) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get longitude => $_getS(0, '');
  set longitude(String v) { $_setString(0, v); }
  bool hasLongitude() => $_has(0);
  void clearLongitude() => clearField(1);

  String get latitude => $_getS(1, '');
  set latitude(String v) { $_setString(1, v); }
  bool hasLatitude() => $_has(1);
  void clearLatitude() => clearField(2);
}

