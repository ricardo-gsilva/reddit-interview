

import 'package:search_reddit/model/posts.model/rezed_icon_model.dart';

class AllAwarding {
    AllAwarding({
        this.giverCoinReward,
        this.subredditId,
        this.isNew,
        this.daysOfDripExtension,
        this.coinPrice,
        this.id,
        this.pennyDonate,
        this.awardSubType,
        this.coinReward,
        this.iconUrl,
        this.daysOfPremium,
        this.tiersByRequiredAwardings,
        this.resizedIcons,
        this.iconWidth,
        this.staticIconWidth,
        this.startDate,
        this.isEnabled,
        this.awardingsRequiredToGrantBenefits,
        this.description,
        this.endDate,
        this.stickyDurationSeconds,
        this.subredditCoinReward,
        this.count,
        this.staticIconHeight,
        this.name,
        this.resizedStaticIcons,
        this.iconFormat,
        this.iconHeight,
        this.pennyPrice,
        this.awardType,
        this.staticIconUrl,
    });

    final dynamic giverCoinReward;
    final dynamic subredditId;
    final bool? isNew;
    final dynamic daysOfDripExtension;
    final int? coinPrice;
    final String? id;
    final dynamic pennyDonate;
    final String? awardSubType;
    final int? coinReward;
    final String? iconUrl;
    final dynamic daysOfPremium;
    final dynamic tiersByRequiredAwardings;
    final List<ResizedIcon>? resizedIcons;
    final int? iconWidth;
    final int? staticIconWidth;
    final dynamic startDate;
    final bool? isEnabled;
    final dynamic awardingsRequiredToGrantBenefits;
    final String? description;
    final dynamic endDate;
    final dynamic stickyDurationSeconds;
    final int? subredditCoinReward;
    final int? count;
    final int? staticIconHeight;
    final String? name;
    final List<ResizedIcon>? resizedStaticIcons;
    final dynamic iconFormat;
    final int? iconHeight;
    final dynamic pennyPrice;
    final String? awardType;
    final String? staticIconUrl;

    factory AllAwarding.fromMap(Map<String, dynamic> json) => AllAwarding(
        giverCoinReward: json["giver_coin_reward"],
        subredditId: json["subreddit_id"],
        isNew: json["is_new"],
        daysOfDripExtension: json["days_of_drip_extension"],
        coinPrice: json["coin_price"],
        id: json["id"],
        pennyDonate: json["penny_donate"],
        awardSubType: json["award_sub_type"],
        coinReward: json["coin_reward"],
        iconUrl: json["icon_url"],
        daysOfPremium: json["days_of_premium"],
        tiersByRequiredAwardings: json["tiers_by_required_awardings"],
        resizedIcons: List<ResizedIcon>.from(json["resized_icons"].map((x) => ResizedIcon.fromMap(x))),
        iconWidth: json["icon_width"],
        staticIconWidth: json["static_icon_width"],
        startDate: json["start_date"],
        isEnabled: json["is_enabled"],
        awardingsRequiredToGrantBenefits: json["awardings_required_to_grant_benefits"],
        description: json["description"],
        endDate: json["end_date"],
        stickyDurationSeconds: json["sticky_duration_seconds"],
        subredditCoinReward: json["subreddit_coin_reward"],
        count: json["count"],
        staticIconHeight: json["static_icon_height"],
        name: json["name"],
        resizedStaticIcons: List<ResizedIcon>.from(json["resized_static_icons"].map((x) => ResizedIcon.fromMap(x))),
        iconFormat: json["icon_format"],
        iconHeight: json["icon_height"],
        pennyPrice: json["penny_price"],
        awardType: json["award_type"],
        staticIconUrl: json["static_icon_url"],
    );

    Map<String, dynamic> toMap() => {
        "giver_coin_reward": giverCoinReward,
        "subreddit_id": subredditId,
        "is_new": isNew,
        "days_of_drip_extension": daysOfDripExtension,
        "coin_price": coinPrice,
        "id": id,
        "penny_donate": pennyDonate,
        "award_sub_type": awardSubType,
        "coin_reward": coinReward,
        "icon_url": iconUrl,
        "days_of_premium": daysOfPremium,
        "tiers_by_required_awardings": tiersByRequiredAwardings,
        "resized_icons": List<ResizedIcon>.from(resizedIcons!.map((x) => x.toMap())),
        "icon_width": iconWidth,
        "static_icon_width": staticIconWidth,
        "start_date": startDate,
        "is_enabled": isEnabled,
        "awardings_required_to_grant_benefits": awardingsRequiredToGrantBenefits,
        "description": description,
        "end_date": endDate,
        "sticky_duration_seconds": stickyDurationSeconds,
        "subreddit_coin_reward": subredditCoinReward,
        "count": count,
        "static_icon_height": staticIconHeight,
        "name": name,
        "resized_static_icons": List<ResizedIcon>.from(resizedStaticIcons!.map((x) => x.toMap())),
        "icon_format": iconFormat,
        "icon_height": iconHeight,
        "penny_price": pennyPrice,
        "award_type": awardType,
        "static_icon_url": staticIconUrl,
    };
}