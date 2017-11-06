.class public Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;
.source "MainCreateTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MainCreateTask"


# instance fields
.field private mArtist:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mIsPlay:Z

.field private mSeed:Ljava/lang/String;

.field private mStationName:Ljava/lang/String;

.field private mTrack:Ljava/lang/String;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isPlay"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/SharableDeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 38
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ARTIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mArtist:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ARTIST_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mArtistId:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mTrack:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mTrackId:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->STATION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mStationName:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->SEED_LIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mSeed:Ljava/lang/String;

    .line 44
    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mIsPlay:Z

    .line 45
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 54
    new-instance v12, Lcom/samsung/android/app/music/common/model/artist/Artist;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mArtistId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mArtist:Ljava/lang/String;

    invoke-direct {v12, v0, v1}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v12, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v5, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mSeed:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->parseSeedListString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 59
    .local v10, "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    .line 61
    .local v13, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mTrack:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mTrackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-static {v13}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mActivity:Landroid/app/Activity;

    .line 71
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mTrackId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mTrack:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mIsPlay:Z

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mStationName:Ljava/lang/String;

    move v11, v7

    .line 63
    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByTrack(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZLjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 86
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mStationName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mSeed:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->parseDeepLinkSeedListString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->sendBigDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 87
    return-void

    .line 74
    :cond_0
    invoke-static {v13}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask$2;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mActivity:Landroid/app/Activity;

    .line 82
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-boolean v6, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mIsPlay:Z

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mStationName:Ljava/lang/String;

    .line 74
    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByArtist(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/util/ArrayList;ZZZLjava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected getExtraCommand()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    const-string v0, ""

    .line 98
    .local v0, "cmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mSeed:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->parseSeedListString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    .local v1, "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " multi-seed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->getActionType()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE_AND_PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->getActionType()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mTrackId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " artist-seed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " track-seed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 122
    .local p1, "customData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "MainCreateTask"

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mArtist:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MainCreateTask;->mArtistId:Ljava/lang/String;

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
