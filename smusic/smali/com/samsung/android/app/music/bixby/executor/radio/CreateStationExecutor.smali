.class public Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;
.super Ljava/lang/Object;
.source "CreateStationExecutor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mFragmentManager:Landroid/app/FragmentManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;)V
    .locals 1
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->mActivity:Landroid/app/Activity;

    .line 50
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->mFragmentManager:Landroid/app/FragmentManager;

    .line 52
    return-void
.end method


# virtual methods
.method protected checkFailurePlaying(Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 6
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "isGenreStation"    # Z

    .prologue
    .line 129
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "createNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const/4 v1, 0x0

    .line 132
    .local v1, "loc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 134
    .local v2, "rspType":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 135
    const-string v3, "LocationTag"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v3, "ResType"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    :cond_0
    const-string v3, "ServerErrorType"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    if-eqz p3, :cond_1

    .line 141
    const-string v3, "CurrentSongInfo"

    const-string v4, "Exist"

    const-string v5, "no"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    sget-object v3, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkFailurePlaying() -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-object v0

    .line 143
    :cond_1
    const-string v3, "SeedArtist"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_2
    const-string v3, "MaximumMyStationsReachedDialog"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    const-string v3, "ExceedMaxNumber"

    const-string v4, "Valid"

    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_3
    if-eqz p3, :cond_4

    .line 149
    const-string v3, "WarningPopup"

    const-string v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_4
    const-string v3, "SucceedPlaying"

    const-string v4, "Valid"

    const-string v5, "no"

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected checkSuccessPlaying(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 5
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "isGenreStation"    # Z

    .prologue
    .line 112
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "createNlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz p2, :cond_0

    .line 114
    const-string v2, "WarningPopup"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    sget-object v2, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSuccessPlaying() -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-object v0

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    .line 118
    .local v1, "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->isStreamingUser()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    const-string v2, "Subscription"

    const-string v3, "Valid"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    const-string v2, "Subscription"

    const-string v3, "Valid"

    const-string v4, "no"

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected createStationFromArtist(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByArtist(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/util/ArrayList;ZZ)V

    .line 104
    return-void
.end method

.method protected createStationFromSong(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
    .locals 9
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 55
    const/4 v3, 0x0

    .local v3, "trackId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 56
    .local v4, "trackTitle":Ljava/lang/String;
    const/4 v8, 0x0

    .line 57
    .local v8, "isExplicit":Z
    const/4 v5, 0x0

    .line 58
    .local v5, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistList()Ljava/util/ArrayList;

    move-result-object v5

    .line 60
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isExplicit()Z

    move-result v8

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/executor/radio/CreateStationExecutor;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByTrack(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 83
    return-void
.end method

.method protected isSongSeedUsable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "seedUsable"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
