.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;
.super Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
.source "MilkWorkerPlayStation.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/MilkConstants$IMilkUIConst;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkWorkerPlayStation"


# instance fields
.field private mForcePlay:Z

.field protected mFragMngr:Landroid/app/FragmentManager;

.field private mGoRadioTab:Z

.field private mIsDeepLinkCmd:Z

.field private mIsMyStation:Z

.field private mStation:Lcom/samsung/android/app/music/common/model/Station;

.field private mStationID:Ljava/lang/String;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p3, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p4, "fragmngr"    # Landroid/app/FragmentManager;
    .param p5, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p6, "trackId"    # Ljava/lang/String;
    .param p7, "forcePlay"    # Z
    .param p8, "isMyStation"    # Z
    .param p9, "goRadioTab"    # Z
    .param p10, "isDeepLink"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 53
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 54
    iput-object p6, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mTrackId:Ljava/lang/String;

    .line 55
    iput-boolean p7, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mForcePlay:Z

    .line 56
    iput-boolean p8, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mIsMyStation:Z

    .line 57
    iput-boolean p9, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mGoRadioTab:Z

    .line 58
    iput-boolean p10, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mIsDeepLinkCmd:Z

    .line 60
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mFragMngr:Landroid/app/FragmentManager;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p3, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p4, "fragmngr"    # Landroid/app/FragmentManager;
    .param p5, "stationId"    # Ljava/lang/String;
    .param p6, "trackId"    # Ljava/lang/String;
    .param p7, "forcePlay"    # Z
    .param p8, "isMyStation"    # Z
    .param p9, "goRadioTab"    # Z
    .param p10, "isDeepLink"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 68
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStationID:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mTrackId:Ljava/lang/String;

    .line 70
    iput-boolean p7, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mForcePlay:Z

    .line 71
    iput-boolean p8, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mIsMyStation:Z

    .line 72
    iput-boolean p9, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mGoRadioTab:Z

    .line 73
    iput-boolean p10, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mIsDeepLinkCmd:Z

    .line 75
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mFragMngr:Landroid/app/FragmentManager;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getInFMPage()V
    .locals 3

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mGoRadioTab:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInFMPage : Go To Radio Tab"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->moveToTab(II)V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInFMPage : Does not Go To Radio Tab"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isUIPlayableStation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mIsMyStation:Z

    if-nez v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->isVisibleStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run : Station("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not Visible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    return v0

    .line 289
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->hasStationInMyStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    const/4 v0, 0x1

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run : Station("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not exited at MyStation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playFirstSpotlightStation()V
    .locals 5

    .prologue
    .line 208
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getFirstSpotLightStationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "stationId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getInFMPage()V

    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mTrackId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 214
    :cond_0
    const/4 v1, 0x0

    const-string v2, "MilkWorkerPlayStation"

    const-string v3, "PLAYER Error"

    const-string v4, "Parameter Error"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private playStation(Ljava/lang/String;)V
    .locals 8
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getInFMPage()V

    .line 229
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mForcePlay:Z

    if-eqz v3, :cond_3

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 231
    .local v0, "helper":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v2

    .line 233
    .local v2, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    const/4 v1, 0x0

    .line 234
    .local v1, "isFullTrack":Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/UserInfo;->isStreamingUser()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    const/4 v1, 0x1

    .line 243
    :goto_0
    if-nez v1, :cond_1

    .line 244
    const-string v3, "MilkWorkerPlayStation"

    const-string v4, "PLAYER Error"

    const-string v5, "not Subscription User"

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mTrackId:Ljava/lang/String;

    invoke-static {v3, p1, v4, v6}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 258
    .end local v0    # "helper":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .end local v1    # "isFullTrack":Z
    .end local v2    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :goto_2
    return-void

    .line 238
    .restart local v0    # "helper":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .restart local v1    # "isFullTrack":Z
    .restart local v2    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 247
    :cond_1
    new-instance v3, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation$PlayerMonitoringThread;->start()V

    goto :goto_1

    .line 251
    .end local v1    # "isFullTrack":Z
    .end local v2    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_2
    const-string v3, "MilkWorkerPlayStation"

    const-string v4, "PLAYER Error"

    const-string v5, "not Initialized"

    invoke-virtual {p0, v7, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 255
    .end local v0    # "helper":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mTrackId:Ljava/lang/String;

    invoke-static {v3, p1, v4, v7}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 256
    invoke-virtual {p0, v6, v5, v5, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private reTryPlayStation(I)V
    .locals 0
    .param p1, "retryCount"    # I

    .prologue
    .line 205
    return-void
.end method

.method private reqAddtoStation()V
    .locals 10

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStationID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mFragMngr:Landroid/app/FragmentManager;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStationID:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mTrackId:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mForcePlay:Z

    iget-boolean v8, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mGoRadioTab:Z

    iget-boolean v9, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mIsDeepLinkCmd:Z

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 271
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    :goto_1
    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v1, :cond_0

    .line 267
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mFragMngr:Landroid/app/FragmentManager;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mTrackId:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mForcePlay:Z

    iget-boolean v8, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mGoRadioTab:Z

    iget-boolean v9, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mIsDeepLinkCmd:Z

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZ)V

    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    goto :goto_0

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-nez v1, :cond_3

    .line 275
    const-string v1, "MilkWorkerPlayStation"

    const-string/jumbo v2, "run : Error is happend - Callback is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_3
    const-string v1, "MilkWorkerPlayStation"

    const-string/jumbo v2, "run : Error is happend - Runnable is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "MilkWorkerPlayStation"

    return-object v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 142
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onApiHandled : Context is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/16 v1, 0xc9

    if-ne p2, v1, :cond_0

    .line 150
    if-eqz p4, :cond_2

    instance-of v1, p4, Lcom/samsung/android/app/music/common/model/Station;

    if-nez v1, :cond_4

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onApiHandled : Station is not Existed in server  Go to first Spotlight Station"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    const v2, 0x7f0a028f

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 157
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->playFirstSpotlightStation()V

    goto :goto_0

    .line 159
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onApiHandled : Play Station by station info from server"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mRspToClient:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mFragMngr:Landroid/app/FragmentManager;

    move-object v5, p4

    check-cast v5, Lcom/samsung/android/app/music/common/model/Station;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mTrackId:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mForcePlay:Z

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mGoRadioTab:Z

    iget-boolean v10, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mIsDeepLinkCmd:Z

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZZ)V

    .line 164
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v1, :cond_5

    .line 165
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 167
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-nez v1, :cond_6

    .line 168
    const-string v1, "MilkWorkerPlayStation"

    const-string v2, "onApiHandled : Error is happend - Callback is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_1
    const/4 v1, 0x0

    const-string v2, "MilkWorkerPlayStation"

    const-string v3, "NOT_DEFINE"

    const-string v4, "Parameter Error"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_6
    const-string v1, "MilkWorkerPlayStation"

    const-string v2, "onApiHandled : Error is happend - Runnable is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run : Trying to play station Station ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") StationId ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 87
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v1, :cond_8

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "stationId":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->showLoadingProgress(Z)V

    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "run : Station ID and Station are empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getInFMPage()V

    .line 105
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->forcePlayRadio()V

    .line 106
    const-string v1, "MilkWorkerPlayStation"

    const-string v2, "NOT_DEFINE"

    const-string v3, "Parameter Error"

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v0    # "stationId":Ljava/lang/String;
    :goto_2
    return-void

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run : Trying to play StationId ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStationID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .restart local v0    # "stationId":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStationID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mStationID:Ljava/lang/String;

    goto :goto_1

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    if-nez v1, :cond_4

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "run : Context is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "MilkWorkerPlayStation"

    const-string v2, "NOT_DEFINE"

    const-string v3, "Parameter Error"

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 116
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->hasStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run : Station("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not Existed .. try to Get Station info from server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getStationInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "run : Not initialize - milk service is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "MilkWorkerPlayStation"

    const-string v2, "NOT_DEFINE"

    const-string v3, "not Initialized"

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 126
    :cond_6
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->isUIPlayableStation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 127
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->playStation(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 129
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run : Station("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not playable!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->reqAddtoStation()V

    goto/16 :goto_2

    .line 134
    .end local v0    # "stationId":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "run : callback is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "MilkWorkerPlayStation"

    const-string v2, "NOT_DEFINE"

    const-string v3, "Parameter Error"

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
