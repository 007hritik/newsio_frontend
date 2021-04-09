///
//  Generated code. Do not modify.
//  source: lib/protos/newsio.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'newsio.pb.dart' as $0;
export 'newsio.pb.dart';

class NewsServiceClient extends $grpc.Client {
  static final _$fetchLatestNews = $grpc.ClientMethod<$0.noParams, $0.News>(
      '/org.newsio.grpc.NewsService/fetchLatestNews',
      ($0.noParams value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.News.fromBuffer(value));

  NewsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.News> fetchLatestNews($0.noParams request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$fetchLatestNews, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class NewsServiceBase extends $grpc.Service {
  $core.String get $name => 'org.newsio.grpc.NewsService';

  NewsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.noParams, $0.News>(
        'fetchLatestNews',
        fetchLatestNews_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.noParams.fromBuffer(value),
        ($0.News value) => value.writeToBuffer()));
  }

  $async.Stream<$0.News> fetchLatestNews_Pre(
      $grpc.ServiceCall call, $async.Future<$0.noParams> request) async* {
    yield* fetchLatestNews(call, await request);
  }

  $async.Stream<$0.News> fetchLatestNews(
      $grpc.ServiceCall call, $0.noParams request);
}
