import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:search_reddit/core/core_keys.dart';
import 'package:search_reddit/main.dart' as app;

void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("boxLogin", (WidgetTester test) async {
    app.main();
    await Future.delayed(const Duration(seconds: 3));
    await test.pumpAndSettle();

    expect(find.byKey(Key(CoreKeys.boxLogin)), findsWidgets);
  });

  

  testWidgets("testLogin", (WidgetTester test) async{
      app.main();
      
      await test.pumpAndSettle();


      await test.enterText(find.byKey(Key(CoreKeys.textFieldEmail)), "user@teste.com");
      await Future.delayed(const Duration(seconds: 3));
      await test.enterText(find.byKey(Key(CoreKeys.textFieldPass)), "123456");
      await Future.delayed(const Duration(seconds: 1));
      await test.pumpAndSettle();

      await test.tap(find.byKey(Key(CoreKeys.btnEntrar)));

      await test.pumpAndSettle();

      expect(find.byKey(Key(CoreKeys.homePage)), findsOneWidget);
        
    });

      testWidgets("testSearchPosts", (WidgetTester test) async{
      app.main();
      
      await test.pumpAndSettle();

      await test.enterText(find.byKey(Key(CoreKeys.search), skipOffstage: true), "futebol");      
      await test.pumpAndSettle();
      
      await test.tap(find.byKey(Key(CoreKeys.btnSearch, )));
      await test.pumpAndSettle();
      await test.pumpAndSettle();
      await test.pumpAndSettle();
      await test.pumpAndSettle();

      await Future.delayed(const Duration(seconds: 5));
      
      expect(find.byKey(Key(CoreKeys.listViewBuilder)), findsOneWidget);
        
    });
}