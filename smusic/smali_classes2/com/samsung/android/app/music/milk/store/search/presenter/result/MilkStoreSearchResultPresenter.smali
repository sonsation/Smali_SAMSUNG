.class public Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;
.super Ljava/lang/Object;
.source "MilkStoreSearchResultPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/List;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkStoreSearchResultPresenter"


# instance fields
.field private mHasPendingRequest:Z

.field private mIsInitialized:Z

.field private mKeyword:Ljava/lang/String;

.field private mOrder:Ljava/lang/String;

.field private mPage:I

.field private mRecommendKeyword:Ljava/lang/String;

.field private mSearchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSearchType:Ljava/lang/String;

.field private mTotalCount:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    .local p1, "list":Ljava/util/List;, "TT;"
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "-1"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mOrder:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mPage:I

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mHasPendingRequest:Z

    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mIsInitialized:Z

    .line 55
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mKeyword:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchType:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mRecommendKeyword:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public attachView(Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    .prologue
    .line 62
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    .line 63
    return-void
.end method

.method public detachView()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    .line 67
    return-void
.end method

.method public getBixbyRecommendKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mRecommendKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchType:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 2

    .prologue
    .line 82
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 85
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    .line 88
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mIsInitialized:Z

    return v0
.end method

.method public isViewAttached()Z
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSearchNextResults()V
    .locals 9

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    const/4 v6, 0x0

    .line 292
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-nez v1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mPage:I

    mul-int/lit8 v1, v1, 0x32

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mTotalCount:I

    if-gt v1, v3, :cond_0

    .line 301
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mPage:I

    .line 302
    const-string v1, "MilkStoreSearchResultPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSearchNextResults : request page : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mKeyword:Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 312
    .local v2, "encodeKeyword":Ljava/lang/String;
    :goto_1
    const-string v1, "-1"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mOrder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    const-string v1, "1"

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mOrder:Ljava/lang/String;

    .line 316
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 317
    .local v0, "service":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchType:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mOrder:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mPage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getSearchResults(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    goto :goto_0

    .line 306
    .end local v0    # "service":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .end local v2    # "encodeKeyword":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 307
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 308
    const-string v1, "MilkStoreSearchResultPresenter"

    const-string v3, "loadSearchNextResults : UTF8 encoding is failed"

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mKeyword:Ljava/lang/String;

    .restart local v2    # "encodeKeyword":Ljava/lang/String;
    goto :goto_1

    .line 321
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "service":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    :cond_3
    const-string v1, "MilkStoreSearchResultPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSearchNextResults : service is not connected (Service is empty("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_4

    const/4 v6, 0x1

    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public loadSearchResult(Z)V
    .locals 9
    .param p1, "isSeachingByRecommend"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 243
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v1, :cond_2

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mKeyword:Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 253
    .local v2, "encodeKeyword":Ljava/lang/String;
    :goto_0
    const-string v1, "-1"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mOrder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const-string v1, "1"

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mOrder:Ljava/lang/String;

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 258
    .local v0, "service":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 259
    :cond_1
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->setPendingRequest(Z)V

    .line 285
    .end local v0    # "service":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .end local v2    # "encodeKeyword":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 247
    :catch_0
    move-exception v8

    .line 248
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 249
    const-string v1, "MilkStoreSearchResultPresenter"

    const-string v3, "loadSearchResult : UTF8 encoding is failed"

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mKeyword:Ljava/lang/String;

    .restart local v2    # "encodeKeyword":Ljava/lang/String;
    goto :goto_0

    .line 261
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "service":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->setPendingRequest(Z)V

    .line 262
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    .line 263
    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 264
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 265
    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mIsInitialized:Z

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->setEmptySearchView()V

    goto :goto_1

    .line 268
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "com.sec.samsung.music.app.KEY_STORE_SEARCH_FROM_BIXBY"

    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    .line 270
    .local v6, "isBixbyCall":Z
    const-string v1, "MilkStoreSearchResultPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BixbyCall ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iput v5, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mPage:I

    .line 272
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchType:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mOrder:Ljava/lang/String;

    const-string v5, "1"

    move-object v1, p0

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getSearchResults(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    goto :goto_1

    .line 276
    .end local v6    # "isBixbyCall":Z
    :cond_5
    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mIsInitialized:Z

    .line 277
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v1, :cond_6

    .line 278
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 279
    invoke-interface {v1, v5, v3, v4}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showError(IILjava/lang/String;)V

    .line 281
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->setEmptySearchView()V

    goto :goto_1
.end method

.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    const/4 v1, 0x1

    .line 93
    packed-switch p2, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mPage:I

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showLoading(Z)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mIsInitialized:Z

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x4e87
        :pswitch_0
    .end packed-switch
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 13
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 105
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    const-string v10, "MilkStoreSearchResultPresenter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onApiHandled : reqId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", reqType - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rspType - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mPage:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 109
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showLoading(Z)V

    .line 110
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mIsInitialized:Z

    .line 113
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 236
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 115
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v0, p5

    array-length v10, v0

    if-eqz v10, :cond_1

    .line 118
    const/4 v10, 0x0

    aget-object v9, p5, v10

    check-cast v9, Ljava/lang/String;

    .line 120
    .local v9, "searchType":Ljava/lang/String;
    if-eqz v9, :cond_1

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v10, :cond_1

    move-object/from16 v2, p4

    .line 121
    check-cast v2, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;

    .line 122
    .local v2, "info":Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;
    if-eqz v2, :cond_1

    .line 125
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mRecommendKeyword:Ljava/lang/String;

    .line 126
    iget v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mPage:I

    const/4 v11, 0x1

    if-gt v10, v11, :cond_2

    .line 127
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 129
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->getTotalCount()I

    move-result v10

    iput v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mTotalCount:I

    .line 130
    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 131
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/common/model/milksearch/SearchList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/milksearch/SearchList;->getTrackList()Ljava/util/List;

    move-result-object v3

    .line 132
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 133
    :cond_3
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4

    .line 134
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    .line 137
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->getRecommendKeyword()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 138
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->getRecommendKeyword()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mRecommendKeyword:Ljava/lang/String;

    .line 220
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_5
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showContents(Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_6
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    .line 142
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mTotalCount:I

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v10, v11, :cond_7

    .line 144
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto :goto_1

    .line 146
    :cond_7
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto :goto_1

    .line 149
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_8
    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 150
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/common/model/milksearch/SearchList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/milksearch/SearchList;->getAlbumList()Ljava/util/List;

    move-result-object v4

    .line 151
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;>;"
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_a

    .line 152
    :cond_9
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_5

    .line 153
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    goto :goto_1

    .line 156
    :cond_a
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    .line 157
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mTotalCount:I

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v10, v11, :cond_b

    .line 159
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto :goto_1

    .line 161
    :cond_b
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto :goto_1

    .line 164
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;>;"
    :cond_c
    const-string v10, "3"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 165
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/common/model/milksearch/SearchList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/milksearch/SearchList;->getArtistList()Ljava/util/List;

    move-result-object v5

    .line 166
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;>;"
    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_e

    .line 167
    :cond_d
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_5

    .line 168
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    goto/16 :goto_1

    .line 171
    :cond_e
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    .line 172
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    iget v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mTotalCount:I

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v10, v11, :cond_f

    .line 174
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto/16 :goto_1

    .line 176
    :cond_f
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto/16 :goto_1

    .line 179
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;>;"
    :cond_10
    const-string v10, "5"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 180
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/common/model/milksearch/SearchList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/milksearch/SearchList;->getStationList()Ljava/util/List;

    move-result-object v8

    .line 181
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;>;"
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_5

    .line 182
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    iget v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mTotalCount:I

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v10, v11, :cond_11

    .line 184
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto/16 :goto_1

    .line 186
    :cond_11
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto/16 :goto_1

    .line 189
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;>;"
    :cond_12
    const-string v10, "6"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 190
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/common/model/milksearch/SearchList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/milksearch/SearchList;->getMvList()Ljava/util/List;

    move-result-object v7

    .line 191
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;>;"
    if-eqz v7, :cond_13

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_14

    .line 192
    :cond_13
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_5

    .line 193
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    goto/16 :goto_1

    .line 196
    :cond_14
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    .line 197
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    iget v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mTotalCount:I

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v10, v11, :cond_15

    .line 199
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto/16 :goto_1

    .line 201
    :cond_15
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto/16 :goto_1

    .line 204
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchMusicVideo;>;"
    :cond_16
    const-string v10, "7"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 205
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/common/model/milksearch/SearchList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/milksearch/SearchList;->getLyricsList()Ljava/util/List;

    move-result-object v6

    .line 206
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;>;"
    if-eqz v6, :cond_17

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_18

    .line 207
    :cond_17
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_5

    .line 208
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    goto/16 :goto_1

    .line 211
    :cond_18
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    .line 212
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mTotalCount:I

    iget-object v11, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v10, v11, :cond_19

    .line 214
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto/16 :goto_1

    .line 216
    :cond_19
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto/16 :goto_1

    .line 226
    .end local v2    # "info":Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;>;"
    .end local v9    # "searchType":Ljava/lang/String;
    :pswitch_2
    const/4 v1, -0x1

    .line 227
    .local v1, "errorCode":I
    move-object/from16 v0, p4

    instance-of v10, v0, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v10, :cond_1a

    .line 228
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 230
    :cond_1a
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v10, :cond_1

    .line 231
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-interface {v10, v0, v1, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showError(IILjava/lang/String;)V

    .line 232
    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto/16 :goto_0

    .line 113
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

.method public requestSearchListClear()V
    .locals 1

    .prologue
    .line 378
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mPage:I

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    return-void
.end method

.method public setEmptySearchView()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 340
    :cond_0
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    .line 343
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    .line 368
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showContents(Ljava/lang/Object;)V

    .line 371
    :cond_2
    return-void

    .line 345
    :cond_3
    const-string v0, "2"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto :goto_0

    .line 350
    :cond_4
    const-string v0, "3"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto :goto_0

    .line 355
    :cond_5
    const-string v0, "5"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    const-string v0, "6"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchType:Ljava/lang/String;

    .line 357
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto :goto_0

    .line 362
    :cond_6
    const-string v0, "7"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->enableSearchHeader(Z)V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mSearchResultView:Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/IMilkStoreSearchResultPresenter;->showMoreLoading(Z)V

    goto :goto_0
.end method

.method public setForceKeywordToBixbyRecommend(Ljava/lang/String;)V
    .locals 0
    .param p1, "recommendKeyword"    # Ljava/lang/String;

    .prologue
    .line 288
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mKeyword:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 374
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mOrder:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setPendingRequest(Z)V
    .locals 0
    .param p1, "hasRequest"    # Z

    .prologue
    .line 383
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mHasPendingRequest:Z

    .line 384
    return-void
.end method

.method public sortOrder(Ljava/lang/String;)V
    .locals 1
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 327
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;, "Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->mOrder:Ljava/lang/String;

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/presenter/result/MilkStoreSearchResultPresenter;->loadSearchResult(Z)V

    .line 329
    return-void
.end method
