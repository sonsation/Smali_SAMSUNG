.class public Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BannerPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BannerPagerAdapter"


# instance fields
.field private MLogPage:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/samsung/android/app/music/milk/store/BannerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mImageScaleType:Landroid/widget/ImageView$ScaleType;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "logPage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/samsung/android/app/music/milk/store/BannerItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Lcom/samsung/android/app/music/milk/store/BannerItem;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mImageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mData:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->MLogPage:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 53
    instance-of v0, p3, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 54
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 60
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mData:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v2

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/BannerItem;

    .line 64
    .local v0, "banner":Lcom/samsung/android/app/music/milk/store/BannerItem;
    if-eqz v0, :cond_0

    .line 67
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040161

    const/4 v5, 0x0

    .line 68
    invoke-virtual {v3, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "itemView":Landroid/view/View;
    const-string v3, "BannerPagerAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "instantiateItem : banner - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const v3, 0x7f1200b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 73
    .local v1, "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mImageScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mImageScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    :cond_2
    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/BannerItem;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200d7

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {p1, v2, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 79
    const v3, 0x7f12002d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setTag(ILjava/lang/Object;)V

    .line 80
    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p2, Landroid/widget/RelativeLayout;

    .end local p2    # "object":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 105
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 148
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v1    # "context":Landroid/content/Context;
    :pswitch_0
    const v6, 0x7f12002d

    invoke-virtual {p1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 108
    .local v5, "pos":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    .line 111
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mData:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/milk/store/BannerItem;

    .line 112
    .local v3, "item":Lcom/samsung/android/app/music/milk/store/BannerItem;
    if-eqz v3, :cond_0

    .line 115
    instance-of v6, v1, Landroid/app/Activity;

    if-eqz v6, :cond_2

    move-object v6, v1

    .line 116
    check-cast v6, Landroid/app/Activity;

    sget-object v7, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->BANNER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 118
    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/store/BannerItem;->getLinkType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/store/BannerItem;->getLinkUrl()Ljava/lang/String;

    move-result-object v9

    .line 117
    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveLink(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 120
    .local v2, "isLinked":Z
    if-eqz v2, :cond_1

    .line 121
    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/store/BannerItem;->getLinkUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 123
    .local v4, "linkUri":Landroid/net/Uri;
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getActionType(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object v0

    .line 125
    .local v0, "actionType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    const-string v6, "BannerPagerAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick : linkUri - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-eqz v0, :cond_1

    .line 128
    sget-object v6, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$ActionType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 142
    .end local v0    # "actionType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "linkUri":Landroid/net/Uri;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->MLogPage:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 143
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->MLogPage:Ljava/lang/String;

    const-string v8, "9921"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .restart local v0    # "actionType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v4    # "linkUri":Landroid/net/Uri;
    :pswitch_1
    check-cast v1, Landroid/app/Activity;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 138
    .end local v0    # "actionType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    .end local v2    # "isLinked":Z
    .end local v4    # "linkUri":Landroid/net/Uri;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_2
    const-string v6, "BannerPagerAdapter"

    const-string v7, "onClick : but context is not instance of activity"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x7f1200b4
        :pswitch_0
    .end packed-switch

    .line 128
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setBannerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/samsung/android/app/music/milk/store/BannerItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "bannerList":Ljava/util/List;, "Ljava/util/List<+Lcom/samsung/android/app/music/milk/store/BannerItem;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mData:Ljava/util/List;

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "type"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/BannerPagerAdapter;->mImageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 87
    return-void
.end method
