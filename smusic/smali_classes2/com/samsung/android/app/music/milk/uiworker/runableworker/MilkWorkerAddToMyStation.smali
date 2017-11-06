.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;
.super Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
.source "MilkWorkerAddToMyStation.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/MilkConstants$IMilkUIConst;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkWorkerAddToMyStation"


# instance fields
.field protected mForcePlay:Z

.field protected mFragMngr:Landroid/app/FragmentManager;

.field protected mGoRadioTab:Z

.field private mIsDeepLinkCmd:Z

.field protected mStation:Lcom/samsung/android/app/music/common/model/Station;

.field protected mStationID:Ljava/lang/String;

.field protected mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p3, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p4, "fragmngr"    # Landroid/app/FragmentManager;
    .param p5, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p6, "trackId"    # Ljava/lang/String;
    .param p7, "forcePlay"    # Z
    .param p8, "goRadioTab"    # Z
    .param p9, "isDeepLink"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 56
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 57
    iput-object p6, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mTrackId:Ljava/lang/String;

    .line 58
    iput-boolean p7, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mForcePlay:Z

    .line 59
    iput-boolean p8, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mGoRadioTab:Z

    .line 60
    iput-boolean p9, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mIsDeepLinkCmd:Z

    .line 62
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mFragMngr:Landroid/app/FragmentManager;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p3, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p4, "fragmngr"    # Landroid/app/FragmentManager;
    .param p5, "stationId"    # Ljava/lang/String;
    .param p6, "trackId"    # Ljava/lang/String;
    .param p7, "forcePlay"    # Z
    .param p8, "goRadioTab"    # Z
    .param p9, "isDeepLink"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 69
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStationID:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mTrackId:Ljava/lang/String;

    .line 71
    iput-boolean p7, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mForcePlay:Z

    .line 72
    iput-boolean p8, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mGoRadioTab:Z

    .line 73
    iput-boolean p9, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mIsDeepLinkCmd:Z

    .line 75
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mFragMngr:Landroid/app/FragmentManager;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;)Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->showLoadingProgress(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;)Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isDeepLinkStation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "currStationID"    # Ljava/lang/String;

    .prologue
    .line 482
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.radio.fragment.deep_link_station_id"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "stationID":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private playStationForGenre(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "shouldPlay"    # Z
    .param p5, "goRadioTab"    # Z

    .prologue
    .line 322
    move-object v1, p2

    .line 323
    .local v1, "stationID":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v1

    .line 327
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 328
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    .line 329
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->isVisibleStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    move-object v0, v1

    .line 331
    .local v0, "finalStationID":Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$1;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 345
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 349
    .end local v0    # "finalStationID":Ljava/lang/String;
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->playStation(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private retryAddtoStation(Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 5
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    const v4, 0x7f0a03f6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 272
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->launchMaximunMyStationReachedPopup(Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 274
    const-string v0, "MilkWorkerAddToMyStation"

    const-string/jumbo v1, "run : Callback MilkService is not Initialized"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v0, "MilkWorkerAddToMyStation"

    const-string v1, "NOT_DEFINE"

    const-string v2, "not Initialized"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_0
    return-void

    .line 280
    :cond_0
    const-string v0, "03"

    .line 281
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 284
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mTrackId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mForcePlay:Z

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addSmartStationToMyStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    .line 287
    :cond_1
    const-string v0, "MilkWorkerAddToMyStation"

    const-string/jumbo v1, "run : MilkService is not Initialized"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 290
    const-string v0, "MilkWorkerAddToMyStation"

    const-string v1, "NOT_DEFINE"

    const-string v2, "not Initialized"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_2
    const-string v0, "2"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Station;->getGenreType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    .line 295
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->shouldShow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 296
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mIsDeepLinkCmd:Z

    if-eqz v0, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mTrackId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mForcePlay:Z

    .line 298
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->replaceDeepLinkStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)I

    goto :goto_0

    .line 300
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v0, :cond_5

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mTrackId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mForcePlay:Z

    .line 302
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addFavoriteStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)I

    goto :goto_0

    .line 304
    :cond_5
    const-string v0, "MilkWorkerAddToMyStation"

    const-string/jumbo v1, "run : MilkService is not Initialized"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 307
    const-string v0, "MilkWorkerAddToMyStation"

    const-string v1, "NOT_DEFINE"

    const-string v2, "not Initialized"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mTrackId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mForcePlay:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->launchSpotlightPopup(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 316
    :cond_7
    const-string v0, "MilkWorkerAddToMyStation"

    const-string/jumbo v1, "retryAddtoStation : Launch Maximum reached popup"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected getMyStationCount()I
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getCountOfMyStations(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected getStation()Lcom/samsung/android/app/music/common/model/Station;
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 384
    :goto_0
    return-object v0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStationID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStationID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getStationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStationID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStationID:Ljava/lang/String;

    .line 394
    :goto_0
    return-object v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 394
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "MilkWorkerAddToMyStation"

    return-object v0
.end method

.method protected hasMyStationResolver()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 398
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v2, :cond_2

    .line 399
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->isDeepLinkStation(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 400
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->hasStationInMyStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 400
    goto :goto_0

    .line 401
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStationID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 402
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStationID:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->isDeepLinkStation(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStationID:Ljava/lang/String;

    .line 403
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->hasStationInMyStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 406
    goto :goto_0
.end method

.method protected launchMaximunMyStationReachedPopup(Z)Z
    .locals 4
    .param p1, "shouldShow"    # Z

    .prologue
    .line 410
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mIsDeepLinkCmd:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getMyStationCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    .line 411
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->getMyStationLimit(Landroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    new-instance v1, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$2;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 439
    const/4 v0, 0x1

    .line 442
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected launchSpotlightPopup(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "forcePlay"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 447
    move-object v2, p0

    .line 448
    .local v2, "callback":Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->showLoadingProgress(Z)V

    .line 450
    new-instance v6, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    invoke-direct {v6}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;-><init>()V

    .line 451
    .local v6, "newFrag":Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation$3;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->setSpotlightAddedDialogListener(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$SpotlightAddedDialogListener;)V

    .line 468
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mFragMngr:Landroid/app/FragmentManager;

    const-string v3, "MilkSpotlightStationAddedDialog"

    invoke-interface {v0, v1, v6, v3, v7}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->launchDialog(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 471
    const-string v0, "MilkSpotlightStationAddedDialog"

    invoke-virtual {p0, v8, v0, v7, v7}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :goto_0
    return-void

    .line 473
    :cond_0
    const-string v0, "MilkWorkerAddToMyStation"

    const-string v1, "launchSpotlightPopup : mCallback is not Initialized"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 20
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 120
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 122
    const/16 v2, 0xd4

    move/from16 v0, p2

    if-eq v0, v2, :cond_0

    const/16 v2, 0xca

    move/from16 v0, p2

    if-ne v0, v2, :cond_8

    .line 124
    :cond_0
    const-string v2, "MilkWorkerAddToMyStation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onApiHandled : Receive Result "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p4

    .line 125
    check-cast v3, Lcom/samsung/android/app/music/common/model/Station;

    .line 127
    .local v3, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-nez p3, :cond_3

    .line 128
    const/4 v2, 0x0

    aget-object v19, p5, v2

    check-cast v19, Ljava/lang/String;

    .line 129
    .local v19, "trackId":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, p5, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 132
    .local v6, "mShouldPlay":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0277

    const/4 v8, 0x1

    invoke-static {v2, v4, v8}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 134
    move-object/from16 v5, v19

    .line 135
    .local v5, "tempTrackId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getTrackId()Ljava/lang/String;

    move-result-object v5

    .line 139
    :cond_1
    const-string v2, "MilkWorkerAddToMyStation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onApiHandled : Success to addto my Station - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 140
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mGoRadioTab:Z

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->playStationForGenre(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 143
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v8, v9}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v3    # "station":Lcom/samsung/android/app/music/common/model/Station;
    .end local v5    # "tempTrackId":Ljava/lang/String;
    .end local v6    # "mShouldPlay":Z
    .end local v19    # "trackId":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 144
    .restart local v3    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_3
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v2, v0, :cond_4

    .line 145
    const-string v2, "MilkWorkerAddToMyStation"

    const-string v4, "onApiHandled : Exceed Max Station"

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->launchMaximunMyStationReachedPopup(Z)Z

    goto :goto_0

    .line 148
    :cond_4
    const/4 v2, 0x0

    aget-object v2, p5, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 149
    .local v17, "errorCode":I
    const/16 v2, 0x1004

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 150
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->launchMaximunMyStationReachedPopup(Z)Z

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getMyStationCount()I

    move-result v18

    .line 152
    .local v18, "myStationCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    .line 153
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->getMyStationLimit(Landroid/content/Context;)I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 154
    const-string v2, "MilkWorkerAddToMyStation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onApiHandled : number of MyStation ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ") is not over "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    .line 156
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/dialog/MilkMaximumMyStationReachedDialog;->getMyStationLimit(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".. Try to sync with Server"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAllFavoriteStations(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 171
    .end local v18    # "myStationCount":I
    :cond_5
    :goto_1
    if-eqz v3, :cond_2

    .line 172
    const-string v2, "MilkWorkerAddToMyStation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onApiHandled : Adding station (id: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", name: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 173
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ") to DB was unsuccessful."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x0

    const-string v4, "MilkWorkerAddToMyStation"

    const-string v8, "DataBaseError"

    const-string v9, "Parameter Error"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v8, v9}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .restart local v18    # "myStationCount":I
    :cond_6
    const-string v2, "MilkWorkerAddToMyStation"

    const-string v4, "onApiHandled : callback Service is empty."

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 166
    .end local v18    # "myStationCount":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    const v4, 0x7f0a03f6

    const/4 v8, 0x1

    invoke-static {v2, v4, v8}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 168
    const/4 v2, 0x0

    const-string v4, "MilkWorkerAddToMyStation"

    const-string v8, "ServerErrorType"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v8, v9}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 178
    .end local v3    # "station":Lcom/samsung/android/app/music/common/model/Station;
    .end local v17    # "errorCode":I
    :cond_8
    const/16 v2, 0xcb

    move/from16 v0, p2

    if-ne v0, v2, :cond_9

    .line 179
    const-string v2, "MilkWorkerAddToMyStation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onApiHandled : Get All Favorite Station is completed. is Success("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_9
    const/16 v2, 0xc9

    move/from16 v0, p2

    if-ne v0, v2, :cond_f

    .line 183
    if-eqz p4, :cond_a

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/samsung/android/app/music/common/model/Station;

    if-nez v2, :cond_c

    .line 184
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v4, "onApiHandled : Station is not exist in Server"

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_b

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    const v4, 0x7f0a028f

    const/4 v8, 0x1

    invoke-static {v2, v4, v8}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 189
    :cond_b
    const/4 v2, 0x0

    const-string v4, "MilkWorkerAddToMyStation"

    const-string v8, "NOT_DEFINE"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v8, v9}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v4, "onApiHandled : Play Station by station info from server"

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v7, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mFragMngr:Landroid/app/FragmentManager;

    move-object/from16 v12, p4

    check-cast v12, Lcom/samsung/android/app/music/common/model/Station;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mTrackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mForcePlay:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mGoRadioTab:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mIsDeepLinkCmd:Z

    move/from16 v16, v0

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZ)V

    .line 197
    .local v7, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v2, :cond_d

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    const-wide/16 v8, 0x0

    invoke-interface {v2, v7, v8, v9}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 200
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-nez v2, :cond_e

    .line 201
    const-string v2, "MilkWorkerAddToMyStation"

    const-string v4, "onApiHandled : Error is happend - Callback is null"

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_2
    const/4 v2, 0x0

    const-string v4, "MilkWorkerAddToMyStation"

    const-string v8, "NOT_DEFINE"

    const-string v9, "Parameter Error"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v8, v9}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_e
    const-string v2, "MilkWorkerAddToMyStation"

    const-string v4, "onApiHandled : Error is happend - Runnable is empty"

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 209
    .end local v7    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_f
    const/16 v2, 0xe0

    move/from16 v0, p2

    if-ne v0, v2, :cond_11

    move-object/from16 v3, p4

    .line 210
    check-cast v3, Lcom/samsung/android/app/music/common/model/Station;

    .line 211
    .restart local v3    # "station":Lcom/samsung/android/app/music/common/model/Station;
    const/4 v2, 0x0

    aget-object v19, p5, v2

    check-cast v19, Ljava/lang/String;

    .line 212
    .restart local v19    # "trackId":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, p5, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 215
    .restart local v6    # "mShouldPlay":Z
    move-object/from16 v5, v19

    .line 216
    .restart local v5    # "tempTrackId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 217
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getTrackId()Ljava/lang/String;

    move-result-object v5

    .line 220
    :cond_10
    const-string v2, "MilkWorkerAddToMyStation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onApiHandled : Success to add to DeepLink Station "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mGoRadioTab:Z

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v11, v5

    move v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->playStationForGenre(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 223
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v8, v9}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    .end local v3    # "station":Lcom/samsung/android/app/music/common/model/Station;
    .end local v5    # "tempTrackId":Ljava/lang/String;
    .end local v6    # "mShouldPlay":Z
    .end local v19    # "trackId":Ljava/lang/String;
    :cond_11
    const/16 v2, 0xe2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 225
    if-nez p3, :cond_13

    move-object/from16 v3, p4

    .line 226
    check-cast v3, Lcom/samsung/android/app/music/common/model/Station;

    .line 227
    .restart local v3    # "station":Lcom/samsung/android/app/music/common/model/Station;
    const/4 v2, 0x0

    aget-object v19, p5, v2

    check-cast v19, Ljava/lang/String;

    .line 228
    .restart local v19    # "trackId":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, p5, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 231
    .restart local v6    # "mShouldPlay":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0277

    const/4 v8, 0x1

    invoke-static {v2, v4, v8}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 232
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 233
    move-object/from16 v5, v19

    .line 234
    .restart local v5    # "tempTrackId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 235
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getTrackId()Ljava/lang/String;

    move-result-object v5

    .line 238
    :cond_12
    const-string v2, "MilkWorkerAddToMyStation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onApiHandled : Success to add to Smart Station "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mGoRadioTab:Z

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v11, v5

    move v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->playStationForGenre(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 240
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v8, v9}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    .end local v3    # "station":Lcom/samsung/android/app/music/common/model/Station;
    .end local v5    # "tempTrackId":Ljava/lang/String;
    .end local v6    # "mShouldPlay":Z
    .end local v19    # "trackId":Ljava/lang/String;
    :cond_13
    const/4 v2, 0x0

    aget-object v2, p5, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 243
    .restart local v17    # "errorCode":I
    const/16 v2, 0x1008

    move/from16 v0, v17

    if-ne v0, v2, :cond_15

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getStation()Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v3

    .line 245
    .restart local v3    # "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v3, :cond_15

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    .line 247
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getSmartStationIDInMyStation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 248
    .local v10, "myStationId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->updatePersonalStationList()I

    .line 250
    const-string v2, "MilkWorkerAddToMyStation"

    const-string v4, "onApiHandled : Smart Station is added in another Device, But MyStation is not sync"

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0277

    const/4 v8, 0x1

    invoke-static {v2, v4, v8}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 258
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 259
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v8, v9}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :cond_14
    const-string v2, "MilkWorkerAddToMyStation"

    const-string v4, "onApiHandled : Smart Station is added in another Device, and play that"

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->playStationForGenre(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 263
    .end local v3    # "station":Lcom/samsung/android/app/music/common/model/Station;
    .end local v10    # "myStationId":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    const v4, 0x7f0a03f6

    const/4 v8, 0x1

    invoke-static {v2, v4, v8}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 264
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 265
    const/4 v2, 0x0

    const-string v4, "MilkWorkerAddToMyStation"

    const-string v8, "ServerErrorType"

    const-string v9, "Server Error"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v8, v9}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected playStation(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "shouldPlay"    # Z
    .param p5, "goRadioTab"    # Z

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 355
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    if-eqz p1, :cond_0

    .line 356
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;

    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mFragMngr:Landroid/app/FragmentManager;

    const/4 v8, 0x1

    iget-boolean v10, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mIsDeepLinkCmd:Z

    move-object v5, p1

    move-object v6, p3

    move v7, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZZ)V

    .line 361
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;

    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mFragMngr:Landroid/app/FragmentManager;

    const/4 v8, 0x1

    iget-boolean v10, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mIsDeepLinkCmd:Z

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 366
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    :goto_0
    return-void

    .line 369
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-nez v1, :cond_3

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "run : Error is happend - Callback is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "run : Error is happend - Runnable is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->hasMyStationResolver()Z

    move-result v0

    if-nez v0, :cond_4

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getStation()Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v6

    .line 87
    .local v6, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v6, :cond_0

    .line 88
    invoke-direct {p0, v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->retryAddtoStation(Lcom/samsung/android/app/music/common/model/Station;)V

    .line 116
    .end local v6    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :goto_0
    return-void

    .line 90
    .restart local v6    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_0
    const-string v0, "MilkWorkerAddToMyStation"

    const-string/jumbo v1, "run : Station is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.radio.prefetch.manager.prefetch_is_requesting"

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "MilkWorkerAddToMyStation"

    const-string/jumbo v1, "run : Prefetching...."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    const-string v0, "MilkWorkerAddToMyStation"

    const-string/jumbo v1, "run : try to get Station Info to Server"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getStationId()Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "stationId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0, v7}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getStationInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_2
    const-string v0, "MilkWorkerAddToMyStation"

    const-string/jumbo v1, "run : Milk service is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "MilkWorkerAddToMyStation"

    const-string v1, "NOT_DEFINE"

    const-string v2, "not Initialized"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_3
    const-string v0, "MilkWorkerAddToMyStation"

    const-string/jumbo v1, "run : Station ID is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "MilkWorkerAddToMyStation"

    const-string v1, "NOT_DEFINE"

    const-string v2, "Parameter Error"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v6    # "station":Lcom/samsung/android/app/music/common/model/Station;
    .end local v7    # "stationId":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mStationID:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mTrackId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mForcePlay:Z

    iget-boolean v5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->mGoRadioTab:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->playStationForGenre(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v8, v8, v8}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
