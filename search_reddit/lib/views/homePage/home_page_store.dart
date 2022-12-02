import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:search_reddit/model/comments.model/comments_model.dart';
import 'package:search_reddit/model/posts.model/child_model_data.dart';
import 'package:search_reddit/model/posts.model/posts_model.dart';
import 'package:search_reddit/repositories/reddit_repository.dart';
import 'package:search_reddit/service/service_locator.dart';
part 'home_page_store.g.dart';

class HomePageStore = _HomePageStoreBase with _$HomePageStore;

abstract class _HomePageStoreBase with Store {
  final RedditRepository redditRepository = getIt();

@observable
  TextEditingController search = TextEditingController();

@observable
  PostsModel resultPost = PostsModel.empty();

@observable
  bool visible = false;

@observable
  String limit = '';

@observable
  ChildData childData = getIt();

@observable
  int itemCount = 10;

@observable
  int itemPerPage = 10;

@observable
  int page = 0;

@observable
  int indexCount = 0;

@observable
  String idPost = '';

@action
  getTopPosts(search, limit) async{
    resultPost = await redditRepository.getPosts(search.toString(), limit);
    if(resultPost != PostsModel.empty()){      
      visible = true;
      childData = resultPost.data.children[0].data;
      
    }
  }

@action
  getItemIndex(list, index){
    var result = list[index + (page * itemPerPage)];
    return result;
  }
}