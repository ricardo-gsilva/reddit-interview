// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CommentsPageStore on _CommentsPageStoreBase, Store {
  late final _$resultCommentAtom =
      Atom(name: '_CommentsPageStoreBase.resultComment', context: context);

  @override
  List<CommentsModel> get resultComment {
    _$resultCommentAtom.reportRead();
    return super.resultComment;
  }

  @override
  set resultComment(List<CommentsModel> value) {
    _$resultCommentAtom.reportWrite(value, super.resultComment, () {
      super.resultComment = value;
    });
  }

  late final _$purpleDataAtom =
      Atom(name: '_CommentsPageStoreBase.purpleData', context: context);

  @override
  PurpleData get purpleData {
    _$purpleDataAtom.reportRead();
    return super.purpleData;
  }

  @override
  set purpleData(PurpleData value) {
    _$purpleDataAtom.reportWrite(value, super.purpleData, () {
      super.purpleData = value;
    });
  }

  late final _$itemCountAtom =
      Atom(name: '_CommentsPageStoreBase.itemCount', context: context);

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

  late final _$isLoadingAtom =
      Atom(name: '_CommentsPageStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$getCommentsAsyncAction =
      AsyncAction('_CommentsPageStoreBase.getComments', context: context);

  @override
  Future getComments(dynamic search, dynamic idPost) {
    return _$getCommentsAsyncAction
        .run(() => super.getComments(search, idPost));
  }

  @override
  String toString() {
    return '''
resultComment: ${resultComment},
purpleData: ${purpleData},
itemCount: ${itemCount},
isLoading: ${isLoading}
    ''';
  }
}
