.class public Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;
.super Ljava/lang/Object;
.source "MilkStreamingUrl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceCommandReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDormancySongNum:I

.field private final mMilkServiceInterface:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

.field private mSettledStationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "milkServiceInterface"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    .line 252
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mMilkServiceInterface:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .line 253
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Lcom/samsung/android/app/music/common/model/Track;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->getMessageCode(Lcom/samsung/android/app/music/common/model/Track;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Landroid/os/Messenger;Lcom/samsung/android/app/music/common/model/Track;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p3, "x3"    # I

    .prologue
    .line 240
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->sendResponse(Landroid/os/Messenger;Lcom/samsung/android/app/music/common/model/Track;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Landroid/os/Messenger;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p3, "x3"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p4, "x4"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p5, "x5"    # I

    .prologue
    .line 240
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->sendResponse(Landroid/os/Messenger;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;I)V

    return-void
.end method

.method private addRadioHistory(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 307
    const-string v1, "extra_track_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "trackId":Ljava/lang/String;
    const-string v1, "extra_station_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "stationId":Ljava/lang/String;
    const-string v1, "com.samsung.android.app.music.action.EXTRA_NEXT_REQ_ID"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 310
    .local v3, "requestId":I
    const-string v1, "SMUSIC-SV-PlayerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MilkStreamingUrl: addRadioHistory trackId : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " stationId : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/history/AddRadioHistoryWorker;->doWork()V

    .line 316
    return-void
.end method

.method private getAIType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "stationId"    # Ljava/lang/String;

    .prologue
    .line 513
    const-string v2, "com.samsung.android.app.music.action.ACTION_REQ_RADIO_QUEUE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mSettledStationId:Ljava/lang/String;

    .line 514
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getStation(Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    .line 516
    .local v1, "station":Lcom/samsung/android/app/music/common/model/Station;
    const-string v2, "SV-PlayerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MilkStreamingUrl: requestRadio station : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    if-eqz v1, :cond_1

    .line 518
    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v2

    .line 519
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->isAudioAdYn()Z

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->isImageAdYn()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->getNextPlayType(ZZZ)Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    move-result-object v0

    .line 520
    .local v0, "adPlayType":Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    const-string v2, "SV-PlayerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MilkStreamingUrl: requestRadio getNextPlayType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sget-object v2, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->AD:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    const-string v2, "10"

    .line 528
    .end local v0    # "adPlayType":Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    .end local v1    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :goto_0
    return-object v2

    .line 523
    .restart local v0    # "adPlayType":Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    .restart local v1    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->AI:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    const-string v2, "3"

    goto :goto_0

    .line 528
    .end local v0    # "adPlayType":Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    .end local v1    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getMessageCode(Lcom/samsung/android/app/music/common/model/Track;)I
    .locals 10
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/Track;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 432
    const/4 v0, -0x1

    .line 434
    .local v0, "code":I
    iget-object v6, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->isDormancyMode()Z

    move-result v2

    .line 435
    .local v2, "isDormancyMode":Z
    iget v6, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mDormancySongNum:I

    iget-object v7, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getDormancyCount(Landroid/content/Context;)I

    move-result v7

    if-ge v6, v7, :cond_0

    if-eqz v2, :cond_2

    .line 436
    :cond_0
    if-nez v2, :cond_1

    iget-object v6, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->setDormancyMode(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 437
    const-string v6, "SV-PlayerServer"

    const-string v7, "getMessageCode : Dormancy mode is true"

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v6, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v9}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->showDormancyNotification(Landroid/content/Context;Z)V

    .line 439
    iput v8, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mDormancySongNum:I

    .line 441
    :cond_1
    const/16 v6, 0x32c8

    .line 470
    :goto_0
    return v6

    .line 444
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v5

    .line 445
    .local v5, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    iget-object v6, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUserExplicitType(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/UserInfo;)I

    move-result v1

    .line 446
    .local v1, "explicitType":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v6

    const-string v7, "explicit_option"

    .line 447
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 448
    .local v3, "isExplicitOn":Z
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->isExplicit()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    .line 450
    add-int/lit16 v0, v1, 0x2710

    :cond_3
    :goto_1
    move v6, v0

    .line 470
    goto :goto_0

    .line 451
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getAudioUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->isFullSong(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 452
    const-string v6, "1"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getPremiumOnlyYn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "1"

    .line 453
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getPreviewSongOnly()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 454
    :cond_5
    const-string v6, "SV-PlayerServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Premium or preview only. premium="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getPremiumOnlyYn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/16 v6, 0x3a98

    goto :goto_0

    .line 457
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    .line 458
    const/16 v0, 0x2af8

    .line 463
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->isRadioPlaylimitOver()Z

    move-result v4

    .line 464
    .local v4, "isLimited":Z
    iget-object v6, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    const-string v7, "com.sec.android.app.music.KEY_RADIO_PLAY_LIMIT_OVER"

    invoke-static {v6, v7, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 465
    if-eqz v4, :cond_3

    .line 466
    const/16 v0, 0x36b0

    goto :goto_1

    .line 460
    .end local v4    # "isLimited":Z
    :cond_7
    const/16 v0, 0x2ee0

    goto :goto_2
.end method

.method private hasCachedRadioData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/app/music/common/model/Track;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;
    .param p4, "quality"    # I

    .prologue
    .line 551
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "track_audio_url"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "track_audio_url_exp"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "track_is_explicit"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "track_settle_ext"

    aput-object v1, v2, v0

    .line 555
    .local v2, "projection":[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$StationTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "station_id=? AND track_id=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 554
    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 559
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    const-string/jumbo v0, "track_audio_url_exp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 561
    .local v9, "urlExp":Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/android/app/music/common/model/Track;->isUrlExpired(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 562
    const-string/jumbo v0, "track_audio_url"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 563
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->isSameAudioQuality(Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    new-instance v7, Lcom/samsung/android/app/music/common/model/Track;

    invoke-direct {v7}, Lcom/samsung/android/app/music/common/model/Track;-><init>()V

    .line 565
    .local v7, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/common/model/Track;->setAudioUrl(Ljava/lang/String;)Z

    .line 566
    const-string/jumbo v0, "track_is_explicit"

    .line 567
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 566
    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/common/model/Track;->setExplicit(I)V

    .line 568
    const-string/jumbo v0, "track_settle_ext"

    .line 569
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 568
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/common/model/Track;->setSettlementExt(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 574
    if-eqz v6, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    .end local v7    # "track":Lcom/samsung/android/app/music/common/model/Track;
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "urlExp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 574
    .restart local v7    # "track":Lcom/samsung/android/app/music/common/model/Track;
    .restart local v8    # "url":Ljava/lang/String;
    .restart local v9    # "urlExp":Ljava/lang/String;
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "track":Lcom/samsung/android/app/music/common/model/Track;
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "urlExp":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 575
    :cond_3
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 574
    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 554
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 574
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v1, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private hasCachedRadioData(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 532
    const-string v8, "extra_audio_quality"

    .line 533
    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 535
    .local v3, "quality":I
    const-string v8, "extra_station_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, "stationId":Ljava/lang/String;
    const-string v8, "extra_track_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 537
    .local v6, "trackId":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, v4, v6, v3}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->hasCachedRadioData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v5

    .line 538
    .local v5, "track":Lcom/samsung/android/app/music/common/model/Track;
    if-nez v5, :cond_0

    .line 546
    :goto_0
    return v7

    .line 541
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    const-string v9, "com.sec.android.app.music.KEY_RADIO_PLAY_LIMIT_OVER"

    invoke-static {v8, v9, v7}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 542
    .local v1, "isLimitOver":Z
    invoke-virtual {v5, v1}, Lcom/samsung/android/app/music/common/model/Track;->setRadioPlaylimitOver(Z)V

    .line 543
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->getMessageCode(Lcom/samsung/android/app/music/common/model/Track;)I

    move-result v0

    .line 544
    .local v0, "code":I
    const-string v7, "extra_messenger"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 545
    .local v2, "messenger":Landroid/os/Messenger;
    invoke-direct {p0, v2, v5, v0}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->sendResponse(Landroid/os/Messenger;Lcom/samsung/android/app/music/common/model/Track;I)V

    .line 546
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private isSameAudioQuality(Landroid/net/Uri;I)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "quality"    # I

    .prologue
    .line 579
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getAudioQuality(Landroid/net/Uri;)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestRadio(Landroid/content/Intent;I)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "reqId"    # I

    .prologue
    .line 331
    const-string v1, "extra_messenger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/os/Messenger;

    .line 332
    .local v11, "messenger":Landroid/os/Messenger;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 333
    .local v10, "action":Ljava/lang/String;
    const-string v1, "extra_station_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "stationId":Ljava/lang/String;
    const-string v1, "extra_track_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "trackId":Ljava/lang/String;
    const-string v1, "extra_audio_quality"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 337
    .local v8, "aq":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->getAIType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "aiType":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    new-instance v7, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;

    invoke-direct {v7, p0, v10, v11}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;-><init>(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Ljava/lang/String;Landroid/os/Messenger;)V

    iget-object v9, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mMilkServiceInterface:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 362
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/RadioSongRequestWorker;->doWork()V

    .line 366
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mSettledStationId:Ljava/lang/String;

    .line 367
    return-void
.end method

.method private requestSong(Landroid/content/Intent;I)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "reqId"    # I

    .prologue
    const/4 v4, 0x0

    .line 370
    const-string v1, "extra_messenger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/os/Messenger;

    .line 371
    .local v10, "messenger":Landroid/os/Messenger;
    const-string v1, "extra_track_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "trackId":Ljava/lang/String;
    const-string v1, "extra_audio_quality"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 375
    .local v8, "aq":I
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    new-instance v7, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$2;

    invoke-direct {v7, p0, v10, v5}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$2;-><init>(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Landroid/os/Messenger;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mMilkServiceInterface:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move v3, p2

    move-object v6, v4

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;ILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 397
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/ModSongRequestWorker;->doWork()V

    .line 398
    return-void
.end method

.method private sendResponse(Landroid/os/Messenger;Lcom/samsung/android/app/music/common/model/Track;I)V
    .locals 6
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "messageCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 401
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 402
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v0, "data":Landroid/os/Bundle;
    const-string v5, "extra_url"

    if-nez p2, :cond_0

    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v3, "extra_message_code"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    const-string v3, "extra_settlement"

    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_2
    return-void

    .line 403
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Track;->getAudioUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Track;->getSettlementExt()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SMUSIC-SV-PlayerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MilkStreamingUrl: send msg but error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private sendResponse(Landroid/os/Messenger;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;I)V
    .locals 6
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "prevTrack"    # Lcom/samsung/android/app/music/common/model/Track;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "currentTrack"    # Lcom/samsung/android/app/music/common/model/Track;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "nextTrack"    # Lcom/samsung/android/app/music/common/model/Track;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "messageCode"    # I

    .prologue
    .line 417
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 418
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 419
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "extra_prev_track"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 420
    const-string v3, "extra_current_track"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 421
    const-string v3, "extra_next_track"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 422
    const-string v3, "extra_message_code"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 425
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SMUSIC-SV-PlayerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MilkStreamingUrl: send msg but error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private settle(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 277
    const-string v1, "extra_track_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "trackId":Ljava/lang/String;
    const-string v1, "extra_settlement"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "settlement":Ljava/lang/String;
    const-string v1, "extra_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p1, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 280
    .local v12, "loggingTime":J
    const-string v1, "extra_player_position"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 281
    .local v8, "currentPosition":J
    const-string v1, "extra_station_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 282
    .local v10, "stationId":Ljava/lang/String;
    const-string v1, "com.samsung.android.app.music.action.EXTRA_NEXT_REQ_ID"

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 283
    .local v3, "serverRequestId":I
    const-string v1, "SV-PlayerServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MilkStreamingUrl: settle receive "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    if-nez v10, :cond_1

    .line 287
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    .line 289
    invoke-static {v12, v13}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTime(J)J

    move-result-wide v6

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/ModAdjustmentWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 291
    .local v0, "worker":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->doWork()V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 293
    .end local v0    # "worker":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/adjustment/RadioAdjustmentWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    .line 295
    invoke-static {v12, v13}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getServerTime(J)J

    move-result-wide v6

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/service/milk/worker/adjustment/RadioAdjustmentWorker;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 297
    .restart local v0    # "worker":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->doWork()V

    .line 298
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v11

    .line 299
    .local v11, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/UserInfo;->isStreamingUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    iput-object v10, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mSettledStationId:Ljava/lang/String;

    .line 301
    iget v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mDormancySongNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mDormancySongNum:I

    goto :goto_0
.end method

.method private showDormancyNotification(Landroid/content/Context;Z)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showIt"    # Z

    .prologue
    const v10, 0xc7a7

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 474
    if-nez p2, :cond_0

    .line 475
    const-string v6, "SV-PlayerServer"

    const-string/jumbo v7, "showDormancyNotification : Dormancy noti is dismiss!!"

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v6, "notification"

    .line 477
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 478
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v4, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 509
    :goto_0
    return-void

    .line 482
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    const-string v6, "SV-PlayerServer"

    const-string/jumbo v7, "showDormancyNotification : Dormancy noti is shown!!"

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 484
    .local v0, "builder":Landroid/app/Notification$Builder;
    const-string v6, "notification"

    .line 485
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 486
    .restart local v4    # "notificationManager":Landroid/app/NotificationManager;
    const v6, 0x7f020128

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 487
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 489
    const v6, 0x7f0a0296

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 490
    const v6, 0x7f0a0299

    .line 491
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 493
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v6, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 494
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 496
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC_MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v1, "launchMain":Landroid/content/Intent;
    const-string v6, "com.sec.android.app.music"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string v6, "launchMusicPlayerWithRadio"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 499
    const/high16 v6, 0x24000000

    .line 500
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 501
    const v6, 0x7f120022

    const/high16 v7, 0x8000000

    .line 502
    invoke-static {p1, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 505
    .local v5, "pendingLaunchMainIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 506
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 507
    .local v3, "noti":Landroid/app/Notification;
    invoke-virtual {v4, v10, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.android.app.music.action.ACTION_REQUEST_SONG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.samsung.android.app.music.action.ACTION_REQUEST_RADIO"

    .line 259
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->sendResponse(Landroid/content/Intent;)V

    .line 273
    :goto_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 261
    :cond_2
    const-string v2, "com.samsung.android.app.music.action.ACTION_REQ_RADIO_QUEUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    const-string v2, "com.samsung.android.app.music.action.EXTRA_NEXT_REQ_ID"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->requestRadio(Landroid/content/Intent;I)V

    goto :goto_0

    .line 263
    :cond_3
    const-string v2, "com.samsung.android.app.music.action.ACTION_REQUEST_SETTLEMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->settle(Landroid/content/Intent;)V

    goto :goto_0

    .line 265
    :cond_4
    const-string v2, "com.samsung.android.app.music.action.ACTION_REQ_RESET_DORMANCY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 266
    iput v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->mDormancySongNum:I

    goto :goto_0

    .line 267
    :cond_5
    const-string v2, "com.samsung.android.app.music.action.ACTION_REQ_ADD_RADIO_HISTORY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->addRadioHistory(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendResponse(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 319
    const-string v0, "com.samsung.android.app.music.action.ACTION_REQUEST_SONG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    const-string v0, "com.samsung.android.app.music.action.EXTRA_NEXT_REQ_ID"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->requestSong(Landroid/content/Intent;I)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const-string v0, "com.samsung.android.app.music.action.ACTION_REQUEST_RADIO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->hasCachedRadioData(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    const-string v0, "SMUSIC-SV-PlayerServer"

    const-string v1, "MilkStreamingUrl: sendResponse >> Reused cached song data."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_2
    const-string v0, "com.samsung.android.app.music.action.EXTRA_NEXT_REQ_ID"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->requestRadio(Landroid/content/Intent;I)V

    goto :goto_0
.end method
