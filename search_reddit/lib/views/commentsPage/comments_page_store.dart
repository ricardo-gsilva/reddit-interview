import 'package:mobx/mobx.dart';
import 'package:search_reddit/model/comments.model/comments_model.dart';
import 'package:search_reddit/model/comments.model/purple_data_model.dart';
import 'package:search_reddit/repositories/reddit_repository.dart';
import 'package:search_reddit/service/service_locator.dart';
part 'comments_page_store.g.dart';

class CommentsPageStore = _CommentsPageStoreBase with _$CommentsPageStore;

abstract class _CommentsPageStoreBase with Store {
  final RedditRepository redditRepository = getIt();

@observable
  List<CommentsModel> resultComment = List<CommentsModel>.empty();

@observable
  late PurpleData purpleData;

@observable
  int itemCount = 0;

@observable
  bool isLoading = true;

@action
  getComments(search, idPost) async{
    resultComment = await redditRepository.getComments(search.toString(), idPost);
    
    print('Commentsss $resultComment');
    // if(resultComment != CommentsModel.empty()){
      isLoading = false;
    itemCount = resultComment[0].data.children.length;
    // purpleData = resultComment[0].data.children[0].data;
    // }
  }  
}