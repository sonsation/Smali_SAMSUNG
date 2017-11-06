.class public abstract Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "SeedSearchFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;
.implements Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;
.implements Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISeedSearchResultZone;
.implements Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst;
.implements Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$InitLoadingWaitThread;
    }
.end annotation


# static fields
.field public static final LOADING_TIMEOUT_MS:I = 0xafc8


# instance fields
.field public bLoadingTimeoutSet:Z

.field private mAutoCompleteCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;

.field protected mContext:Landroid/content/Context;

.field public mIsShowLodingStick:Z

.field protected mLoaderManager:Landroid/app/LoaderManager;

.field private mLoadingProgress:Landroid/view/View;

.field protected mLoadingTimeoutRunnable:Ljava/lang/Runnable;

.field private mSearchHandler:Landroid/os/Handler;

.field protected mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

.field private mSearchRunable:Ljava/lang/Runnable;

.field protected mSearchSeedBox:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

.field public mTmpAutoSearchBlock:Z

.field private nSeedSearchLoaderCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mIsShowLodingStick:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->bLoadingTimeoutSet:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mTmpAutoSearchBlock:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mAutoCompleteCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mLoadingProgress:Landroid/view/View;

    return-object v0
.end method

.method private showLoading(ZJ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "timeout"    # J

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showLoading : show - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mLoadingProgress:Landroid/view/View;

    if-nez v1, :cond_1

    .line 370
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$3;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;J)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;-><init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;)V

    .line 377
    .local v0, "handler":Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;
    new-instance v1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$InitLoadingWaitThread;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$InitLoadingWaitThread;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;Z)V

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$InitLoadingWaitThread;->start()V

    .line 386
    .end local v0    # "handler":Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mIsShowLodingStick:Z

    if-nez v1, :cond_0

    .line 385
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->internalShowLoading(ZJ)V

    goto :goto_0
.end method

