import 'package:flutter_test/flutter_test.dart';
import 'package:search_reddit/service/service_locator.dart';
import 'package:search_reddit/views/screenPage/splash_screen.dart';
import 'package:search_reddit/views/screenPage/splash_screen_store.dart';
import 'package:search_reddit/widgets/custom_textfield.dart';
import 'package:search_reddit/main.dart' as app;

void main(){  
  app.main();

  group('Teste de Widgets', (){    

    test("boxLogin", () {
      expect(SplashScreenStore().visible, false);
    });

    test("controllerIsEmpty", () {
      expect(SplashScreenStore().user, "");
      expect(SplashScreenStore().pass, "");
    });
  });
}