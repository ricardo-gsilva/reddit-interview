import 'package:search_reddit/model/comments.model/c_gildings_model.dart';

class HilariousData {
    HilariousData({
        this.subredditId,
        this.approvedAtUtc,
        this.authorIsBlocked,
        this.commentType,
        this.awarders,
        this.modReasonBy,
        this.bannedBy,
        this.authorFlairType,
        this.totalAwardsReceived,
        this.subreddit,
        this.authorFlairTemplateId,
        this.likes,
        this.replies,
        this.userReports,
        this.saved,
        this.id,
        this.bannedAtUtc,
        this.modReasonTitle,
        this.gilded,
        this.archived,
        this.collapsedReasonCode,
        this.noFollow,
        this.author,
        this.canModPost,
        this.sendReplies,
        this.parentId,
        this.score,
        this.authorFullname,
        this.removalReason,
        this.approvedBy,
        this.modNote,
        this.allAwardings,
        this.collapsed,
        this.body,
        this.edited,
        this.topAwardedType,
        this.authorFlairCssClass,
        this.name,
        this.isSubmitter,
        this.downs,
        this.authorFlairRichtext,
        this.authorPatreonFlair,
        this.bodyHtml,
        this.gildings,
        this.collapsedReason,
        this.distinguished,
        this.associatedAward,
        this.stickied,
        this.authorPremium,
        this.canGild,
        this.linkId,
        this.unrepliableReason,
        this.authorFlairTextColor,
        this.scoreHidden,
        this.permalink,
        this.subredditType,
        this.locked,
        this.reportReasons,
        this.created,
        this.authorFlairText,
        this.treatmentTags,
        this.createdUtc,
        this.subredditNamePrefixed,
        this.controversiality,
        this.depth,
        this.authorFlairBackgroundColor,
        this.collapsedBecauseCrowdControl,
        this.modReports,
        this.numReports,
        this.ups,
    });

    final String? subredditId;
    final dynamic approvedAtUtc;
    final bool? authorIsBlocked;
    final dynamic commentType;
    final List<dynamic>? awarders;
    final dynamic modReasonBy;
    final dynamic bannedBy;
    final String? authorFlairType;
    final int? totalAwardsReceived;
    final String? subreddit;
    final dynamic authorFlairTemplateId;
    final dynamic likes;
    final String? replies;
    final List<dynamic>? userReports;
    final bool? saved;
    final String? id;
    final dynamic bannedAtUtc;
    final dynamic modReasonTitle;
    final int? gilded;
    final bool? archived;
    final dynamic collapsedReasonCode;
    final bool? noFollow;
    final String? author;
    final bool? canModPost;
    final bool? sendReplies;
    final String? parentId;
    final int? score;
    final String? authorFullname;
    final dynamic removalReason;
    final dynamic approvedBy;
    final dynamic modNote;
    final List<dynamic>? allAwardings;
    final bool? collapsed;
    final String? body;
    final bool? edited;
    final dynamic topAwardedType;
    final dynamic authorFlairCssClass;
    final String? name;
    final bool? isSubmitter;
    final int? downs;
    final List<dynamic>? authorFlairRichtext;
    final bool? authorPatreonFlair;
    final String? bodyHtml;
    final Gildings? gildings;
    final dynamic collapsedReason;
    final dynamic distinguished;
    final dynamic associatedAward;
    final bool? stickied;
    final bool? authorPremium;
    final bool? canGild;
    final String? linkId;
    final dynamic unrepliableReason;
    final dynamic authorFlairTextColor;
    final bool? scoreHidden;
    final String? permalink;
    final String? subredditType;
    final bool? locked;
    final dynamic reportReasons;
    final int? created;
    final dynamic authorFlairText;
    final List<dynamic>? treatmentTags;
    final int? createdUtc;
    final String? subredditNamePrefixed;
    final int? controversiality;
    final int? depth;
    final dynamic authorFlairBackgroundColor;
    final dynamic collapsedBecauseCrowdControl;
    final List<dynamic>? modReports;
    final dynamic numReports;
    final int? ups;

