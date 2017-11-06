.class public Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetSearchResultsWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mIsBixbyCall:Z

.field private mIsRecommendKeywordSearch:Z

.field private mKeyword:Ljava/lang/String;

.field private mOrder:Ljava/lang/String;

.field private mPage:Ljava/lang/String;

.field private mSearchType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "keyword"    # Ljava/lang/String;
    .param p5, "searchType"    # Ljava/lang/String;
    .param p6, "order"    # Ljava/lang/String;
    .param p7, "page"    # Ljava/lang/String;
    .param p8, "isBixbyCall"    # Z
    .param p9, "isRecommendKeyword"    # Z
    .param p10, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 44
    const/16 v4, 0x4e87

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 46
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mKeyword:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mSearchType:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mOrder:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mPage:Ljava/lang/String;

    .line 50
    iput-boolean p8, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mIsBixbyCall:Z

    .line 51
    iput-boolean p9, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mIsRecommendKeywordSearch:Z

    .line 52
    return-void
.end method


# virtual methods
.method public doWorkInternal()Lrx/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 56
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWork : type - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mSearchType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v9, 0x0

    .line 58
    .local v9, "observable":Lrx/Observable;, "Lrx/Observable<Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;>;"
    const/4 v2, 0x0

    .line 59
    .local v2, "bixby":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->getExtraTransport()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;->getHttpUrl()Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "extraUrl":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mIsRecommendKeywordSearch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mIsBixbyCall:Z

    if-eqz v0, :cond_0

    .line 62
    const-string v2, "1"

    .line 64
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWork : Connect to Extra Server ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->getExtraTransport()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->getRequestId()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mSearchType:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mOrder:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mPage:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mKeyword:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;->getSearchResults(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v9

    .line 79
    .end local v8    # "extraUrl":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 70
    .restart local v8    # "extraUrl":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "doWork : Connect to Store Server"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->getRequestId()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mSearchType:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mOrder:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mPage:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mKeyword:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getSearchResults(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v9

    goto :goto_0

    .line 76
    .end local v8    # "extraUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->getNoNetworkObservable()Lrx/Observable;

    move-result-object v9

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 25
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;I)V
    .locals 18
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;
    .param p5, "errorCode"    # I

    .prologue
    .line 90
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 91
    sget-object v15, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onApiHandled : type - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mSearchType:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", res - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-eqz p4, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mIsBixbyCall:Z

    if-eqz v15, :cond_1

    .line 95
    const-string v15, "1"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->setIsBixbyCall(Ljava/lang/String;)V

    .line 100
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mIsRecommendKeywordSearch:Z

    if-eqz v15, :cond_2

    .line 101
    const-string v15, "1"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->setIsRecommendSearch(Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_1
    packed-switch p3, :pswitch_data_0

    .line 187
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v15}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 190
    :goto_2
    return-void

    .line 97
    :cond_1
    const-string v15, "0"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->setIsBixbyCall(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    const-string v15, "0"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->setIsRecommendSearch(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :pswitch_0
    const-string v15, "7"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mSearchType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 110
    const/4 v7, 0x0

    .line 111
    .local v7, "isSuccessSubString":Z
    if-eqz p4, :cond_b

    .line 112
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/common/model/milksearch/SearchList;

    move-result-object v11

    .line 113
    .local v11, "searchList":Lcom/samsung/android/app/music/common/model/milksearch/SearchList;
    if-eqz v11, :cond_b

    .line 114
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/milksearch/SearchList;->getLyricsList()Ljava/util/List;

    move-result-object v10

    .line 116
    .local v10, "lyricsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;>;"
    if-nez v10, :cond_3

    .line 117
    sget-object v15, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->LOG_TAG:Ljava/lang/String;

    const-string v16, "onApiHandled : success"

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mSearchType:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v15}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 123
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;

    .line 126
    .local v12, "searchLyric":Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;
    :try_start_0
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getPartialLyrics()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v16

    const-string v17, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v9, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v9, "lyric":Ljava/lang/String;
    :goto_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mKeyword:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "keyword":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 142
    .local v13, "startKeyword":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_5

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mKeyword:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 144
    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 147
    :cond_5
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_7

    .line 149
    move v14, v13

    .line 150
    .local v14, "tempStartKeyword":I
    add-int/lit8 v6, v14, -0x1

    .local v6, "i":I
    :goto_5
    if-ltz v6, :cond_6

    .line 151
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 152
    .local v3, "character":C
    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v0, v3, :cond_6

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v0, v3, :cond_8

    .line 160
    .end local v3    # "character":C
    :cond_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v16, v16, v13

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 161
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v4, v16, v13

    .line 165
    .local v4, "divideSize":I
    :goto_6
    add-int v16, v13, v4

    move/from16 v0, v16

    invoke-virtual {v9, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 168
    .end local v4    # "divideSize":I
    .end local v6    # "i":I
    .end local v14    # "tempStartKeyword":I
    :cond_7
    invoke-virtual {v12, v9}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->setPartialLyrics(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 128
    .end local v8    # "keyword":Ljava/lang/String;
    .end local v9    # "lyric":Ljava/lang/String;
    .end local v13    # "startKeyword":I
    :catch_0
    move-exception v5

    .line 129
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 130
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;->getPartialLyrics()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v9    # "lyric":Ljava/lang/String;
    goto :goto_4

    .line 155
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "character":C
    .restart local v6    # "i":I
    .restart local v8    # "keyword":Ljava/lang/String;
    .restart local v13    # "startKeyword":I
    .restart local v14    # "tempStartKeyword":I
    :cond_8
    add-int/lit8 v13, v13, -0x1

    .line 150
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 163
    .end local v3    # "character":C
    :cond_9
    const/16 v4, 0x64

    .restart local v4    # "divideSize":I
    goto :goto_6

    .line 170
    .end local v4    # "divideSize":I
    .end local v6    # "i":I
    .end local v8    # "keyword":Ljava/lang/String;
    .end local v9    # "lyric":Ljava/lang/String;
    .end local v12    # "searchLyric":Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;
    .end local v13    # "startKeyword":I
    .end local v14    # "tempStartKeyword":I
    :cond_a
    const/4 v7, 0x1

    .line 174
    .end local v10    # "lyricsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchLyrics;>;"
    .end local v11    # "searchList":Lcom/samsung/android/app/music/common/model/milksearch/SearchList;
    :cond_b
    if-eqz v7, :cond_c

    .line 175
    sget-object v15, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->LOG_TAG:Ljava/lang/String;

    const-string v16, "onApiHandled : success"

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mSearchType:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v15}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 178
    :cond_c
    sget-object v15, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->LOG_TAG:Ljava/lang/String;

    const-string v16, "onApiHandled : can\'t not extract partial lyric"

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 182
    .end local v7    # "isSuccessSubString":Z
    :cond_d
    sget-object v15, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->LOG_TAG:Ljava/lang/String;

    const-string v16, "onApiHandled : success"

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->mSearchType:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v15}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 25
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchResultsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milksearch/SearchResultInfo;I)V

    return-void
.end method