.method private startAutoCompleteSearch(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;
    .param p2, "searchText"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchRunable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchRunable:Ljava/lang/Runnable;

    .line 283
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$2;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchRunable:Ljava/lang/Runnable;

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchRunable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    return-void
.end method

.method private startSearchLoader(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;Ljava/lang/String;)Z
    .locals 7
    .param p1, "type"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;
    .param p2, "searchWord"    # Ljava/lang/String;

    .prologue
    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, "ret":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->nSeedSearchLoaderCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;

    .line 323
    .local v1, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<*>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getLogTag()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "startSearchLoader : SearchWord is empty"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .end local v3    # "ret":Z
    :goto_0
    return v3

    .line 328
    .restart local v3    # "ret":Z
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$4;->$SwitchMap$com$samsung$android$app$music$milk$radio$mystations$seedsearch$constant$SearchSeedConst$SearchResultType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 346
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "search results type not recognized: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 330
    :pswitch_0
    const v2, 0x7f120032

    .line 349
    .local v2, "loaderId":I
    :goto_1
    const-string v4, "SEARCH_TERM_KEY"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startSearchLoader : Try Search ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") to server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v4, v2, v0, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 363
    const/4 v3, 0x1

    goto :goto_0

    .line 334
    .end local v2    # "loaderId":I
    :pswitch_1
    const v2, 0x7f120033

    .line 335
    .restart local v2    # "loaderId":I
    goto :goto_1

    .line 338
    .end local v2    # "loaderId":I
    :pswitch_2
    const v2, 0x7f120038

    .line 339
    .restart local v2    # "loaderId":I
    goto :goto_1

    .line 342
    .end local v2    # "loaderId":I
    :pswitch_3
    const v2, 0x7f120039

    .line 343
    .restart local v2    # "loaderId":I
    goto :goto_1

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private stopSearch()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mLoaderManager:Landroid/app/LoaderManager;

    const v1, 0x7f120031

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 315
    return-void
.end method


# virtual methods
.method public attachServerData(ILjava/util/List;)V
    .locals 2
    .param p1, "loaderId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchSeedBox:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->hasSearchKeyword()Z

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->attachServerData(ZILjava/util/List;)V

    .line 274
    return-void
.end method

.method public forceHideKeypad(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 153
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 156
    :cond_0
    return-void
.end method

.method public getAppPrimaryColor()I
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getPrimaryColor()I

    move-result v0

    return v0
.end method

.method protected getAutoCompleteSearchType()Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;
    .locals 1

    .prologue
    .line 449
    sget-object v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->ALL:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchSeedBox:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->getSearchBoxKeyword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getLayoutResId()I
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected getSearchResultViewVisible()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->getSearchResultViewVisible()I

    move-result v0

    return v0
.end method

.method protected getSearchType()Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->ALL:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    return-object v0
.end method

.method protected internalShowLoading(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 441
    const-wide/32 v0, 0xafc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->internalShowLoading(ZJ)V

    .line 442
    return-void
.end method

.method protected internalShowLoading(ZJ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "timeout"    # J

    .prologue
    const/4 v2, 0x0

    .line 416
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mLoadingProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->startTimeoutCounter(ZJ)V

    .line 424
    :goto_0
    return-void

    .line 420
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mIsShowLodingStick:Z

    .line 421
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mLoadingProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    invoke-virtual {p0, v2, p2, p3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->startTimeoutCounter(ZJ)V

    goto :goto_0
.end method

.method public isSearchRequesting()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchRunable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "isTmpBlockAutoComplte":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getLayoutResId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "root":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 78
    if-eqz p3, :cond_0

    .line 79
    const-string v2, "BlockTmpAutoCompleteSeedSearch"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 81
    :cond_0
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISearchSeedBox;Z)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchSeedBox:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    .line 83
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p0, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISeedSearchResultZone;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    .line 85
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mAutoCompleteCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;

    .line 87
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->nSeedSearchLoaderCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;

    .line 89
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchRunable:Ljava/lang/Runnable;

    .line 90
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchHandler:Landroid/os/Handler;

    .line 92
    const v2, 0x7f1201ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mLoadingProgress:Landroid/view/View;

    .line 94
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mLoadingTimeoutRunnable:Ljava/lang/Runnable;

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 102
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 135
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroyView()V

    .line 136
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onItemClicked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .param p1, "loaderId"    # I
    .param p2, "seedName"    # Ljava/lang/String;
    .param p3, "seedType"    # Ljava/lang/String;
    .param p4, "seedId"    # Ljava/lang/String;
    .param p5, "seedImageUrl"    # Ljava/lang/String;
    .param p6, "trackName"    # Ljava/lang/String;
    .param p7, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p8, "artists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    const v0, 0x7f120031

    if-eq p1, v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchSeedBox:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->clearSearchBox()V

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->setSearchResultViewVisible(Z)V

    .line 211
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    const-string v1, "BlockTmpAutoCompleteSeedSearch"

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getSearchResultViewVisible()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 122
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    :cond_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSearchBoxTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 193
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->initSearchResultDataZone()V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setInitResultZoneGuide()V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchResultViewVisible(Z)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setNoResultZoneGuide()V

    goto :goto_0
.end method

.method public onSearchSeedBoxFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->initSearchResultDataZone()V

    .line 189
    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 108
    if-eqz p1, :cond_0

    .line 109
    const-string v1, "BlockTmpAutoCompleteSeedSearch"

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 111
    .local v0, "isTmpBlockAutoComplte":Z
    if-eqz v0, :cond_0

    .line 112
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->showLoading(Z)V

    .line 115
    .end local v0    # "isTmpBlockAutoComplte":Z
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchSeedBox:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchSeedBox;->reStore()V

    .line 116
    return-void
.end method

.method public reqSeedSearch(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "isAutoComplete"    # Z

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->isSearchRequesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchRunable:Ljava/lang/Runnable;

    .line 165
    :cond_0
    if-eqz p2, :cond_2

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchResultViewVisible(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getAutoCompleteSearchType()Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->startAutoCompleteSearch(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchResultViewVisible(Z)V

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->stopSearch()V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchResultViewVisible(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getSearchType()Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->startSearchLoader(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public resultFromLoaderCallback(IIILjava/lang/String;)V
    .locals 4
    .param p1, "loaderResultStatus"    # I
    .param p2, "retCode"    # I
    .param p3, "errorCode"    # I
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultFromLoaderCallback : Loader Result => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->showLoading(Z)V

    .line 246
    sparse-switch p1, :sswitch_data_0

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchResultViewVisible(Z)V

    .line 269
    :goto_0
    :sswitch_0
    return-void

    .line 249
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchResultViewVisible(Z)V

    goto :goto_0

    .line 246
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x7d0 -> :sswitch_0
        0xbb8 -> :sswitch_0
        0xfa0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setSearchResultViewVisible(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchResultZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchResultViewVisible(Z)V

    .line 226
    return-void
.end method

.method public showLoading(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 146
    const-wide/32 v0, 0xafc8

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->showLoading(ZJ)V

    .line 147
    return-void
.end method

.method public startTimeoutCounter(ZJ)V
    .locals 2
    .param p1, "start"    # Z
    .param p2, "timeout"    # J

    .prologue
    .line 427
    if-eqz p1, :cond_1

    .line 428
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->bLoadingTimeoutSet:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mLoadingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mLoadingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->bLoadingTimeoutSet:Z

    .line 438
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mSearchHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/fragment/SeedSearchFragment;->mLoadingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
