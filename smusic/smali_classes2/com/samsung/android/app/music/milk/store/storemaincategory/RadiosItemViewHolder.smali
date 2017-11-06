.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RadiosItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RadiosItemViewHolder"


# instance fields
.field private final mCallback:Landroid/os/Handler$Callback;

.field private mCallbackInterface:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

.field private mContext:Landroid/content/Context;

.field mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

.field mImage:Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;

.field private final mImageHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    new-instance v0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder$1;-><init>(Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mCallback:Landroid/os/Handler$Callback;

    .line 70
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mImageHandler:Landroid/os/Handler;

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mCallbackInterface:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

    .line 81
    const v0, 0x7f1200b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;)Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

    .prologue
    .line 87
    const v1, 0x7f040174

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;

    invoke-direct {v1, v0, p2}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;)V

    return-object v1
.end method

.method public static playStation(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

    .prologue
    const/4 v5, 0x1

    .line 111
    if-nez p1, :cond_0

    .line 112
    const-string v0, "RadiosItemViewHolder"

    const-string v1, "playStation >>> content is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getStationInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainStationInfo;

    move-result-object v9

    .line 117
    .local v9, "stationInfo":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainStationInfo;
    if-nez v9, :cond_1

    .line 118
    const-string v0, "RadiosItemViewHolder"

    const-string v1, "playStation >>> station is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    const-string v0, "RadiosItemViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playStation >>> title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/StoreFragment;->getStoreFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder$2;

    invoke-direct {v2, p2}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder$2;-><init>(Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;)V

    .line 138
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainStationInfo;->getStationId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v5

    move v8, v5

    .line 124
    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    goto :goto_0
.end method


# virtual methods
.method public changeContents(ILcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .prologue
    .line 92
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 93
    const-string v0, "RadiosItemViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeContents : pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const v0, 0x7f0d0061

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mImageHandler:Landroid/os/Handler;

    .line 96
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V

    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->mCallbackInterface:Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/storemaincategory/RadiosItemViewHolder;->playStation(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;Lcom/samsung/android/app/music/milk/store/StoreMainRecyclerViewAdapter$IStoreMainRecyclerViewAdapter;)V

    .line 104
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "931"

    const-string v3, "9314"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x7f1200b4
        :pswitch_0
    .end packed-switch
.end method
