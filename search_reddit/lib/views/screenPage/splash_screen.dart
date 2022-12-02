import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';
import 'package:search_reddit/core/core_assets.dart';
import 'package:search_reddit/core/core_colors.dart';
import 'package:search_reddit/core/core_keys.dart';
import 'package:search_reddit/core/core_strings.dart';
import 'package:search_reddit/service/firebase_auth/auth_firebase.dart';
import 'package:search_reddit/service/firebase_auth/custom_auth_firebase.dart';
import 'package:search_reddit/service/service_locator.dart';
import 'package:search_reddit/util/rotes.dart';
import 'package:search_reddit/views/screenPage/splash_screen_store.dart';
import 'package:search_reddit/widgets/custom_button.dart';
import 'package:search_reddit/widgets/custom_text.dart';
import 'package:search_reddit/widgets/custom_text_button.dart';
import 'package:search_reddit/widgets/custom_textfield.dart';

class SplashScreenPage extends StatefulWidget {
  final String title;
  const SplashScreenPage({Key? key, this.title = 'SplashScreenPage'})
      : super(key: key);
  @override
  SplashScreenPageState createState() => SplashScreenPageState();
}

class SplashScreenPageState extends State<SplashScreenPage> {
  final SplashScreenStore store = getIt.get<SplashScreenStore>();

  final AuthFirebaseInterface auth = FirebaseAuthCustom();

 

  String? errorAuth;

  bool teste = false;

  @override
  void initState() {
    store.chargeSplashSecondary();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Material(
        type: MaterialType.transparency,
        child: Container(
          color: CoreColors.redShade100,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(alignment: Alignment.topCenter, children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage(CoreAssets.logoReddit),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Visibility(
              key: Key(CoreKeys.boxLogin),
              visible: true,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: SizedBox(
                  child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: CoreColors.black.withOpacity(0.3),
                                  spreadRadius: 8,
                                  blurRadius: 5,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  CoreColors.redShade400.withOpacity(0.9),
                                  CoreColors.white.withOpacity(0.9),
                                ],
                              )),
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextField(
                                key: Key(CoreKeys.textFieldEmail), controller: store.user, hintText: CoreStrings.typeItEmail,
                              ),
                              CustomTextField(
                                key: Key(CoreKeys.textFieldPass), controller: store.pass, hintText: CoreStrings.typeItPass),
                    
                                            
                              // CustomButton(
                              //     textButton: CoreStrings.loginFirebase,
                              //     image: CoreAssets.logoGoogleBtn,
                              //     onPressed: () {
                              //       AuthService().signInWithGoogle();                        
                              //     }),
                              // CustomButton(
                              //     textButton: CoreStrings.loginReddit,
                              //     image: CoreAssets.logoRedditBtn,
                              //     onPressed: () {
                              //       Navigator.pushNamed(context, Routes.homePage);
                              //     }),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15, left: 5),
                                    child: CustomTextButton(
                                          fontSize: 15,
                                          onPressed: () {
                                            Navigator.pushNamed(context, Routes.homePage);
                                          },
                                          textButton: CoreStrings.registerHere,
                                        ),
                                  ),
                                  CustomButton(
                                    key: Key(CoreKeys.btnEntrar),
                                    primary: CoreColors.black,
                                    onPrimary: CoreColors.white,
                                    textButton: CoreStrings.logIn, width: MediaQuery.of(context).size.width * 0.25,
                                    onPressed: () async {
                                      String password = store.pass.text;
                                      String email = store.user.text;
                    
                                      var result = await auth.login(email, password);
                                      if(result.isAuthenticated){
                                        const Key('success');
                                        errorAuth = null;
                                        FirebaseCrashlytics.instance.log("Login efetuado por: $email");
                                      } else {
                                        const Key('error');
                                        errorAuth = result.msgError;
                                        FirebaseCrashlytics.instance.log("Usuário $email teve uma tentativa de login com erro!");
                                      }
                                    })
                                ],
                              ),
                              CustomText(text: errorAuth?? "", fontSize: 16)
                            ],
                          ),
                        ),
                      ),
                )
              ),
            )
          ]),
        ),
      );
    });
  }
}
