///
//  Generated code. Do not modify.
//  source: lib/protos/newsio.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class noParams extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'noParams', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'org.newsio.grpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  noParams._() : super();
  factory noParams() => create();
  factory noParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory noParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  noParams clone() => noParams()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  noParams copyWith(void Function(noParams) updates) => super.copyWith((message) => updates(message as noParams)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static noParams create() => noParams._();
  noParams createEmptyInstance() => create();
  static $pb.PbList<noParams> createRepeated() => $pb.PbList<noParams>();
  @$core.pragma('dart2js:noInline')
  static noParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<noParams>(create);
  static noParams _defaultInstance;
}

class listOfNews extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'listOfNews', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'org.newsio.grpc'), createEmptyInstance: create)
    ..pc<News>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newsList', $pb.PbFieldType.PM, protoName: 'newsList', subBuilder: News.create)
    ..hasRequiredFields = false
  ;

  listOfNews._() : super();
  factory listOfNews({
    $core.Iterable<News> newsList,
  }) {
    final _result = create();
    if (newsList != null) {
      _result.newsList.addAll(newsList);
    }
    return _result;
  }
  factory listOfNews.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory listOfNews.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  listOfNews clone() => listOfNews()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  listOfNews copyWith(void Function(listOfNews) updates) => super.copyWith((message) => updates(message as listOfNews)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static listOfNews create() => listOfNews._();
  listOfNews createEmptyInstance() => create();
  static $pb.PbList<listOfNews> createRepeated() => $pb.PbList<listOfNews>();
  @$core.pragma('dart2js:noInline')
  static listOfNews getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<listOfNews>(create);
  static listOfNews _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<News> get newsList => $_getList(0);
}

class News extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'News', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'org.newsio.grpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'author')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageLink', protoName: 'imageLink')
    ..hasRequiredFields = false
  ;

  News._() : super();
  factory News({
    $core.int id,
    $core.String title,
    $core.String description,
    $core.String author,
    $core.String date,
    $core.String imageLink,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (author != null) {
      _result.author = author;
    }
    if (date != null) {
      _result.date = date;
    }
    if (imageLink != null) {
      _result.imageLink = imageLink;
    }
    return _result;
  }
  factory News.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory News.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  News clone() => News()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  News copyWith(void Function(News) updates) => super.copyWith((message) => updates(message as News)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static News create() => News._();
  News createEmptyInstance() => create();
  static $pb.PbList<News> createRepeated() => $pb.PbList<News>();
  @$core.pragma('dart2js:noInline')
  static News getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<News>(create);
  static News _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get author => $_getSZ(3);
  @$pb.TagNumber(4)
  set author($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAuthor() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthor() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get date => $_getSZ(4);
  @$pb.TagNumber(5)
  set date($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearDate() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get imageLink => $_getSZ(5);
  @$pb.TagNumber(6)
  set imageLink($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImageLink() => $_has(5);
  @$pb.TagNumber(6)
  void clearImageLink() => clearField(6);
}

