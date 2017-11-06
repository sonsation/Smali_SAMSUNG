.class public Lcom/samsung/android/app/music/milk/RadioControlHelper;
.super Ljava/lang/Object;
.source "RadioControlHelper.java"


# static fields
.field private static final LOG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/app/music/milk/RadioControlHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/RadioControlHelper;->LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forcePlayRadio()V
    .locals 0

    .prologue
    .line 113
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playRadio()V

    .line 114
    return-void
.end method

.method public static getActiveService()I
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getActivePlayerQueue()I

    move-result v0

    return v0
.end method

.method public static getCurrentStationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNextMyStation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 79
    .line 80
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getMyStationOrdinal(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 79
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getNextMyStationId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "nextStationId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 82
    invoke-static {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getFirstGenreStationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/samsung/android/app/music/milk/RadioControlHelper;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveStation : go to first genre station - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-object v0
.end method

.method private static getNextStation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 69
    .line 70
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStationOrdinal(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 69
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getNextStationId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "nextStationId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getLastMyStationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/samsung/android/app/music/milk/RadioControlHelper;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveStation : go to last my station - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-object v0
.end method

.method private static getPrevMyStation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 99
    .line 100
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getMyStationOrdinal(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 99
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getPrevMyStationId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "prevStationId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 102
    invoke-static {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getLastGenreStationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/samsung/android/app/music/milk/RadioControlHelper;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveStation : go to last genre station - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-object v0
.end method

.method private static getPrevStation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 89
    .line 90
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStationOrdinal(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 89
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getPrevStationId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "prevStationId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getFirstMyStationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/samsung/android/app/music/milk/RadioControlHelper;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveStation : go to first my station - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-object v0
.end method

.method public static getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public static isPlayerServiceConnected()Z
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->wasServiceConnected()Z

    move-result v0

    return v0
.end method

.method public static isPlaying()Z
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isRadioPlaying()Z

    move-result v0

    return v0
.end method

.method public static moveNextStation(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "isMyStation"    # Z
    .param p3, "forcePlay"    # Z

    .prologue
    .line 49
    if-eqz p2, :cond_0

    .line 50
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getNextMyStation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "targetId":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0, p3}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 55
    return-void

    .line 52
    .end local v0    # "targetId":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getNextStation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "targetId":Ljava/lang/String;
    goto :goto_0
.end method

.method public static movePrevStation(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "isMyStation"    # Z
    .param p3, "forcePlay"    # Z

    .prologue
    .line 60
    if-eqz p2, :cond_0

    .line 61
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getPrevMyStation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "targetId":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0, p3}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 66
    return-void

    .line 63
    .end local v0    # "targetId":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getPrevStation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "targetId":Ljava/lang/String;
    goto :goto_0
.end method

.method public static moveStation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "forcePlay"    # Z

    .prologue
    .line 43
    invoke-static {p0, p1, p3}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public static moveStation(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationId"    # Ljava/lang/String;
    .param p2, "forcePlay"    # Z

    .prologue
    .line 29
    if-nez p1, :cond_1

    .line 30
    sget-object v0, Lcom/samsung/android/app/music/milk/RadioControlHelper;->LOG:Ljava/lang/String;

    const-string v1, "moveStation : station id is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/milk/RadioControlHelper;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveStation : stationId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "com.samsung.common.service.last_station_id"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->reloadRadioQueue()V

    .line 36
    if-eqz p2, :cond_0

    .line 37
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playRadio()V

    goto :goto_0
.end method

.method public static pause()V
    .locals 0

    .prologue
    .line 109
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->pauseRadio()V

    .line 110
    return-void
.end method
