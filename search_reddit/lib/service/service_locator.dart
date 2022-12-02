import 'package:get_it/get_it.dart';
import 'package:search_reddit/model/posts.model/child_model_data.dart';
import 'package:search_reddit/repositories/reddit_repository.dart';
import 'package:search_reddit/views/commentsPage/comments_page_store.dart';
import 'package:search_reddit/views/homePage/home_page_store.dart';
import 'package:search_reddit/views/screenPage/splash_screen_store.dart';

final getIt = GetIt.instance;

void setup(){
  getIt.registerFactory(() => RedditRepository());
  getIt.registerSingleton<ChildData>(ChildData());
  getIt.registerSingleton<SplashScreenStore>(SplashScreenStore());
  getIt.registerSingleton<HomePageStore>(HomePageStore());
  getIt.registerSingleton<CommentsPageStore>(CommentsPageStore());
  
  
  

}