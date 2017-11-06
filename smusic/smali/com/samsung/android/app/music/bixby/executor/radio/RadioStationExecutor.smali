.class public Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;
.super Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;
.source "RadioStationExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RadioStationExecutor"


# instance fields
.field private final mDialCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;Lcom/samsung/android/app/music/milk/radio/IDialFragment;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V

    .line 45
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->mDialCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    .line 46
    return-void
.end method

.method private addToMyStation()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 89
    const/4 v8, 0x0

    .line 90
    .local v8, "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "stationID":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v8    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v0, "AddToMyStation"

    invoke-direct {v8, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v8    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v0, "CurrentSongInfo"

    const-string v1, "Exist"

    const-string v2, "no"

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-object v8

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->mFragmentManager:Landroid/app/FragmentManager;

    new-instance v2, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v6, v5

    .line 97
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addToMyStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method

.method private blockCurrentSong()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 6

    .prologue
    .line 75
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v3, "BlockSong"

    invoke-direct {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->getCurrentRadioTrack()Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v2

    .line 78
    .local v2, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->getCurrentRadioStation()Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    .line 79
    .local v1, "station":Lcom/samsung/android/app/music/common/model/Station;
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->mDialCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 80
    :cond_0
    const-string v3, "CurrentSongInfo"

    const-string v4, "Exist"

    const-string v5, "no"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-object v0

    .line 82
    :cond_1
    const-string v3, "CurrentSongInfo"

    const-string v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->mDialCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    invoke-virtual {v3, v4, v2, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->delayBanSong(Lcom/samsung/android/app/music/milk/radio/IDialFragment;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Station;)V

    goto :goto_0
.end method

.method private checkTrackValidation(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Track;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 6
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p3, "isArtist"    # Z

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-nez p2, :cond_0

    .line 137
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "CurrentSongInfo"

    const-string v4, "Exist"

    const-string v5, "no"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 159
    .end local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .local v1, "ret":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 142
    .end local v1    # "ret":Ljava/lang/Object;
    .restart local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_0
    if-eqz p3, :cond_2

    .line 143
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Track;->hasAvailableArtist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 145
    .restart local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "SeedArtist"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    move-object v1, v0

    .line 159
    .restart local v1    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 148
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Track;->isCelebTrack()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 150
    .restart local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "CelebSong"

    const-string v4, "Valid"

    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/Track;->getSeedUsable()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "seedUsable":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->isSongSeedUsable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .end local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v0    # "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v3, "SeedSong"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createStation(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "isArtist"    # Z

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->getCurrentRadioTrack()Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v1

    .line 123
    .local v1, "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->checkTrackValidation(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Track;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v0

    .line 124
    .local v0, "ret":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-nez v0, :cond_0

    .line 125
    if-eqz p2, :cond_1

    .line 126
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getArtistList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->createStationFromArtist(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->createStationFromSong(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    goto :goto_0
.end method

.method private getCurrentRadioStation()Lcom/samsung/android/app/music/common/model/Station;
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "stationID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x0

    .line 168
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v1

    goto :goto_0
.end method

.method private getCurrentRadioTrack()Lcom/samsung/android/app/music/common/model/Track;
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentTrackId()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "trackID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "stationID":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    const/4 v2, 0x0

    .line 178
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 7
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 50
    const-string v4, "RadioStationExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execute() - Action("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") State("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") isLast("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v4, "MANAGE_MY_STATION"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "state":Ljava/lang/String;
    const/4 v0, 0x0

    .line 56
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v4, "CreateStationFromArtist"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->createStation(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v0

    .line 66
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 67
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v4, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 71
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v1    # "state":Ljava/lang/String;
    :cond_1
    :goto_1
    return v2

    .line 58
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .restart local v1    # "state":Ljava/lang/String;
    :cond_2
    const-string v4, "CreateStationFromSong"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 59
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->createStation(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_3
    const-string v3, "AddToMyStation"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->addToMyStation()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_4
    const-string v3, "BlockSong"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/radio/RadioStationExecutor;->blockCurrentSong()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v0

    goto :goto_0

    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v1    # "state":Ljava/lang/String;
    :cond_5
    move v2, v3

    .line 71
    goto :goto_1
.end method

.method public isRadio()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 182
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 183
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
