import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:search_reddit/core/core_colors.dart';
import 'package:search_reddit/core/core_keys.dart';
import 'package:search_reddit/core/core_strings.dart';
import 'package:search_reddit/service/service_locator.dart';
import 'package:search_reddit/util/rotes.dart';
import 'package:search_reddit/views/commentsPage/comments_page_store.dart';
import 'package:search_reddit/views/homePage/home_page_store.dart';
import 'package:search_reddit/widgets/custom_button.dart';
import 'package:search_reddit/widgets/custom_button_search.dart';
import 'package:search_reddit/widgets/custom_text.dart';
import 'package:search_reddit/widgets/custom_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageStore homePageStore = getIt();
  final CommentsPageStore commentsPageStore = getIt();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key(CoreKeys.homePage),
      backgroundColor: CoreColors.redShade50,
      appBar: appBar(),
      body: body(),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: CustomText(
        text: CoreStrings.homeTitle,
        fontSize: 22,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: (){
              showDialog(
                context: context, 
                builder: (_){
                  return AlertDialog(
                    title: CustomText(fontSize: 22, text: "Deseja deslogar?",),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButton(
                          primary: CoreColors.black,
                          onPrimary: CoreColors.white,
                          textButton: 'Não',
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          width: 100
                      ),
                      CustomButton(
                          primary: CoreColors.redShade400,
                          onPrimary: CoreColors.white,
                          textButton: 'Sim',
                          onPressed: () async{
                            await FirebaseAuth.instance.signOut();
                            Navigator.pushNamed((_), Routes.splashScreen);
                          },
                          width: 100
                      )
                        ],
                      )
                    ],
                    
                  );
                }
              );
            }, 
            icon: const Icon(Icons.logout)),
        ),
      ],
      
      centerTitle: true,
      backgroundColor: CoreColors.redShade400,
    );
  }

  Widget body() {
    int itemPerPage = homePageStore.itemPerPage;
    int page = homePageStore.page;
    int totalItems = homePageStore.resultPost.data.children.length;
    return Observer(builder: (_) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomTextField(
                    key: Key(CoreKeys.search), controller: homePageStore.search, hintText: CoreStrings.searchHintText),
                  CustomButtonSearch(
                      icon: Icons.search,
                      onPressed: () {
                        homePageStore.limit = '10';
                        
                        homePageStore.getTopPosts(
                            homePageStore.search.text, homePageStore.limit);
                      }),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.69,
                child: Visibility(
                    visible: homePageStore.visible,
                    child: SingleChildScrollView(
                      child: ListView.builder(
                          key: Key(CoreKeys.listViewBuilder),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: homePageStore.itemPerPage,
                          itemBuilder: (context, index) {                          
                            List list = homePageStore.resultPost.data.children;
                            if (index + (page * itemPerPage) > totalItems - 1) {
                              return Container();
                            } else {
                              final i = getItemIndex(list, index);
                              return ListTile(
                                leading: SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: CircleAvatar(                                  
                                    backgroundColor: CoreColors.white,
                                    child:
                                        Image.network(i.data.thumbnail),
                                  ),
                                ),
                                title: CustomText(
                                  text: '${list[index].data.title}',
                                  fontSize: 20,
                                ),
                                trailing: const Icon(Icons.play_arrow),
                                onTap: () {
                                  commentsPageStore.getComments(homePageStore.search.text, i.data.id);
                                  Navigator.pushNamed(context, Routes.commentsPage);
                                },
                              );
                            }
                            
                          }),
                    )),
              ),
              Observer(builder: (_) {
                return Visibility(
                  visible: homePageStore.search.text.isEmpty? false : true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Visibility(
                        visible: homePageStore.itemCount == 10? false : true,
                        child: CustomButtonSearch(
                            icon: Icons.arrow_back,
                            onPressed: () {
                              setState(() {
                                homePageStore.itemCount -= 10;
                                homePageStore.indexCount -= 10;
                              });
                            }),
                      ),
                      CustomText(
                          text:
                              'Items: ${homePageStore.itemCount - 9} ao ${homePageStore.itemCount}',
                          fontSize: 15),                   
                      Visibility(
                        visible: homePageStore.itemCount == 100? false : true,
                        child: CustomButtonSearch(
                            icon: Icons.arrow_forward,
                            onPressed: (){
                              setState(() {
                                homePageStore.itemCount += 10;
                                homePageStore.indexCount += 10;
                                homePageStore.page += 1;
                              });
                            }),
                      ),                    
                    ],
                  ),
                );
              })
            ],
          ),
        ),
      );
    });
  }

  getItemIndex(list, index){
    var result = list[index + (homePageStore.page * homePageStore.itemPerPage)];
    return result;
  }
}
