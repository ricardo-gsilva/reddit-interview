
// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'splash_screen_store.g.dart';

class SplashScreenStore = _SplashScreenStoreBase with _$SplashScreenStore;

abstract class _SplashScreenStoreBase with Store {

  @observable
  bool visible = false;

  @observable
  TextEditingController user = TextEditingController();

  @observable
  TextEditingController pass = TextEditingController();

  @action
  Future<void> chargeSplashSecondary() async {
    await Future.delayed(const Duration(seconds: 2), () {
      visible = true;
    });
  } 
}