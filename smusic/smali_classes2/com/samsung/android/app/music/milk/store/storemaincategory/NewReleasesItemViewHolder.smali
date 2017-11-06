.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NewReleasesItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NewReleasesItemViewHolder"


# instance fields
.field mArtist:Landroid/widget/TextView;

.field mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

.field mItemContainer:Landroid/widget/RelativeLayout;

.field mSongImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field mSongPlay:Landroid/widget/ImageView;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 57
    const v0, 0x7f12042e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mSongImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 58
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f120129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mArtist:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f12042f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mSongPlay:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f120423

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mItemContainer:Landroid/widget/RelativeLayout;

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mSongPlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mSongPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mItemContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    const v1, 0x7f040170

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method private playAlbumById(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "albumId"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder$1;-><init>(Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;I)I

    .line 120
    return-void
.end method


# virtual methods
.method public changeContents(ILcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .prologue
    .line 70
    const-string v0, "NewReleasesItemViewHolder"

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

    .line 72
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mSongImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0200db

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setImage(Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mArtist:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/ArtistUtils;->makeArtists(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 83
    :sswitch_0
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 84
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getContentId()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 85
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "931"

    const-string v3, "9307"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getAlbumInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainAlbumInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/NewReleasesItemViewHolder;->playAlbumById(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "931"

    const-string v3, "9308"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :sswitch_data_0
    .sparse-switch
        0x7f120423 -> :sswitch_0
        0x7f12042f -> :sswitch_1
    .end sparse-switch
.end method
