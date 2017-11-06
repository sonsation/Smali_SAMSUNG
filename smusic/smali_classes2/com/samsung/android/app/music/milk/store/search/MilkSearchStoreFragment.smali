.class public Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;
.super Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;
.source "MilkSearchStoreFragment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkSearchStoreFragment"


# instance fields
.field private isAutocompleteShown:Z

.field private isPrewrittenSearchEnable:Z

.field private mBixbyCallStoreTabType:Ljava/lang/String;

.field private mBixbyCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

.field private mDefaultSearchHint:Ljava/lang/String;

.field private mPreWritten:Ljava/lang/String;

.field private mPreWrittenContentType:Ljava/lang/String;

.field private mPresetCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

.field private mPreviousWordLength:I

.field private mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;

.field protected mSearchResultBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreviousWordLength:I

    .line 61
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mBixbyCallStoreTabType:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mBixbyCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchResultBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mDefaultSearchHint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->fillPrewrittenSearchText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWritten:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWritten:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWrittenContentType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWrittenContentType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->convertPresetAndPreWrittenType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertPresetAndPreWrittenType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 534
    const-string v0, "1"

    .line 535
    .local v0, "tempContentType":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    const-string v0, "1"

    .line 542
    :cond_0
    :goto_0
    return-object v0

    .line 537
    :cond_1
    const-string v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 538
    const-string v0, "3"

    goto :goto_0

    .line 539
    :cond_2
    const-string v1, "3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    const-string v0, "5"

    goto :goto_0
.end method

.method private fillPrewrittenSearchText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "currentString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    .end local v0    # "currentString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 386
    .restart local v0    # "currentString":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getPresetCallback()Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPresetCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPresetCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPresetCallback:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    return-object v0
.end method

.method private getPresetContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "com.samsung.android.app.music.milk.store.search.picktrack.preset"

    .line 357
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getAssignedFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .line 358
    .local v0, "frag":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->getPresetContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private internalReqStoreSearchResultCount(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)V
    .locals 1
    .param p1, "storeResultType"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->getQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->replaceSearchResultFragment(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)Landroid/app/Fragment;

    .line 549
    return-void
.end method

