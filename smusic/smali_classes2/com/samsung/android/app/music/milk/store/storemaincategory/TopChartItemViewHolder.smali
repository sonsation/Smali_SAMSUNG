.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TopChartItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TopChartItemViewHolder"


# instance fields
.field mArtist:Landroid/widget/TextView;

.field mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

.field mDivider:Landroid/view/View;

.field mExplicit:Landroid/widget/TextView;

.field mRankView:Lcom/samsung/android/app/music/milk/store/widget/RankView;

.field mSongImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field mSongInfoContainer:Landroid/widget/LinearLayout;

.field mSongPlay:Landroid/widget/ImageView;

.field mSongPlayContainer:Landroid/widget/RelativeLayout;

.field mTitle:Landroid/widget/TextView;

.field mTitleNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 70
    const v0, 0x7f12042e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mSongImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 71
    const v0, 0x7f120434

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mTitleNumber:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f120416

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/RankView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mRankView:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    .line 73
    const v0, 0x7f1203f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mExplicit:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f120129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mArtist:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f12042f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mSongPlay:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f120248

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mDivider:Landroid/view/View;

    .line 78
    const v0, 0x7f120433

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mSongInfoContainer:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f120435

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mSongPlayContainer:Landroid/widget/RelativeLayout;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mSongInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mSongPlayContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mSongImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mSongPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mTitleNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mRankView:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setVisibility(I)V

    .line 88
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    const v1, 0x7f040176

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public changeContents(ILcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .prologue
    const/4 v4, 0x0

    .line 97
    const-string v0, "TopChartItemViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeContents : pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mSongImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0200db

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setImage(Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mTitleNumber:Landroid/widget/TextView;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mArtist:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/ArtistUtils;->makeArtists(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mRankView:Lcom/samsung/android/app/music/milk/store/widget/RankView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getRankingChg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setRankChange(I)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getExplicit()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mExplicit:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    :goto_0
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mDivider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :goto_1
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mExplicit:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 124
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getAlbumInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;

    move-result-object v0

    .line 125
    .local v0, "albumInfo":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;
    if-eqz v0, :cond_0

    .line 126
    sget-object v3, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 127
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getAlbumInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    goto :goto_0

    .line 129
    :cond_0
    const-string v3, "TopChartItemViewHolder"

    const-string v4, "onClick : album info is null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v0    # "albumInfo":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;
    :sswitch_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v2, "simpleTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->from(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder$1;-><init>(Lcom/samsung/android/app/music/milk/store/storemaincategory/TopChartItemViewHolder;Ljava/util/List;Landroid/content/Context;)V

    .line 185
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getAlbumIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    .line 138
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumImageUrls(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "931"

    const-string v5, "1081"

    .line 188
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :sswitch_data_0
    .sparse-switch
        0x7f12042e -> :sswitch_0
        0x7f120433 -> :sswitch_1
        0x7f120435 -> :sswitch_1
    .end sparse-switch
.end method
