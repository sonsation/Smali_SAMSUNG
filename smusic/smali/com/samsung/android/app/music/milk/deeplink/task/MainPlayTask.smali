.class public Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;
.source "MainPlayTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MainPlayTask"


# instance fields
.field private mStationId:Ljava/lang/String;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 22
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->STATION_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;->mStationId:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;->mTrackId:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;->mActivity:Landroid/app/Activity;

    .line 34
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;)V

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;->mStationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;->mTrackId:Ljava/lang/String;

    const/4 v6, 0x0

    move v7, v5

    move v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;->mStationId:Ljava/lang/String;

    invoke-virtual {p0, v0, v9, v9}, Lcom/samsung/android/app/music/milk/deeplink/task/MainPlayTask;->sendBigDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    return-void
.end method

.method protected getExtraCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
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
    .line 59
    .local p1, "customData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "MainPlayTask"

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
