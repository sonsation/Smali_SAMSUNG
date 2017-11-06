.class final Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RadioPlayControl"
.end annotation


# instance fields
.field private final mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private final mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

.field private final mPlayerService:Lcom/samsung/android/app/music/service/PlayerService;

.field private final mRadioQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

.field private final mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/android/app/music/service/PlayerService;
    .param p2, "player"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .param p3, "playerQueue"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .param p4, "networkManager"    # Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    .prologue
    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayerService:Lcom/samsung/android/app/music/service/PlayerService;

    .line 1294
    iput-object p2, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 1295
    iput-object p3, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 1296
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayerQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v1, 0x2

    .line 1297
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mRadioQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .line 1298
    iput-object p4, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    .line 1299
    return-void
.end method

.method private isNextPrevControllable()Z
    .locals 2

    .prologue
    .line 1451
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mRadioQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 1452
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrevNextControllable()Z

    move-result v1

    return v1
.end method

.method private isRadioActive()Z
    .locals 2

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayerService:Lcom/samsung/android/app/music/service/PlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->access$200(Lcom/samsung/android/app/music/service/PlayerService;I)Z

    move-result v0

    return v0
.end method

.method private isUnAvailable()Z
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mServiceNetworkManager:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->isAvailableNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextRadio(ZZZ)Z
    .locals 2
    .param p1, "ignoreRepeatOne"    # Z
    .param p2, "isGapless"    # Z
    .param p3, "ignoreControllable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1457
    if-nez p3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isNextPrevControllable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1465
    :cond_0
    :goto_0
    return v0

    .line 1460
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isUnAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayerService:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->access$2000(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 1464
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mRadioQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToNext(ZZ)V

    .line 1465
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pauseRadio()V
    .locals 1

    .prologue
    .line 1473
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isRadioActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    .line 1476
    :cond_0
    return-void
.end method

.method private playRadio()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1479
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isUnAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1480
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->pauseRadio()V

    .line 1494
    :goto_0
    return-void

    .line 1483
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayerService:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/PlayerService;->access$2100(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 1484
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->setRadioActive()V

    .line 1486
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mRadioQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    .line 1487
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/EmptyRadioPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1488
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1489
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 1490
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mRadioQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->movePosition(II)V

    goto :goto_0

    .line 1492
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play()V

    goto :goto_0
.end method

.method private prevInLimitMove()V
    .locals 2

    .prologue
    .line 1469
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->seek(J)J

    .line 1470
    return-void
.end method

.method private setRadioActive()V
    .locals 2

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayerService:Lcom/samsung/android/app/music/service/PlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->access$300(Lcom/samsung/android/app/music/service/PlayerService;I)V

    .line 1518
    return-void
.end method

.method private togglePlayRadio()V
    .locals 1

    .prologue
    .line 1497
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isUnAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    :goto_0
    return-void

    .line 1500
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isRadioActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1501
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1502
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->pauseRadio()V

    goto :goto_0

    .line 1504
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->playRadio()V

    goto :goto_0

    .line 1507
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->setRadioActive()V

    .line 1508
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->playRadio()V

    goto :goto_0
.end method


# virtual methods
.method public completePlaying(Z)V
    .locals 2
    .param p1, "isGapless"    # Z

    .prologue
    .line 1314
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->nextRadio(ZZZ)Z

    .line 1315
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public forward()V
    .locals 0

    .prologue
    .line 1423
    return-void
.end method

.method public isSupportForward()Z
    .locals 1

    .prologue
    .line 1412
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportRewind()Z
    .locals 1

    .prologue
    .line 1417
    const/4 v0, 0x0

    return v0
.end method

.method public next()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1339
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->nextRadio(ZZZ)Z

    move-result v0

    return v0
.end method

.method public next(ZZ)Z
    .locals 1
    .param p1, "ignoreRepeatOne"    # Z
    .param p2, "isGapless"    # Z

    .prologue
    .line 1344
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->nextRadio(ZZZ)Z

    move-result v0

    return v0
.end method

.method public openQueueId(JIZ)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "direction"    # I
    .param p4, "play"    # Z

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isUnAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    :goto_0
    return-void

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayerService:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->access$1700(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 1307
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1308
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 1309
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mRadioQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToQueueItem(JI)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 1334
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->pauseRadio()V

    .line 1335
    return-void
.end method

.method public play()V
    .locals 0

    .prologue
    .line 1329
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->playRadio()V

    .line 1330
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev(J)Z
    .locals 3
    .param p1, "time"    # J

    .prologue
    const/4 v0, 0x0

    .line 1376
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isNextPrevControllable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return v0

    .line 1379
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isUnAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayerService:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->access$1900(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 1384
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isRadioActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1385
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mRadioQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    .line 1387
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1388
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mRadioQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    .line 1389
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public prev(Z)Z
    .locals 6
    .param p1, "force"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 1349
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isNextPrevControllable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return v0

    .line 1352
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isUnAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayerService:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->access$1800(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 1356
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isRadioActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1357
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mRadioQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    .line 1360
    :cond_2
    if-eqz p1, :cond_3

    .line 1361
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1362
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mRadioQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    .line 1371
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1364
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 1365
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->prevInLimitMove()V

    goto :goto_1

    .line 1367
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 1368
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mRadioQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->moveToPrev()V

    goto :goto_1
.end method

.method public rewind()V
    .locals 0

    .prologue
    .line 1428
    return-void
.end method

.method public seek(J)J
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 1394
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->isNextPrevControllable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v0

    .line 1397
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->seek(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public setSupposeToBePlaying(Z)V
    .locals 1
    .param p1, "supposeToBePlaying"    # Z

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlaying(Z)V

    .line 1320
    return-void
.end method

.method public startForward()V
    .locals 0

    .prologue
    .line 1433
    return-void
.end method

.method public startRewind()V
    .locals 0

    .prologue
    .line 1443
    return-void
.end method

.method public stopForward()V
    .locals 0

    .prologue
    .line 1438
    return-void
.end method

.method public stopRewind()V
    .locals 0

    .prologue
    .line 1448
    return-void
.end method

.method public togglePlay()V
    .locals 0

    .prologue
    .line 1324
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/PlayerService$RadioPlayControl;->togglePlayRadio()V

    .line 1325
    return-void
.end method
