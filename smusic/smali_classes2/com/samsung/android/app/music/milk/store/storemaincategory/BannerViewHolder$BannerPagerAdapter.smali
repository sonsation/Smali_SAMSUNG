.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BannerViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BannerPagerAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 154
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;->mContext:Landroid/content/Context;

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 157
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 158
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 162
    instance-of v0, p3, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 163
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 165
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getBannerList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getBannerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 169
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    if-nez v5, :cond_0

    move-object v3, v4

    .line 191
    :goto_0
    return-object v3

    .line 173
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getBannerList()Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "bannerList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    .line 175
    goto :goto_0

    .line 178
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;

    .line 179
    .local v2, "itemData":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;
    if-nez v2, :cond_2

    move-object v3, v4

    .line 180
    goto :goto_0

    .line 183
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040166

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 184
    .local v3, "rootView":Landroid/view/View;
    const v5, 0x7f1200b4

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 185
    .local v1, "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200d7

    invoke-static {v1, v5, v4, v6}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setImage(Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 187
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    const v4, 0x7f12002d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setTag(ILjava/lang/Object;)V

    .line 189
    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 205
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 211
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 236
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 213
    .restart local v0    # "context":Landroid/content/Context;
    :pswitch_0
    const v3, 0x7f12002d

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 214
    .local v2, "pos":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 215
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getBannerList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;

    .line 216
    .local v1, "itemData":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;
    if-nez v1, :cond_1

    .line 217
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "move : banner is null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    instance-of v3, v0, Landroid/app/Activity;

    if-nez v3, :cond_2

    .line 222
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onClick : but context is not instance of activity"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_2
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    sget-object v3, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->BANNER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 227
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->getLinkType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainBanner;->getLinkUrl()Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-static {v0, v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveLink(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "931"

    const-string v5, "9301"

    .line 229
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x7f1200b4
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 0
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/BannerViewHolder$BannerPagerAdapter;->notifyDataSetChanged()V

    .line 241
    return-void
.end method
