.class public Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "ArtistDetailMVFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ArtistDetailMVFragment"


# instance fields
.field private mArtistDetailMusicVideoAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;

.field private mArtistId:Ljava/lang/String;

.field private mContentContainer:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field private mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mProgressContiner:Landroid/view/View;

.field private mRecyclerContainer:Landroid/view/View;

.field private mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mArtistDetailMusicVideoAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;)Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mProgressContiner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;I[Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Landroid/view/View;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->setBottomMargins(I[Landroid/view/View;)V

    return-void
.end method

.method private loadMusicVideoInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "artistId"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v0, "ArtistDetailMVFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMusicVideoInfo : mArtistId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mArtistId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mArtistId:Ljava/lang/String;

    .line 206
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getArtistMusicVideos(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;
    .locals 3
    .param p0, "artistId"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;-><init>()V

    .line 58
    .local v1, "artistMusicVideoFragment":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "artistId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1
.end method

.method private varargs setBottomMargins(I[Landroid/view/View;)V
    .locals 5
    .param p1, "bottomMargins"    # I
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 141
    const-string v2, "ArtistDetailMVFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBottomMargins. margin - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", views - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    array-length v4, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p2, v3

    .line 143
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 144
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 145
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 146
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 149
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 1
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 211
    packed-switch p2, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 213
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->showLoading(Z)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x28a5
        :pswitch_0
    .end packed-switch
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/16 v3, 0x28a5

    .line 220
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->showLoading(Z)V

    .line 221
    packed-switch p3, :pswitch_data_0

    .line 244
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 223
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    if-ne p2, v3, :cond_0

    move-object v0, p4

    .line 224
    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;

    .line 226
    .local v0, "artistDetailMusicVideoInfo":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;->getMvList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->showContents(Ljava/util/List;)V

    goto :goto_0

    .line 232
    .end local v0    # "artistDetailMusicVideoInfo":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideoInfo;
    :pswitch_2
    const/4 v1, -0x1

    .line 233
    .local v1, "errorCode":I
    instance-of v2, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v2, :cond_1

    .line 234
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 237
    :cond_1
    if-ne p2, v3, :cond_0

    .line 238
    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->showError(IILjava/lang/String;)V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artistId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mArtistId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 81
    const v1, 0x7f04013f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1202b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 84
    const v1, 0x7f1203cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mRecyclerContainer:Landroid/view/View;

    .line 85
    const v1, 0x7f1202cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mContentContainer:Landroid/view/View;

    .line 86
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mContentContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f12039b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 89
    const v1, 0x7f120371

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    .line 90
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setOnItemClickListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;)V

    .line 113
    const v1, 0x7f1203b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mProgressContiner:Landroid/view/View;

    .line 114
    const v1, 0x7f1203ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mEmptyView:Landroid/view/View;

    .line 116
    new-instance v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mArtistDetailMusicVideoAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mArtistDetailMusicVideoAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setEmptyView(Landroid/view/View;)V

    .line 134
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mProgressContiner:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setLoadingProgressView(Landroid/view/View;)V

    .line 135
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mRecyclerContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setContainer(Landroid/view/View;)V

    .line 137
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroy()V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 75
    return-void
.end method

.method public onRetry()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mArtistId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 201
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 153
    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mArtistId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->loadMusicVideoInfo(Ljava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x5

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->showError(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 165
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mArtistDetailMusicVideoAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;->updatePrimaryColor(I)V

    .line 170
    return-void
.end method

.method public showContents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mArtistDetailMusicVideoAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mArtistDetailMusicVideoAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;->swapArray(Ljava/util/List;)V

    goto :goto_0
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    goto :goto_0
.end method

.method public showLoading(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMVFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->showLoading(Z)V

    .line 183
    return-void
.end method

.method public showMoreLoading(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 193
    return-void
.end method
