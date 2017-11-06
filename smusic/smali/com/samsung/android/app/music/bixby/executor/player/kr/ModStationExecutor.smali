.class public Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;
.super Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;
.source "ModStationExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

.field private final mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V
    .locals 1
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    .line 39
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    .line 40
    return-void
.end method

.method private blockCurrentSong()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v1, "BlockSong"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v1, "PlayingRadio"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-object v0
.end method

.method private checkTrackValidation(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/TrackDetail;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 6
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "trackDetail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;
    .param p3, "isArtist"    # Z

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-nez p2, :cond_0

    .line 118
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "CurrentSongInfo"

    const-string v4, "Exist"

    const-string v5, "no"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 140
    .end local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .local v1, "ret":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 123
    .end local v1    # "ret":Ljava/lang/Object;
    .restart local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    if-eqz p3, :cond_2

    .line 124
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/TrackDetail;->hasAvailableArtist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "SeedArtist"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    move-object v1, v0

    .line 140
    .restart local v1    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 129
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isCelebTrack()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "CelebSong"

    const-string v4, "Valid"

    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getSeedUsable()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "seedUsable":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->isSongSeedUsable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "SeedSong"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createStation(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/TrackDetail;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 2
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "trackDetail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;
    .param p3, "isArtist"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->checkTrackValidation(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/TrackDetail;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v0

    .line 105
    .local v0, "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-nez v0, :cond_0

    .line 106
    if-eqz p3, :cond_1

    .line 107
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->createStationFromArtist(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->createStationFromSong(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    goto :goto_0
.end method

.method private internalExecute(Lcom/samsung/android/app/music/common/model/TrackDetail;)V
    .locals 5
    .param p1, "trackDetail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;

    .prologue
    const/4 v4, 0x1

    .line 82
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "state":Ljava/lang/String;
    const/4 v0, 0x0

    .line 84
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v2, "CreateStationFromArtist"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    invoke-direct {p0, v1, p1, v4}, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->createStation(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/TrackDetail;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v0

    .line 92
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 93
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 95
    :cond_1
    return-void

    .line 86
    :cond_2
    const-string v2, "CreateStationFromSong"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->createStation(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/TrackDetail;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_3
    const-string v2, "BlockSong"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->blockCurrentSong()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 8
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 44
    sget-object v5, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execute() - Action("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") State("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") isLast("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 46
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 44
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v5, "MANAGE_MY_STATION"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 49
    .local v1, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v5, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 50
    .local v0, "cpAttrs":I
    packed-switch v0, :pswitch_data_0

    .line 65
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v5, "OnDeviceSongs"

    const-string v6, "Valid"

    const-string/jumbo v7, "yes"

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 72
    .end local v0    # "cpAttrs":I
    .end local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v2    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_0
    return v4

    .line 52
    .restart local v0    # "cpAttrs":I
    .restart local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :pswitch_0
    const-string v5, "com.samsung.android.app.music.metadata.SOURCE_ID"

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "trackId":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 54
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 55
    .restart local v2    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v5, "CurrentSongInfo"

    const-string v6, "Exist"

    const-string v7, "no"

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .line 61
    .end local v2    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->mCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 62
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;

    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v3, p0}, Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter;->requestTrackDetail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/MilkTrackDetailGetter$OnTrackDetailUpdateListener;)V

    goto :goto_0

    .line 72
    .end local v0    # "cpAttrs":I
    .end local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v3    # "trackId":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x80002
        :pswitch_0
    .end packed-switch
.end method

.method public onUpdated(Lcom/samsung/android/app/music/common/model/TrackDetail;)V
    .locals 2
    .param p1, "trackDetail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;

    .prologue
    .line 77
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdated()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/player/kr/ModStationExecutor;->internalExecute(Lcom/samsung/android/app/music/common/model/TrackDetail;)V

    .line 79
    return-void
.end method
