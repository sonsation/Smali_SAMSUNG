.class public Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
.super Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
.source "MilkSearchStoreSongsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkSearchStoreSongsFragment"


# instance fields
.field protected mActionMode:Landroid/view/ActionMode;

.field protected mActionModeCallback:Landroid/view/ActionMode$Callback;

.field protected mActionModeMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

.field protected mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

.field private mPlayButton:Landroid/view/View;

.field private mPlayButtonContainer:Landroid/widget/FrameLayout;

.field private mSelectButton:Landroid/widget/TextView;

.field private mSelectButtonContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;-><init>()V

    .line 105
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->buttonEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->onNotifySelectCountChanged(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->downloadTracks(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->playRequest(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->playTracks(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    return-object v0
.end method

.method private buttonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mSelectButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mSelectButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mPlayButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mPlayButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mSelectButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mSelectButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mPlayButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mPlayButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 560
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->enableSpinnerView(Z)V

    .line 561
    return-void
.end method

.method private downloadTracks(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, "downloadTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 540
    .local v2, "trackIds":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 541
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_0
    const-string v3, "@"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "ids":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketLauncher;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;-><init>()V

    .line 153
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "keyword"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 157
    return-object v1
.end method

.method private onNotifySelectCountChanged(I)V
    .locals 14
    .param p1, "count"    # I

    .prologue
    .line 348
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v10, :cond_4

    .line 349
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v10}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v9

    .line 351
    .local v9, "v":Landroid/view/View;
    const v10, 0x7f12037b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 352
    .local v1, "cb":Landroid/widget/CheckBox;
    sget-boolean v10, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->ROUND_CHECK_BOX:Z

    if-eqz v10, :cond_0

    .line 353
    const v10, 0x7f020084

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 355
    const v10, 0x7f12037a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 356
    .local v6, "rippleView":Landroid/view/View;
    const v10, 0x7f020250

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 359
    .end local v6    # "rippleView":Landroid/view/View;
    :cond_0
    const/4 v10, 0x1

    new-array v7, v10, [[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [I

    aput-object v11, v7, v10

    .line 360
    .local v7, "states":[[I
    const/4 v10, 0x1

    new-array v2, v10, [I

    const/4 v10, 0x0

    .line 361
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f11003f

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v11

    aput v11, v2, v10

    .line 363
    .local v2, "colors":[I
    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v7, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 364
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->isSelectedAll()Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 366
    const v10, 0x7f12037d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 368
    .local v8, "tx":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->getMenu()Landroid/view/Menu;

    move-result-object v4

    .line 369
    .local v4, "menu":Landroid/view/Menu;
    const v10, 0x7f12059c

    invoke-interface {v4, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 370
    .local v5, "playItem":Landroid/view/MenuItem;
    const v10, 0x7f12059d

    invoke-interface {v4, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 371
    .local v0, "addItem":Landroid/view/MenuItem;
    const v10, 0x7f12059f

    invoke-interface {v4, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 373
    .local v3, "downloadItem":Landroid/view/MenuItem;
    if-eqz p1, :cond_5

    .line 374
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    :goto_0
    if-eqz v5, :cond_1

    .line 380
    if-lez p1, :cond_6

    const/4 v10, 0x1

    :goto_1
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 382
    :cond_1
    if-eqz v0, :cond_2

    .line 383
    if-lez p1, :cond_7

    const/4 v10, 0x1

    :goto_2
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 385
    :cond_2
    if-eqz v3, :cond_3

    .line 386
    if-lez p1, :cond_8

    const/4 v10, 0x1

    :goto_3
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 388
    :cond_3
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v10}, Landroid/view/ActionMode;->invalidate()V

    .line 390
    .end local v0    # "addItem":Landroid/view/MenuItem;
    .end local v1    # "cb":Landroid/widget/CheckBox;
    .end local v2    # "colors":[I
    .end local v3    # "downloadItem":Landroid/view/MenuItem;
    .end local v4    # "menu":Landroid/view/Menu;
    .end local v5    # "playItem":Landroid/view/MenuItem;
    .end local v7    # "states":[[I
    .end local v8    # "tx":Landroid/widget/TextView;
    .end local v9    # "v":Landroid/view/View;
    :cond_4
    return-void

    .line 376
    .restart local v0    # "addItem":Landroid/view/MenuItem;
    .restart local v1    # "cb":Landroid/widget/CheckBox;
    .restart local v2    # "colors":[I
    .restart local v3    # "downloadItem":Landroid/view/MenuItem;
    .restart local v4    # "menu":Landroid/view/Menu;
    .restart local v5    # "playItem":Landroid/view/MenuItem;
    .restart local v7    # "states":[[I
    .restart local v8    # "tx":Landroid/widget/TextView;
    .restart local v9    # "v":Landroid/view/View;
    :cond_5
    const v10, 0x7f0a0399

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 383
    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 386
    :cond_8
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private playRequest(Ljava/util/List;Z)V
    .locals 4
    .param p2, "isPlayAllBtn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, "playTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$7;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Ljava/util/List;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 573
    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$6;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Z)V

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 604
    return-void
.end method

.method private playTracks(Ljava/util/List;Z)V
    .locals 4
    .param p2, "isPlayAllBtn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, "playTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$5;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Ljava/util/List;Z)V

    .line 535
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getAlbumIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "5"

    .line 499
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumImageUrls(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .locals 5

    .prologue
    .line 282
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mKeyword:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$4;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    return-object v0
.end method

.method protected createPresenter()Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;
    .locals 4

    .prologue
    .line 276
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mKeyword:Ljava/lang/String;

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected deselectAll()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getSelectedItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->deselectAll()V

    .line 427
    :cond_0
    return-void
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 400
    const v0, 0x7f040190

    return v0
.end method

.method protected getLogPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    const-string v0, ""

    return-object v0
.end method

.method protected getRecyclerViewOnItemClickListener()Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSortItemList()[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant;->SORT_ITEM_LIST_1:[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onAttach(Landroid/app/Activity;)V

    .line 170
    instance-of v0, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 173
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 432
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f130009

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 433
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 434
    return-void
.end method

.method public onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 1
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 203
    :cond_0
    return-void
.end method

.method public onSelected()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onSelected()V

    .line 192
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "964"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method protected onSpinnerItemSelected(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 4
    .param p1, "item"    # Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 338
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onSpinnerItemSelected(Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;Landroid/widget/Spinner;Landroid/view/View;)V

    .line 339
    const-string v0, "0"

    .line 340
    .local v0, "detail":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 341
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;->order:Ljava/lang/String;

    .line 343
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "964"

    const-string v3, "9627"

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onStart()V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onStop()V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 272
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 186
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$ActionModeOptionsMenu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mActionModeMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    .line 187
    return-void
.end method

.method protected onViewInitializeCompleted(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->onViewInitializeCompleted(Landroid/view/View;)V

    .line 209
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    if-nez v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    instance-of v1, v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    if-eqz v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    .line 220
    .local v0, "searchTrackAdapter":Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;
    const v1, 0x7f12040d

    .line 221
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mSelectButtonContainer:Landroid/widget/FrameLayout;

    .line 222
    const v1, 0x7f12040b

    .line 223
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mPlayButtonContainer:Landroid/widget/FrameLayout;

    .line 225
    const v1, 0x7f1200b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mSelectButton:Landroid/widget/TextView;

    .line 226
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mSelectButton:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mSelectButton:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    :cond_2
    const v1, 0x7f12040c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mPlayButton:Landroid/view/View;

    .line 240
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mPlayButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mPlayButton:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->primaryColorChanged(I)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->updatePrimaryColor(I)V

    .line 164
    return-void
.end method

.method protected selectAll()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->setSelectMode(Z)V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->selectAll()V

    .line 421
    return-void
.end method

.method public bridge synthetic showContents(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->showContents(Ljava/util/ArrayList;)V

    return-void
.end method

.method public showContents(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->showContents(Ljava/util/List;)V

    .line 395
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getSelectedItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->onNotifySelectCountChanged(I)V

    .line 396
    return-void
.end method

.method public bridge synthetic showContents(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->showContents(Ljava/util/ArrayList;)V

    return-void
.end method
