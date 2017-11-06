.class public abstract Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "SharableDeepLinkTask.java"


# instance fields
.field private mActionType:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field private mSharePlatform:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 22
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getActionType(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;->mActionType:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ORIGIM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;->mSharePlatform:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected getActionType()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;->mActionType:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    return-object v0
.end method

.method protected abstract getExtraCommand()Ljava/lang/String;
.end method

.method protected abstract getExtraLogInfo(Ljava/util/HashMap;)V
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
.end method

.method public sendBigDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "stationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/DeepLinkSeed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, "updateSeedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/DeepLinkSeed;>;"
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;->mSharePlatform:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->getSharePlatfomType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    move-result-object v4

    .line 33
    .local v4, "platformType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;
    if-nez v4, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;->getLogTag()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "sendBigDataLog : Not from share platform"

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v6, 0x0

    .line 39
    .local v6, "stationType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 40
    .local v3, "genreName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 41
    .local v2, "genreId":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v1, "customData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 44
    const/4 v5, 0x0

    .line 48
    .local v5, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v5, :cond_1

    .line 49
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Station;->isGenreStation()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 51
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v2

    .line 57
    .end local v5    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeepLink cmd("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;->mActionType:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;->getExtraCommand()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "CMD":Ljava/lang/String;
    goto :goto_0
.end method
