// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  ArticleModel get article => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ArticleModel article) changeArticle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ArticleModel article)? changeArticle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ArticleModel article)? changeArticle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventChangeArticle value) changeArticle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventChangeArticle value)? changeArticle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventChangeArticle value)? changeArticle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call({ArticleModel article});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = freezed,
  }) {
    return _then(_value.copyWith(
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as ArticleModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeEventChangeArticleImplCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$HomeEventChangeArticleImplCopyWith(
          _$HomeEventChangeArticleImpl value,
          $Res Function(_$HomeEventChangeArticleImpl) then) =
      __$$HomeEventChangeArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ArticleModel article});
}

/// @nodoc
class __$$HomeEventChangeArticleImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventChangeArticleImpl>
    implements _$$HomeEventChangeArticleImplCopyWith<$Res> {
  __$$HomeEventChangeArticleImplCopyWithImpl(
      _$HomeEventChangeArticleImpl _value,
      $Res Function(_$HomeEventChangeArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = freezed,
  }) {
    return _then(_$HomeEventChangeArticleImpl(
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as ArticleModel,
    ));
  }
}

/// @nodoc

class _$HomeEventChangeArticleImpl
    with DiagnosticableTreeMixin
    implements HomeEventChangeArticle {
  const _$HomeEventChangeArticleImpl({required this.article});

  @override
  final ArticleModel article;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.changeArticle(article: $article)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.changeArticle'))
      ..add(DiagnosticsProperty('article', article));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventChangeArticleImpl &&
            const DeepCollectionEquality().equals(other.article, article));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(article));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventChangeArticleImplCopyWith<_$HomeEventChangeArticleImpl>
      get copyWith => __$$HomeEventChangeArticleImplCopyWithImpl<
          _$HomeEventChangeArticleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ArticleModel article) changeArticle,
  }) {
    return changeArticle(article);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ArticleModel article)? changeArticle,
  }) {
    return changeArticle?.call(article);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ArticleModel article)? changeArticle,
    required TResult orElse(),
  }) {
    if (changeArticle != null) {
      return changeArticle(article);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventChangeArticle value) changeArticle,
  }) {
    return changeArticle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventChangeArticle value)? changeArticle,
  }) {
    return changeArticle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventChangeArticle value)? changeArticle,
    required TResult orElse(),
  }) {
    if (changeArticle != null) {
      return changeArticle(this);
    }
    return orElse();
  }
}

abstract class HomeEventChangeArticle implements HomeEvent {
  const factory HomeEventChangeArticle({required final ArticleModel article}) =
      _$HomeEventChangeArticleImpl;

  @override
  ArticleModel get article;
  @override
  @JsonKey(ignore: true)
  _$$HomeEventChangeArticleImplCopyWith<_$HomeEventChangeArticleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ArticleModel article) loading,
    required TResult Function(ArticleModel article, List<String> content)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ArticleModel article)? loading,
    TResult? Function(ArticleModel article, List<String> content)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ArticleModel article)? loading,
    TResult Function(ArticleModel article, List<String> content)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInit value)? init,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeStateInitImplCopyWith<$Res> {
  factory _$$HomeStateInitImplCopyWith(
          _$HomeStateInitImpl value, $Res Function(_$HomeStateInitImpl) then) =
      __$$HomeStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateInitImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateInitImpl>
    implements _$$HomeStateInitImplCopyWith<$Res> {
  __$$HomeStateInitImplCopyWithImpl(
      _$HomeStateInitImpl _value, $Res Function(_$HomeStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeStateInitImpl
    with DiagnosticableTreeMixin
    implements HomeStateInit {
  const _$HomeStateInitImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.init'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStateInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ArticleModel article) loading,
    required TResult Function(ArticleModel article, List<String> content)
        loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ArticleModel article)? loading,
    TResult? Function(ArticleModel article, List<String> content)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ArticleModel article)? loading,
    TResult Function(ArticleModel article, List<String> content)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInit value)? init,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateLoaded value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class HomeStateInit implements HomeState {
  const factory HomeStateInit() = _$HomeStateInitImpl;
}

/// @nodoc
abstract class _$$HomeStateLoadingImplCopyWith<$Res> {
  factory _$$HomeStateLoadingImplCopyWith(_$HomeStateLoadingImpl value,
          $Res Function(_$HomeStateLoadingImpl) then) =
      __$$HomeStateLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArticleModel article});
}