.method private restoreMilkSearchStoreFragment(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 366
    if-eqz p1, :cond_0

    .line 367
    const-string v0, "mDefaultSearchHint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mDefaultSearchHint:Ljava/lang/String;

    .line 368
    const-string v0, "mPreWritten"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWritten:Ljava/lang/String;

    .line 369
    const-string v0, "mPreWrittenContentType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWrittenContentType:Ljava/lang/String;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->isLocalMusicMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWritten:Ljava/lang/String;

    .line 373
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWritten:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->fillPrewrittenSearchText(Ljava/lang/String;)V

    .line 376
    :cond_1
    return-void
.end method


# virtual methods
.method protected assginFragment(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)Landroid/app/Fragment;
    .locals 6
    .param p1, "id"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "initKeyword"    # Ljava/lang/String;
    .param p4, "defaultTab"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assginFragment >>> Tag("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")Keyword("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") DefaultTab("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") Callback("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p5, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, "isNewAssigned":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 398
    .local v2, "ret":Landroid/app/Fragment;
    if-nez v2, :cond_0

    .line 399
    const/4 v1, 0x1

    .line 400
    const-string v3, "com.samsung.android.app.music.milk.store.search.picktrack.searchresult"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 401
    invoke-static {p3, p4}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;

    move-result-object v2

    .line 406
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 407
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p1, v2, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 408
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 411
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    const-string v3, "com.samsung.android.app.music.milk.store.search.picktrack.searchresult"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    if-eqz p5, :cond_4

    move-object v3, v2

    .line 413
    check-cast v3, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;

    .line 414
    invoke-virtual {v3, p4, p3, p5}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->reqStoreSearchResultCount(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)V

    .line 422
    :cond_1
    :goto_2
    return-object v2

    .line 393
    .end local v1    # "isNewAssigned":Z
    .end local v2    # "ret":Landroid/app/Fragment;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 403
    .restart local v1    # "isNewAssigned":Z
    .restart local v2    # "ret":Landroid/app/Fragment;
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->newInstance()Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    move-result-object v2

    goto :goto_1

    .line 416
    :cond_4
    if-nez v1, :cond_1

    move-object v3, v2

    .line 417
    check-cast v3, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;

    invoke-virtual {v3, p3, p4}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreResultTabFragment;->reload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected clearSearchResultFragment()V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method protected getDefaultTab()Ljava/lang/String;
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.radio.search.store.selectedtab"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    const-string v0, "MilkSearchStoreFragment"

    return-object v0
.end method

.method protected isFragmentVisible(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 476
    const-string v1, "com.samsung.android.app.music.milk.store.search.picktrack.autocomplete"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->isAutocompleteShown:Z

    .line 481
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 479
    .end local v0    # "ret":Z
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->isFragmentVisible(Ljava/lang/String;)Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->onAttach(Landroid/app/Activity;)V

    .line 100
    instance-of v0, p1, Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    check-cast p1, Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;

    .line 103
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->restoreMilkSearchStoreFragment(Landroid/os/Bundle;)V

    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;-><init>()V

    .line 113
    .local v0, "Frag":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;

    const-string v3, "MilkSearchStoreAutocompeleteFragment"

    .line 115
    invoke-interface {v2, v0, v3}, Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;->setHelperFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 119
    .end local v0    # "Frag":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mDefaultSearchHint:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mDefaultSearchHint:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_1
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->setEnableAutocomplete(Z)V

    .line 129
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->isPrewrittenSearchEnable:Z

    .line 136
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->setAutocompleteVisibility(Z)V

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.common.search.reload_recommend_searchkeyword"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchResultBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 145
    const v1, 0x7f040124

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchResultBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->unregisterBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 183
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->onDestroyView()V

    .line 184
    return-void
.end method

.method public onMilkLocalMusicReleased()V
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getDefaultTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->init(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWritten:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWritten:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->fillPrewrittenSearchText(Ljava/lang/String;)V

    .line 311
    :cond_0
    return-void
.end method

.method protected onMilkServiceConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMilkServiceConnected : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mBixbyCallStoreTabType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mBixbyCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "MilkSearchStoreFragment"

    const-string v1, "onMilkServiceConnected >> Service connected Request Bixby process"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mBixbyCallStoreTabType:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mBixbyCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->internalReqStoreSearchResultCount(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)V

    .line 267
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getDefaultTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->init(Ljava/lang/String;)V

    .line 264
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mBixbyCallStoreTabType:Ljava/lang/String;

    .line 265
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mBixbyCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    goto :goto_0
.end method

.method public onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 2
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mDefaultSearchHint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mDefaultSearchHint:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 277
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    const-string v2, "MilkSearchStoreFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryTextChange : query ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") fragment Not added"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 210
    :goto_0
    return v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.samsung.music.app.KEY_STORE_SEARCH_FROM_BIXBY"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    const-string v1, "MilkSearchStoreFragment"

    const-string v2, "onQueryTextChange : Bixby Mode ... So return"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    .line 199
    .local v0, "ret":Z
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreviousWordLength:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "964"

    const-string v4, "9621"

    .line 201
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreviousWordLength:I

    goto :goto_0

    .line 208
    :cond_3
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreviousWordLength:I

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    const-string v3, "MilkSearchStoreFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryTextSubmit : query ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") fragment Not added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    return v2

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sec.samsung.music.app.KEY_STORE_SEARCH_FROM_BIXBY"

    invoke-static {v4, v5, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    const-string v2, "MilkSearchStoreFragment"

    const-string v4, "onQueryTextSubmit : Bixby Mode ... So return"

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 223
    goto :goto_0

    .line 226
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v4

    if-nez v4, :cond_5

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 228
    const-string v4, "MilkSearchStoreFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryTextSubmit : query ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->setAutocompleteVisibility(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getEnableAutocomplete()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->setSubmitState(Z)V

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "isSearchPrewritten":Z
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreviousWordLength:I

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 236
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->searchPrewrittenStoreContents(Ljava/lang/String;)Z

    move-result v1

    .line 239
    :cond_2
    if-nez v1, :cond_4

    .line 240
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getPresetContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "com.samsung.radio.search.store.selectedtab"

    const-string v5, "1"

    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->searchStoreContents(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v2, "MilkSearchStoreFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryTextSubmit : Search content ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Type("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "isSearchPrewritten":Z
    :cond_4
    :goto_1
    move v2, v3

    .line 253
    goto/16 :goto_0

    .line 251
    :cond_5
    const-string v2, "MilkSearchStoreFragment"

    const-string v4, "onQueryTextSubmit : Local Music Mode!! skip!!"

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onRetry()V
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getDefaultTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->init(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mMilkCtrlNetworkLayout:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mMilkCtrlNetworkLayout:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;->isNetworkMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mMilkCtrlLocalMode:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->isLocalMusicMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWritten:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWritten:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->fillPrewrittenSearchText(Ljava/lang/String;)V

    .line 326
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 172
    if-eqz p1, :cond_0

    .line 173
    const-string v0, "mDefaultSearchHint"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mDefaultSearchHint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "mPreWritten"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWritten:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "mPreWrittenContentType"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWrittenContentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onSearchCommandCompleted()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->isPrewrittenSearchEnable:Z

    .line 292
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 150
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.search.store.selectedtab"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iput v5, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreviousWordLength:I

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v0

    .line 156
    .local v0, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v0, :cond_0

    .line 157
    const-string v1, "Search"

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v3, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v0, v4, p0}, Lcom/samsung/android/app/music/bixby/executor/search/store/StoreSearchResultExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;)V

    aput-object v3, v2, v5

    .line 157
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->restoreMilkSearchStoreFragment(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method protected reloadAutocompleteFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 281
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;

    const-string v2, "MilkSearchStoreAutocompeleteFragment"

    .line 284
    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;->getHelperFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    .line 285
    .local v0, "frag":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->setKeyword(Ljava/lang/String;)V

    .line 287
    .end local v0    # "frag":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;
    :cond_0
    return-void
.end method

.method protected replaceAutoCompleteFragment()Landroid/app/Fragment;
    .locals 3

    .prologue
    .line 443
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;

    const-string v2, "MilkSearchStoreAutocompeleteFragment"

    .line 445
    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;->getHelperFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 447
    .local v0, "frag":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 448
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;-><init>()V

    .line 449
    .restart local v0    # "frag":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;

    const-string v2, "MilkSearchStoreAutocompeleteFragment"

    .line 450
    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;->setHelperFragment(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 452
    :cond_0
    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAutocompeleteFragment;->setCallback(Lcom/samsung/android/app/music/milk/store/search/IMilkSearchStoreFragment;)V

    .line 454
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->setAutocompleteVisibility(Z)V

    .line 455
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->replaceAutoCompleteFragment()Landroid/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method protected replacePresetFragment()Landroid/app/Fragment;
    .locals 3

    .prologue
    .line 433
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->setAutocompleteVisibility(Z)V

    .line 434
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->replacePresetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 435
    .local v0, "ret":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 436
    check-cast v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getPresetCallback()Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->setCallback(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment$IMilkSearchStorePresetFragment;)V

    .line 438
    :cond_0
    return-object v0
.end method

.method protected replaceSearchResultFragment(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)Landroid/app/Fragment;
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "deafultTab"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .prologue
    .line 462
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->setAutocompleteVisibility(Z)V

    .line 463
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStorePickTrackFragment;->replaceSearchResultFragment(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)Landroid/app/Fragment;

    move-result-object v1

    .line 465
    .local v1, "ret":Landroid/app/Fragment;
    const-string v2, "com.samsung.android.app.music.milk.store.search.picktrack.preset"

    .line 466
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getAssignedFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;

    .line 467
    .local v0, "fragSearchStorePreset":Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStorePresetFragment;->saveSearchHistory(Landroid/content/Context;Ljava/lang/String;)V

    .line 470
    :cond_0
    return-object v1
.end method

.method public reqStoreSearchResultCount(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)V
    .locals 4
    .param p1, "storeResultType"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .prologue
    const/4 v3, 0x0

    .line 553
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.samsung.music.app.KEY_STORE_SEARCH_FROM_BIXBY"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 555
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->getQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    const-string v0, "MilkSearchStoreFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reqStoreSearchResultCount >> Keyword("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 558
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->getQueryText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Req response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->internalReqStoreSearchResultCount(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;)V

    .line 564
    :goto_0
    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mBixbyCallStoreTabType:Ljava/lang/String;

    .line 565
    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mBixbyCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .line 571
    :goto_1
    return-void

    .line 562
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;->onStoreSearchResultComplete(Ljava/lang/String;I)V

    goto :goto_0

    .line 567
    :cond_1
    const-string v0, "MilkSearchStoreFragment"

    const-string/jumbo v1, "reqStoreSearchResultCount >> frag is not added"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mBixbyCallStoreTabType:Ljava/lang/String;

    .line 569
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mBixbyCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    goto :goto_1
.end method

.method public searchPrewrittenStoreContents(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->isPrewrittenSearchEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWritten:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->isPrewrittenSearchEnable:Z

    .line 344
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWritten:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWrittenContentType:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->searchStoreContents(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x1

    .line 346
    const-string v1, "MilkSearchStoreFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "searchPrewrittenStoreContents : Prewritten("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWritten:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Type("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mPreWrittenContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_0
    return v0
.end method

.method public setAutocompleteVisibility(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;

    if-eqz v0, :cond_0

    .line 298
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->isAutocompleteShown:Z

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->mSearchHelperFragmentManager:Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/search/MilkSearchStoreFragment;->isAutocompleteShown:Z

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/activity/SearchHelperFragmentManager;->setHelperFragmentVisible(Z)V

    .line 301
    :cond_0
    return-void
.end method

.method protected shouldReceiveHint()Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x1

    return v0
.end method