    factory HilariousData.fromMap(Map<String, dynamic> json) => HilariousData(
        subredditId: json["subreddit_id"],
        approvedAtUtc: json["approved_at_utc"],
        authorIsBlocked: json["author_is_blocked"],
        commentType: json["comment_type"],
        awarders: List<dynamic>.from(json["awarders"].map((x) => x)),
        modReasonBy: json["mod_reason_by"],
        bannedBy: json["banned_by"],
        authorFlairType: json["author_flair_type"],
        totalAwardsReceived: json["total_awards_received"],
        subreddit: json["subreddit"],
        authorFlairTemplateId: json["author_flair_template_id"],
        likes: json["likes"],
        replies: json["replies"],
        userReports: List<dynamic>.from(json["user_reports"].map((x) => x)),
        saved: json["saved"],
        id: json["id"],
        bannedAtUtc: json["banned_at_utc"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"],
        archived: json["archived"],
        collapsedReasonCode: json["collapsed_reason_code"],
        noFollow: json["no_follow"],
        author: json["author"],
        canModPost: json["can_mod_post"],
        sendReplies: json["send_replies"],
        parentId: json["parent_id"],
        score: json["score"],
        authorFullname: json["author_fullname"],
        removalReason: json["removal_reason"],
        approvedBy: json["approved_by"],
        modNote: json["mod_note"],
        allAwardings: List<dynamic>.from(json["all_awardings"].map((x) => x)),
        collapsed: json["collapsed"],
        body: json["body"],
        edited: json["edited"],
        topAwardedType: json["top_awarded_type"],
        authorFlairCssClass: json["author_flair_css_class"],
        name: json["name"],
        isSubmitter: json["is_submitter"],
        downs: json["downs"],
        authorFlairRichtext: List<dynamic>.from(json["author_flair_richtext"].map((x) => x)),
        authorPatreonFlair: json["author_patreon_flair"],
        bodyHtml: json["body_html"],
        gildings: Gildings.fromMap(json["gildings"]),
        collapsedReason: json["collapsed_reason"],
        distinguished: json["distinguished"],
        associatedAward: json["associated_award"],
        stickied: json["stickied"],
        authorPremium: json["author_premium"],
        canGild: json["can_gild"],
        linkId: json["link_id"],
        unrepliableReason: json["unrepliable_reason"],
        authorFlairTextColor: json["author_flair_text_color"],
        scoreHidden: json["score_hidden"],
        permalink: json["permalink"],
        subredditType: json["subreddit_type"],
        locked: json["locked"],
        reportReasons: json["report_reasons"],
        created: json["created"],
        authorFlairText: json["author_flair_text"],
        treatmentTags: List<dynamic>.from(json["treatment_tags"].map((x) => x)),
        createdUtc: json["created_utc"],
        subredditNamePrefixed: json["subreddit_name_prefixed"],
        controversiality: json["controversiality"],
        depth: json["depth"],
        authorFlairBackgroundColor: json["author_flair_background_color"],
        collapsedBecauseCrowdControl: json["collapsed_because_crowd_control"],
        modReports: List<dynamic>.from(json["mod_reports"].map((x) => x)),
        numReports: json["num_reports"],
        ups: json["ups"],
    );

    Map<String, dynamic> toMap() => {
        "subreddit_id": subredditId,
        "approved_at_utc": approvedAtUtc,
        "author_is_blocked": authorIsBlocked,
        "comment_type": commentType,
        "awarders": List<dynamic>.from(awarders!.map((x) => x)),
        "mod_reason_by": modReasonBy,
        "banned_by": bannedBy,
        "author_flair_type": authorFlairType,
        "total_awards_received": totalAwardsReceived,
        "subreddit": subreddit,
        "author_flair_template_id": authorFlairTemplateId,
        "likes": likes,
        "replies": replies,
        "user_reports": List<dynamic>.from(userReports!.map((x) => x)),
        "saved": saved,
        "id": id,
        "banned_at_utc": bannedAtUtc,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded,
        "archived": archived,
        "collapsed_reason_code": collapsedReasonCode,
        "no_follow": noFollow,
        "author": author,
        "can_mod_post": canModPost,
        "send_replies": sendReplies,
        "parent_id": parentId,
        "score": score,
        "author_fullname": authorFullname,
        "removal_reason": removalReason,
        "approved_by": approvedBy,
        "mod_note": modNote,
        "all_awardings": List<dynamic>.from(allAwardings!.map((x) => x)),
        "collapsed": collapsed,
        "body": body,
        "edited": edited,
        "top_awarded_type": topAwardedType,
        "author_flair_css_class": authorFlairCssClass,
        "name": name,
        "is_submitter": isSubmitter,
        "downs": downs,
        "author_flair_richtext": List<dynamic>.from(authorFlairRichtext!.map((x) => x)),
        "author_patreon_flair": authorPatreonFlair,
        "body_html": bodyHtml,
        "gildings": gildings!.toMap(),
        "collapsed_reason": collapsedReason,
        "distinguished": distinguished,
        "associated_award": associatedAward,
        "stickied": stickied,
        "author_premium": authorPremium,
        "can_gild": canGild,
        "link_id": linkId,
        "unrepliable_reason": unrepliableReason,
        "author_flair_text_color": authorFlairTextColor,
        "score_hidden": scoreHidden,
        "permalink": permalink,
        "subreddit_type": subredditType,
        "locked": locked,
        "report_reasons": reportReasons,
        "created": created,
        "author_flair_text": authorFlairText,
        "treatment_tags": List<dynamic>.from(treatmentTags!.map((x) => x)),
        "created_utc": createdUtc,
        "subreddit_name_prefixed": subredditNamePrefixed,
        "controversiality": controversiality,
        "depth": depth,
        "author_flair_background_color": authorFlairBackgroundColor,
        "collapsed_because_crowd_control": collapsedBecauseCrowdControl,
        "mod_reports": List<dynamic>.from(modReports!.map((x) => x)),
        "num_reports": numReports,
        "ups": ups,
    };
}

