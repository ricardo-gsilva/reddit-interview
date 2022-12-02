// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageStore on _HomePageStoreBase, Store {
  late final _$searchAtom =
      Atom(name: '_HomePageStoreBase.search', context: context);

  @override
  TextEditingController get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(TextEditingController value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  late final _$resultPostAtom =
      Atom(name: '_HomePageStoreBase.resultPost', context: context);

  @override
  PostsModel get resultPost {
    _$resultPostAtom.reportRead();
    return super.resultPost;
  }

  @override
  set resultPost(PostsModel value) {
    _$resultPostAtom.reportWrite(value, super.resultPost, () {
      super.resultPost = value;
    });
  }

  late final _$visibleAtom =
      Atom(name: '_HomePageStoreBase.visible', context: context);

  @override
  bool get visible {
    _$visibleAtom.reportRead();
    return super.visible;
  }

  @override
  set visible(bool value) {
    _$visibleAtom.reportWrite(value, super.visible, () {
      super.visible = value;
    });
  }

  late final _$limitAtom =
      Atom(name: '_HomePageStoreBase.limit', context: context);

  @override
  String get limit {
    _$limitAtom.reportRead();
    return super.limit;
  }

  @override
  set limit(String value) {
    _$limitAtom.reportWrite(value, super.limit, () {
      super.limit = value;
    });
  }

  late final _$childDataAtom =
      Atom(name: '_HomePageStoreBase.childData', context: context);

  @override
  ChildData get childData {
    _$childDataAtom.reportRead();
    return super.childData;
  }

  @override
  set childData(ChildData value) {
    _$childDataAtom.reportWrite(value, super.childData, () {
      super.childData = value;
    });
  }

  late final _$itemCountAtom =
      Atom(name: '_HomePageStoreBase.itemCount', context: context);

  @override
  int get itemCount {
    _$itemCountAtom.reportRead();
    return super.itemCount;
  }

  @override
  set itemCount(int value) {
    _$itemCountAtom.reportWrite(value, super.itemCount, () {
      super.itemCount = value;
    });
  }

  late final _$itemPerPageAtom =
      Atom(name: '_HomePageStoreBase.itemPerPage', context: context);

  @override
  int get itemPerPage {
    _$itemPerPageAtom.reportRead();
    return super.itemPerPage;
  }

  @override
  set itemPerPage(int value) {
    _$itemPerPageAtom.reportWrite(value, super.itemPerPage, () {
      super.itemPerPage = value;
    });
  }

  late final _$pageAtom =
      Atom(name: '_HomePageStoreBase.page', context: context);

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$indexCountAtom =
      Atom(name: '_HomePageStoreBase.indexCount', context: context);

  @override
  int get indexCount {
    _$indexCountAtom.reportRead();
    return super.indexCount;
  }

  @override
  set indexCount(int value) {
    _$indexCountAtom.reportWrite(value, super.indexCount, () {
      super.indexCount = value;
    });
  }

  late final _$idPostAtom =
      Atom(name: '_HomePageStoreBase.idPost', context: context);

  @override
  String get idPost {
    _$idPostAtom.reportRead();
    return super.idPost;
  }

  @override
  set idPost(String value) {
    _$idPostAtom.reportWrite(value, super.idPost, () {
      super.idPost = value;
    });
  }

  late final _$getTopPostsAsyncAction =
      AsyncAction('_HomePageStoreBase.getTopPosts', context: context);

  @override
  Future getTopPosts(dynamic search, dynamic limit) {
    return _$getTopPostsAsyncAction.run(() => super.getTopPosts(search, limit));
  }

  @override
  String toString() {
    return '''
search: ${search},
resultPost: ${resultPost},
visible: ${visible},
limit: ${limit},
childData: ${childData},
itemCount: ${itemCount},
itemPerPage: ${itemPerPage},
page: ${page},
indexCount: ${indexCount},
idPost: ${idPost}
    ''';
  }
}
