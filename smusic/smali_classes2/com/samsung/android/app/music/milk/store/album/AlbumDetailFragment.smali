.class public Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;
.super Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;
.source "AlbumDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$ActionModeOptionsMenu;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumDetailFragment"


# instance fields
.field private contentContainer:Landroid/widget/RelativeLayout;

.field private empty:Landroid/widget/RelativeLayout;

.field private mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

.field private mAlbumId:Ljava/lang/String;

.field private mButtonEnabled:Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

.field private mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private mLargeSizeUrl:Ljava/lang/String;

.field private mLoadingProgress:Landroid/widget/ProgressBar;

.field private mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mPlayAll:Landroid/widget/TextView;

.field private mPlayAllContainer:Landroid/widget/FrameLayout;

.field private mProgressContiner:Landroid/widget/RelativeLayout;

.field private mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

.field private mSelect:Landroid/widget/TextView;

.field private mSelectAllContainer:Landroid/widget/FrameLayout;

.field private mainContent:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;)Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->empty:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mProgressContiner:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;I[Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->setBottomMargins(I[Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;)Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mLargeSizeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;
    .locals 3
    .param p0, "albumId"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v1, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;-><init>()V

    .line 81
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "album_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v1
.end method

.method private selectAll()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->setSelectMode(Z)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->selectAll()V

    .line 229
    return-void
.end method

.method private varargs setBottomMargins(I[Landroid/view/View;)V
    .locals 5
    .param p1, "bottomMargins"    # I
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 332
    const-string v2, "AlbumDetailFragment"

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

    .line 333
    array-length v4, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p2, v3

    .line 334
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 335
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 336
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 337
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 340
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method protected buttonEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "934"

    const-string v2, "1048"

    .line 235
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mSelectAllContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mPlayAllContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mSelect:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mPlayAll:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mButtonEnabled:Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mButtonEnabled:Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/IButtonEnabled;->buttonEnabled(Z)V

    .line 247
    :cond_1
    return-void
.end method

.method protected getPlayRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    const-string v0, "0"

    return-object v0
.end method

.method protected isSelectedAll()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->isSelectedAll()Z

    move-result v0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onAttach(Landroid/app/Activity;)V

    .line 282
    check-cast p1, Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mButtonEnabled:Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

    .line 283
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onAttach(Landroid/content/Context;)V

    .line 288
    check-cast p1, Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mButtonEnabled:Lcom/samsung/android/app/music/milk/store/IButtonEnabled;

    .line 289
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f1203ab

    if-ne v2, v3, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->selectAll()V

    .line 157
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "934"

    const-string v4, "1542"

    .line 158
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f1203ad

    if-ne v2, v3, :cond_0

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 162
    .local v1, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mLargeSizeUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    .end local v1    # "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_3
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->addPlayQueue(Ljava/util/List;I)V

    .line 170
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "934"

    const-string v4, "1543"

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v6, v5

    .line 171
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->setHasOptionsMenu(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 94
    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumId:Ljava/lang/String;

    .line 96
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 108
    const v1, 0x7f040135

    invoke-virtual {p1, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1202b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 111
    const v1, 0x7f1202cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mainContent:Landroid/view/View;

    .line 112
    const v1, 0x7f1203a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->contentContainer:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mainContent:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 114
    const v1, 0x7f12027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 115
    const v1, 0x7f1203b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mProgressContiner:Landroid/widget/RelativeLayout;

    .line 116
    const v1, 0x7f1203ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->empty:Landroid/widget/RelativeLayout;

    .line 117
    const v1, 0x7f120371

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    .line 119
    const v1, 0x7f1203ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mSelect:Landroid/widget/TextView;

    .line 120
    const v1, 0x7f1203aa

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mSelectAllContainer:Landroid/widget/FrameLayout;

    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mSelect:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v1, 0x7f1203ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mPlayAll:Landroid/widget/TextView;

    .line 124
    const v1, 0x7f1203ac

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mPlayAllContainer:Landroid/widget/FrameLayout;

    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mPlayAll:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f12039b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 142
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 147
    new-instance v1, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$ActionModeOptionsMenu;

    invoke-direct {v1, p0, v5}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mActionModeMenu:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;

    .line 149
    return-object v0
.end method

.method protected onDeselectAll()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->deselectAll()V

    .line 262
    return-void
.end method

.method public onRetry()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 181
    return-void
.end method

.method protected onSelectAll()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->selectAll()V

    .line 257
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->updatePrimaryColor(I)V

    .line 101
    return-void
.end method

.method protected sendSASelectionModeOn()V
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "922"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected setAdapterSelectMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->setSelectMode(Z)V

    .line 252
    return-void
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->showLoading(Z)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    goto :goto_0
.end method

.method public showLoading(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->empty:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->empty:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 215
    if-eqz p1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->empty:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mProgressContiner:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 221
    const-string v1, "AlbumDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showLoading : show - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mProgressContiner:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 224
    :cond_1
    return-void

    .line 222
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showTrackInfo(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 3
    .param p2, "largeImageUrl"    # Ljava/lang/String;
    .param p3, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/AlbumTrack;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/AlbumTrack;>;"
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->showLoading(Z)V

    .line 186
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v2, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 187
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->contentContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->empty:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setVisibility(I)V

    .line 191
    if-nez p1, :cond_2

    .line 203
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->empty:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setVisibility(I)V

    .line 198
    :cond_2
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mLargeSizeUrl:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->setLargeSizeUrl(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->swapArray(Ljava/util/List;)V

    .line 202
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->mAlbumDetailAdapter:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->isAllServiceStat()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p3, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->buttonEnabled(Z)V

    goto :goto_0
.end method
