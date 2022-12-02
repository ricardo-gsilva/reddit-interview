// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SplashScreenStore on _SplashScreenStoreBase, Store {
  late final _$visibleAtom =
      Atom(name: '_SplashScreenStoreBase.visible', context: context);

  @override
  bool get visible {
    _$visibleAtom.reportRead();
    return super.visible;
  }

  @override
  set visible(bool value) {
    _$visibleAtom.reportWrite(value, super.visible, () {
      super.visible = value;
    });
  }

  late final _$userAtom =
      Atom(name: '_SplashScreenStoreBase.user', context: context);

  @override
  TextEditingController get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(TextEditingController value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$passAtom =
      Atom(name: '_SplashScreenStoreBase.pass', context: context);

  @override
  TextEditingController get pass {
    _$passAtom.reportRead();
    return super.pass;
  }

  @override
  set pass(TextEditingController value) {
    _$passAtom.reportWrite(value, super.pass, () {
      super.pass = value;
    });
  }

  late final _$chargeSplashSecondaryAsyncAction = AsyncAction(
      '_SplashScreenStoreBase.chargeSplashSecondary',
      context: context);

  @override
  Future<void> chargeSplashSecondary() {
    return _$chargeSplashSecondaryAsyncAction
        .run(() => super.chargeSplashSecondary());
  }

  @override
  String toString() {
    return '''
visible: ${visible},
user: ${user},
pass: ${pass}
    ''';
  }
}
