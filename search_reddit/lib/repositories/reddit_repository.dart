import 'dart:convert';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:search_reddit/core/core_colors.dart';
import 'package:search_reddit/core/core_strings.dart';
import 'package:http/http.dart' as http;
import 'package:search_reddit/model/comments.model/comments_model.dart';
import 'package:search_reddit/model/comments.model/comments_model_data.dart';
import 'package:search_reddit/model/posts.model/posts_model.dart';

const baseUrl = 'https://www.reddit.com/';

class RedditRepository {

  Future<PostsModel> getPosts(String search, String limit) async {    

      final queryParameters = {
        "limit": limit
      };
      final urlParsed = Uri.parse(baseUrl);
      final url = Uri.http(urlParsed.authority, 'r/$search/top.json', queryParameters);
      final response = await http.get(url);
      
      if(response.statusCode == 200){
        final decode = jsonDecode(response.body);
        FirebaseCrashlytics.instance.log('Carregando postagem para o termo: $search');          
        return PostsModel.fromMap(decode);
      } else {
        print('object');
        Fluttertoast.showToast(
          msg: CoreStrings.errorSearch, 
          fontSize: 20,
          timeInSecForIosWeb: 2,
          backgroundColor: CoreColors.black,
          gravity: ToastGravity.TOP
        );
        FirebaseCrashlytics.instance.log('Não foi possível fazer a busca para o termo: $search');
        return PostsModel.empty();
      }
  }

  Future<List<CommentsModel>> getComments(String search, String idPost) async {
      final urlParsed = Uri.parse(baseUrl);
      final url = Uri.http(urlParsed.authority, 'r/$search/comments/$idPost.json');
      final response = await http.get(url);
      
      if(response.statusCode == 200){
        final decode = jsonDecode(response.body);
        List<CommentsModel> list = [];
        for(var comment in decode){
          list.add(CommentsModel.fromMap(comment));
        }
        FirebaseCrashlytics.instance.log('Carregando comentários da postagem: $idPost');
        return list;
      } else {
        Fluttertoast.showToast(
          msg: CoreStrings.errorSearch, 
          fontSize: 20,
          timeInSecForIosWeb: 2,
          backgroundColor: CoreColors.black,
          gravity: ToastGravity.TOP
        );
        FirebaseCrashlytics.instance.log('Não foi possível carregar os comentários da postagem: $idPost');
        return List<CommentsModel>.empty();
      }
  }
}