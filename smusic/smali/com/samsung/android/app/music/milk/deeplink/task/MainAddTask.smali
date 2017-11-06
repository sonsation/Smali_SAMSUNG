.class public Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;
.source "MainAddTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MainAddTask"


# instance fields
.field private mIsPlay:Z

.field private mStationId:Ljava/lang/String;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isPlay"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->STATION_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;->mStationId:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;->mTrackId:Ljava/lang/String;

    .line 26
    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;->mIsPlay:Z

    .line 27
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;->mActivity:Landroid/app/Activity;

    .line 37
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;)V

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;->mStationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;->mTrackId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;->mIsPlay:Z

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addToMyStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;->mStationId:Ljava/lang/String;

    invoke-virtual {p0, v0, v8, v8}, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;->sendBigDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 48
    return-void
.end method

.method protected getExtraCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, ""

    return-object v0
.end method

.method protected getExtraLogInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "customData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "MainAddTask"

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainAddTask;->mStationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