/// @nodoc
class __$$HomeStateLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateLoadingImpl>
    implements _$$HomeStateLoadingImplCopyWith<$Res> {
  __$$HomeStateLoadingImplCopyWithImpl(_$HomeStateLoadingImpl _value,
      $Res Function(_$HomeStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = freezed,
  }) {
    return _then(_$HomeStateLoadingImpl(
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as ArticleModel,
    ));
  }
}

/// @nodoc

class _$HomeStateLoadingImpl
    with DiagnosticableTreeMixin
    implements HomeStateLoading {
  const _$HomeStateLoadingImpl({required this.article});

  @override
  final ArticleModel article;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loading(article: $article)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.loading'))
      ..add(DiagnosticsProperty('article', article));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateLoadingImpl &&
            const DeepCollectionEquality().equals(other.article, article));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(article));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateLoadingImplCopyWith<_$HomeStateLoadingImpl> get copyWith =>
      __$$HomeStateLoadingImplCopyWithImpl<_$HomeStateLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ArticleModel article) loading,
    required TResult Function(ArticleModel article, List<String> content)
        loaded,
  }) {
    return loading(article);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ArticleModel article)? loading,
    TResult? Function(ArticleModel article, List<String> content)? loaded,
  }) {
    return loading?.call(article);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ArticleModel article)? loading,
    TResult Function(ArticleModel article, List<String> content)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(article);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInit value)? init,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoading implements HomeState {
  const factory HomeStateLoading({required final ArticleModel article}) =
      _$HomeStateLoadingImpl;

  ArticleModel get article;
  @JsonKey(ignore: true)
  _$$HomeStateLoadingImplCopyWith<_$HomeStateLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateLoadedImplCopyWith<$Res> {
  factory _$$HomeStateLoadedImplCopyWith(_$HomeStateLoadedImpl value,
          $Res Function(_$HomeStateLoadedImpl) then) =
      __$$HomeStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArticleModel article, List<String> content});
}

/// @nodoc
class __$$HomeStateLoadedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateLoadedImpl>
    implements _$$HomeStateLoadedImplCopyWith<$Res> {
  __$$HomeStateLoadedImplCopyWithImpl(
      _$HomeStateLoadedImpl _value, $Res Function(_$HomeStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = freezed,
    Object? content = null,
  }) {
    return _then(_$HomeStateLoadedImpl(
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as ArticleModel,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$HomeStateLoadedImpl
    with DiagnosticableTreeMixin
    implements HomeStateLoaded {
  const _$HomeStateLoadedImpl(
      {required this.article, required final List<String> content})
      : _content = content;

  @override
  final ArticleModel article;
  final List<String> _content;
  @override
  List<String> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loaded(article: $article, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.loaded'))
      ..add(DiagnosticsProperty('article', article))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateLoadedImpl &&
            const DeepCollectionEquality().equals(other.article, article) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(article),
      const DeepCollectionEquality().hash(_content));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateLoadedImplCopyWith<_$HomeStateLoadedImpl> get copyWith =>
      __$$HomeStateLoadedImplCopyWithImpl<_$HomeStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ArticleModel article) loading,
    required TResult Function(ArticleModel article, List<String> content)
        loaded,
  }) {
    return loaded(article, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ArticleModel article)? loading,
    TResult? Function(ArticleModel article, List<String> content)? loaded,
  }) {
    return loaded?.call(article, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ArticleModel article)? loading,
    TResult Function(ArticleModel article, List<String> content)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(article, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInit value) init,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInit value)? init,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInit value)? init,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoaded implements HomeState {
  const factory HomeStateLoaded(
      {required final ArticleModel article,
      required final List<String> content}) = _$HomeStateLoadedImpl;

  ArticleModel get article;
  List<String> get content;
  @JsonKey(ignore: true)
  _$$HomeStateLoadedImplCopyWith<_$HomeStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
