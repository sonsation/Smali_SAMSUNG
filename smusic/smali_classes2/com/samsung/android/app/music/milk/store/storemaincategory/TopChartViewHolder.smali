.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;
.super Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
.source "TopChartViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TopChartViewHolder"


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;

.field private mContext:Landroid/content/Context;

.field mHeader:Landroid/view/View;

.field mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

.field mPlayAllContainer:Landroid/widget/RelativeLayout;

.field private mSimpleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;

.field mViewpager:Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mContext:Landroid/content/Context;

    .line 68
    const v0, 0x7f1202cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mHeader:Landroid/view/View;

    .line 69
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mTitle:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f120430

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mPlayAllContainer:Landroid/widget/RelativeLayout;

    .line 71
    const v0, 0x7f120425

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    .line 72
    const v0, 0x7f120424

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mPlayAllContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    const v1, 0x7f040175

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method private initTitle()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a03e0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    return-void
.end method

.method private initViewPager(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 106
    new-instance v0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mViewpager:Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 109
    return-void
.end method

.method private playTopChartTracks(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "displayId"    # Ljava/lang/String;
    .param p2, "displayType"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string v0, "TopChartViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTopChartTracks : displayId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getTopChartTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 140
    const-string v0, "TopChartViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onApiCalled : reqId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reqType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 145
    const-string v6, "TopChartViewHolder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " onApiHandled : reqType - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rspType - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sparse-switch p2, :sswitch_data_0

    .line 198
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 148
    .restart local p4    # "rspData":Ljava/lang/Object;
    :sswitch_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    instance-of v6, p4, Lcom/samsung/android/app/music/common/model/SimpleTrackList;

    if-eqz v6, :cond_0

    .line 151
    check-cast p4, Lcom/samsung/android/app/music/common/model/SimpleTrackList;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/SimpleTrackList;->getTrackList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    .line 152
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    .line 153
    invoke-static {v7}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getAlbumIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v6, p0, v7, v8}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumImageUrls(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    .restart local p4    # "rspData":Ljava/lang/Object;
    :sswitch_1
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mContext:Landroid/content/Context;

    const-string v7, "music_service_pref"

    const/4 v8, 0x4

    .line 161
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v7, "shuffle"

    const/4 v8, 0x0

    .line 162
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/4 v2, 0x1

    .line 165
    .local v2, "isShuffleOn":Z
    :goto_1
    packed-switch p3, :pswitch_data_1

    .line 189
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 190
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mContext:Landroid/content/Context;

    const v8, 0x100050

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    if-eqz v2, :cond_8

    const/4 v6, -0x1

    :goto_2
    invoke-static {v7, v8, v9, v10, v6}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 193
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    goto :goto_0

    .line 162
    .end local v2    # "isShuffleOn":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2    # "isShuffleOn":Z
    :pswitch_1
    move-object v3, p4

    .line 167
    check-cast v3, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;

    .line 168
    .local v3, "list":Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    .line 169
    .local v1, "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/AlbumImageUrls;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 170
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;->getUrls()Ljava/util/ArrayList;

    move-result-object v5

    .line 171
    .local v5, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/ImageUrl;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ImageUrl;

    .line 172
    .local v4, "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    const/16 v7, 0x258

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getSize()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 173
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 174
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    .line 175
    const-string v7, "TopChartViewHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "track :  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v4    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 182
    .end local v5    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/ImageUrl;>;"
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 183
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mContext:Landroid/content/Context;

    const v8, 0x100050

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    if-eqz v2, :cond_7

    const/4 v6, -0x1

    :goto_4
    invoke-static {v7, v8, v9, v10, v6}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 186
    :cond_6
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mSimpleTracks:Ljava/util/List;

    goto/16 :goto_0

    .line 183
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 190
    .end local v0    # "i":I
    .end local v1    # "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/AlbumImageUrls;>;"
    .end local v3    # "list":Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x5dd -> :sswitch_1
        0x2b5e -> :sswitch_0
    .end sparse-switch

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 165
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onBindView(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 2
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->initViewPager(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V

    .line 92
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 116
    :sswitch_0
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;

    .line 118
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;->getData()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v2

    .line 117
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->movePageMore(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "931"

    const-string v3, "9302"

    .line 120
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;->getData()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mAdapter:Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;

    .line 125
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder$TopChartPagerAdapter;->getData()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayType()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->playTopChartTracks(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "931"

    const-string v3, "1543"

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1202cd -> :sswitch_0
        0x7f120430 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->initTitle()V

    .line 86
    return-void
.end method

.method public onUnBindView()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartViewHolder;->mIndicator:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;->clearAnimation()V

    .line 99
    :cond_0
    return-void
.end method
