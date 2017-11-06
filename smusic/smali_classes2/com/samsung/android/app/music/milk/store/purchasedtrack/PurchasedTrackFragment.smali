.class public Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;
.super Lcom/samsung/android/app/music/milk/MilkServiceFragment;
.source "PurchasedTrackFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/download/Downloadable;
.implements Lcom/samsung/android/app/music/list/LoadMoreManager;
.implements Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackLoadMoreHelper;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackFilterableImpl;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackQueryArgs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/MilkServiceFragment",
        "<",
        "Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/download/Downloadable;",
        "Lcom/samsung/android/app/music/list/LoadMoreManager;",
        "Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PurchasedTrackFragment"


# instance fields
.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCursorLoaderCallback:Lcom/samsung/android/app/music/milk/store/ICursorLoadFinished;

.field private mDownloadable:Lcom/samsung/android/app/music/download/MilkDownloadable;

.field private mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

.field private final mForceLoadObserver:Landroid/database/ContentObserver;

.field private mHeader:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;

.field private mLoadMoreHelper:Lcom/samsung/android/app/music/list/LoadMoreHelper;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;-><init>()V

    .line 257
    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mForceLoadObserver:Landroid/database/ContentObserver;

    .line 275
    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 394
    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method public static newInstance()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;-><init>()V

    .line 97
    .local v0, "fg":Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;
    return-object v0
.end method


# virtual methods
.method public download()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mDownloadable:Lcom/samsung/android/app/music/download/MilkDownloadable;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mDownloadable:Lcom/samsung/android/app/music/download/MilkDownloadable;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/download/MilkDownloadable;->download()V

    .line 308
    :cond_0
    return-void
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 181
    const v0, 0x10000049

    return v0
.end method

.method public loadMore()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mLoadMoreHelper:Lcom/samsung/android/app/music/list/LoadMoreHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mLoadMoreHelper:Lcom/samsung/android/app/music/list/LoadMoreHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/LoadMoreHelper;->loadMore()V

    .line 478
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onAttach(Landroid/app/Activity;)V

    .line 108
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;
    .locals 4

    .prologue
    .line 192
    new-instance v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v2, "title"

    .line 193
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    const-string v2, "artist"

    .line 194
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    const-string v2, "album_id"

    .line 195
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    const-string v2, "cp_attrs"

    .line 196
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    const-string v2, "audio_id"

    .line 197
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    const-string v2, "order_date_local"

    .line 198
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->setHeaderCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    move-result-object v1

    const-string v2, "download_state"

    .line 199
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    const v2, 0x80002

    sget-object v3, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    .line 200
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    .line 202
    .local v0, "builder":Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->build()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->onCreateAdapter()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncTaskLoader;

    .line 213
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 214
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 238
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 239
    const v0, 0x7f130026

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 240
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 232
    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .line 233
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->getFilterOption()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackQueryArgs;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const v0, 0x7f040090

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    .line 385
    .local v0, "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->removeCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mForceLoadObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 391
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onDestroyView()V

    .line 392
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mLoadMoreHelper:Lcom/samsung/android/app/music/list/LoadMoreHelper;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mLoadMoreHelper:Lcom/samsung/android/app/music/list/LoadMoreHelper;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/music/list/LoadMoreHelper;->updateLoadMoreInfo(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/database/Cursor;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mCursorLoaderCallback:Lcom/samsung/android/app/music/milk/store/ICursorLoadFinished;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mCursorLoaderCallback:Lcom/samsung/android/app/music/milk/store/ICursorLoadFinished;

    invoke-interface {v0, p2}, Lcom/samsung/android/app/music/milk/store/ICursorLoadFinished;->loadFinished(Landroid/database/Cursor;)V

    .line 227
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 228
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onMilkServiceConnected()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onMilkServiceConnected()V

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 315
    .local v0, "milkService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPurchasedDrmTracks(Z)I

    .line 316
    return-void
.end method

.method public onMilkServiceDisconnected()V
    .locals 0

    .prologue
    .line 320
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onMilkServiceDisconnected()V

    .line 321
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 253
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 247
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "981"

    const-string v2, "9801"

    .line 248
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketLauncher;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x1

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x7f1205db
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 119
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 121
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->setOnItemButtonClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 126
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    .line 128
    .local v5, "recyclerView":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v7, 0x7f020146

    .line 129
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v6

    const v7, 0x7f0d0169

    .line 130
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v6

    const v7, 0x7f0d04e9

    .line 131
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v2

    .line 132
    .local v2, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {v5, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 135
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0a018c

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 136
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->setChoiceMode(I)V

    .line 137
    new-instance v6, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$ActionModeOptionsMenu;

    invoke-direct {v6, p0, v11}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 139
    new-instance v6, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 141
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;

    const v7, 0x7f0a030a

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 143
    new-instance v6, Lcom/samsung/android/app/music/download/MilkDownloadable;

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const-string/jumbo v8, "track_id"

    invoke-direct {v6, p0, v7, v8}, Lcom/samsung/android/app/music/download/MilkDownloadable;-><init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mDownloadable:Lcom/samsung/android/app/music/download/MilkDownloadable;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v1

    .line 147
    .local v1, "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    if-eqz v1, :cond_0

    .line 148
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->addCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mForceLoadObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 155
    new-instance v6, Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const v7, 0x7f040257

    new-instance v8, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackFilterableImpl;

    invoke-direct {v8, p0, v11}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackFilterableImpl;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$1;)V

    invoke-direct {v6, p0, v7, v8}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .line 160
    const v6, 0x7f120202

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 161
    .local v4, "headerLayout":Landroid/view/ViewGroup;
    new-instance v6, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;-><init>(Landroid/app/Fragment;Lcom/samsung/android/app/music/list/common/FilterOptionManager;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;

    .line 162
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;->build()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->setListShown(Z)V

    .line 165
    new-instance v6, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackLoadMoreHelper;

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackLoadMoreHelper;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;Lcom/samsung/android/app/music/list/common/FilterOptionManager;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mLoadMoreHelper:Lcom/samsung/android/app/music/list/LoadMoreHelper;

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    .line 168
    .local v3, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v3, :cond_1

    .line 169
    const-string v6, "PurchasedSongs"

    new-array v7, v10, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;

    invoke-direct {v8, v3, p0}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;)V

    aput-object v8, v7, v9

    invoke-interface {v3, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getListType()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->initListLoader(I)V

    .line 175
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v6

    const-string v7, "981"

    .line 176
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public setLoadFinishedCallback(Lcom/samsung/android/app/music/milk/store/ICursorLoadFinished;)V
    .locals 0
    .param p1, "loadFinishedCallback"    # Lcom/samsung/android/app/music/milk/store/ICursorLoadFinished;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->mCursorLoaderCallback:Lcom/samsung/android/app/music/milk/store/ICursorLoadFinished;

    .line 326
    return-void
.end method
