.class public final Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;
.super Ljava/lang/Object;
.source "MusicLoggingUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;,
        Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;,
        Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final SUB_TAG:Ljava/lang/String; = "LogMusic: "

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"


# instance fields
.field private mActiveQueueType:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private mCurrentState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field private mIsSmartVolumeOn:Z

.field private mLoggedRepeat:I

.field private mLoggedShuffle:I

.field private final mTime:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

.field private final mTrackEndLoggingEnabled:Z

.field private mWasLoggingChecked:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;-><init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mTime:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    .line 60
    iput v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mLoggedRepeat:I

    .line 62
    iput v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mLoggedShuffle:I

    .line 64
    iput-boolean v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mWasLoggingChecked:Z

    .line 70
    iput-boolean v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mIsSmartVolumeOn:Z

    .line 72
    iput v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mActiveQueueType:I

    .line 75
    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->access$100(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->access$200(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mTrackEndLoggingEnabled:Z

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;-><init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;)V

    return-void
.end method

.method private loggingLastMetaInfo()V
    .locals 11

    .prologue
    .line 164
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mCurrentState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    if-nez v3, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const-string v10, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    invoke-virtual {v3, v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 168
    .local v6, "soundQualityData":J
    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->isUhq(J)Z

    move-result v2

    .line 169
    .local v2, "isUhq":Z
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mCurrentState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v0

    .line 171
    .local v0, "duration":J
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mTime:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->getTimeDuration()J

    move-result-wide v4

    .line 172
    .local v4, "passedTime":J
    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    move-wide v8, v0

    .line 173
    .local v8, "time":J
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v2, v8, v9}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->loggingPlayedInfo(Landroid/content/Context;ZJ)V

    goto :goto_0

    .end local v8    # "time":J
    :cond_2
    move-wide v8, v4

    .line 172
    goto :goto_1
.end method

.method private loggingPlayedInfo(Landroid/content/Context;ZJ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isUhqa"    # Z
    .param p3, "position"    # J

    .prologue
    .line 214
    if-eqz p2, :cond_0

    const-string v0, "UHQA"

    .line 217
    .local v0, "extra":Ljava/lang/String;
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "value":Ljava/lang/String;
    const-string v2, "PLUI"

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void

    .line 214
    .end local v0    # "extra":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const-string v0, "NONE_UHQA"

    goto :goto_0
.end method

.method private loggingRepeat(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "repeat"    # I

    .prologue
    .line 192
    packed-switch p2, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 194
    :pswitch_0
    const-string v0, "MPRB"

    const-string v1, "Repeat Off"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :pswitch_1
    const-string v0, "MPRB"

    const-string v1, "Repeat All"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_2
    const-string v0, "MPRB"

    const-string v1, "Repeat 1"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private loggingShuffle(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shuffle"    # I

    .prologue
    .line 177
    packed-switch p2, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 179
    :pswitch_0
    const-string v0, "MPSB"

    const-string v1, "Off"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_1
    const-string v0, "MPSB"

    const-string v1, "On"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 122
    const-string v4, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    if-nez p2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v4, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 127
    .local v3, "values":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 130
    const-string v4, "extra.repeat_state"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, "repeat":I
    iget v4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mLoggedRepeat:I

    if-eq v1, v4, :cond_2

    .line 132
    iget-object v4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->loggingRepeat(Landroid/content/Context;I)V

    .line 133
    iput v1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mLoggedRepeat:I

    .line 135
    :cond_2
    const-string v4, "extra.shuffle_state"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 136
    .local v2, "shuffle":I
    iget v4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mLoggedShuffle:I

    if-eq v2, v4, :cond_0

    .line 137
    iget-object v4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->loggingShuffle(Landroid/content/Context;I)V

    .line 138
    iput v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mLoggedShuffle:I

    goto :goto_0

    .line 140
    .end local v1    # "repeat":I
    .end local v2    # "shuffle":I
    .end local v3    # "values":Landroid/os/Bundle;
    :cond_3
    const-string v4, "com.samsung.android.app.music.core.state.QUEUE_COMPLETED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->loggingLastMetaInfo()V

    goto :goto_0

    .line 142
    :cond_4
    const-string v4, "com.samsung.android.app.music.core.state.SETTING_CHANGED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    const-string/jumbo v4, "smart_volume"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mIsSmartVolumeOn:Z

    goto :goto_0

    .line 144
    :cond_5
    const-string v4, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 145
    const-string v4, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mActiveQueueType:I

    goto :goto_0

    .line 146
    :cond_6
    iget-boolean v4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mTrackEndLoggingEnabled:Z

    if-eqz v4, :cond_0

    const-string v4, "com.samsung.android.app.music.core.state.COMPLETE_PLAYING"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    iget v4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mActiveQueueType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 149
    const-string v0, "9015"

    .line 153
    .local v0, "eventName":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mCurrentState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 154
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v6

    invoke-virtual {v4, v0, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendEventLogWithoutScreen(Ljava/lang/String;J)V

    goto :goto_0

    .line 151
    .end local v0    # "eventName":Ljava/lang/String;
    :cond_7
    const-string v0, "4308"

    .restart local v0    # "eventName":Ljava/lang/String;
    goto :goto_1
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 8
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->loggingLastMetaInfo()V

    .line 82
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mTime:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->resetTime()V

    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 85
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    .line 86
    .local v2, "mm":Landroid/media/MediaMetadata;
    const-string v3, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->convertAudioId(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 97
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v1

    .line 92
    .local v1, "isPrivate":Z
    if-eqz v1, :cond_1

    .line 93
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mContext:Landroid/content/Context;

    const-string v4, "PVON"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mContext:Landroid/content/Context;

    const-string v5, "SVST"

    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mIsSmartVolumeOn:Z

    if-eqz v3, :cond_2

    const-string v3, "On"

    :goto_1
    invoke-static {v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "Off"

    goto :goto_1
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mCurrentState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mTime:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->startTime()V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mTime:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->setTime(J)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mTime:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->stopTime()V

    goto :goto_0
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mWasLoggingChecked:Z

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->mWasLoggingChecked:Z

    .line 118
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->loggingLastMetaInfo()V

    .line 161
    return-void
.end method
