.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MusicVideoItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TopChartItemViewHolder"


# instance fields
.field mArtist:Landroid/widget/TextView;

.field mContainer:Landroid/widget/LinearLayout;

.field mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

.field mExplicit:Landroid/widget/TextView;

.field mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    const v0, 0x7f120423

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mContainer:Landroid/widget/LinearLayout;

    .line 46
    const v0, 0x7f1200b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 47
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f120129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mArtist:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f1203f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mExplicit:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setDimensRatio(F)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    const v1, 0x7f04016e

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public changeContents(ILcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    .param p3, "imageLoadingListener"    # Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    .prologue
    .line 57
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

    .line 59
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mContainer:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a03de

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a032f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mArtist:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/ArtistUtils;->makeArtists(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0200db

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setImage(Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getExplicit()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mExplicit:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mExplicit:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getMvInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    move-result-object v1

    .line 78
    .local v1, "info":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;
    if-eqz v1, :cond_0

    .line 79
    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 80
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;->getMvId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->isExplicit()Z

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;Z)Z

    .line 81
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "931"

    const-string v4, "9316"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    const-string v2, "TopChartItemViewHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick : Warning! No mvInfo attribute, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/MusicVideoItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x7f120423
        :pswitch_0
    .end packed-switch
.end method
