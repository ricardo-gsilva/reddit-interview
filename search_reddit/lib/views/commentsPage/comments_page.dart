import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:search_reddit/core/core_colors.dart';
import 'package:search_reddit/core/core_strings.dart';
import 'package:search_reddit/model/comments.model/purple_data_model.dart';
import 'package:search_reddit/service/service_locator.dart';
import 'package:search_reddit/views/commentsPage/comments_page_store.dart';
import 'package:search_reddit/widgets/custom_text.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({Key? key}) : super(key: key);

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final CommentsPageStore commentsPageStore = getIt();
  PurpleData purpleData = getIt();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: bodyComments(),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: CustomText(
        text: CoreStrings.commentTitle,
        fontSize: 22,
      ),
      centerTitle: true,
      backgroundColor: CoreColors.redShade400,
    );
  }

  Widget bodyComments(){
    return Observer(builder: (_) {
      return LoadingOverlay(
        isLoading: commentsPageStore.isLoading,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.69,
              child: SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: commentsPageStore.itemCount,
                    itemBuilder: (context, index) {
                      List listComments = commentsPageStore.resultComment[0].data.children;
                        return ListTile(
                          leading: SizedBox(
                            height: 80,
                            width: 80,
                            child: CircleAvatar(                                  
                              backgroundColor: CoreColors.white,
                              child:
                                  Image.network(listComments[index].purpleData.bodyHtml?? ''),
                            ),
                          ),
                          title: CustomText(
                            text: 'Autor: ${listComments[index].author}',
                            fontSize: 20,
                          ),
                          trailing: const Icon(Icons.play_arrow),
                        );
                      })
                    )
                  )
                )
              ),
      );                    
          });
  }
}