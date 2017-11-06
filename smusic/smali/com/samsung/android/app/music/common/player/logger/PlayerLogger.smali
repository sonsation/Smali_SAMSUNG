.class public final Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;
.super Ljava/lang/Object;
.source "PlayerLogger.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    }
.end annotation


# instance fields
.field private final mCloseId:Ljava/lang/String;

.field private final mFavoriteId:Ljava/lang/String;

.field private final mNextId:Ljava/lang/String;

.field private final mPlayId:Ljava/lang/String;

.field private final mPrevId:Ljava/lang/String;

.field private final mQueueId:Ljava/lang/String;

.field private final mRepeatId:Ljava/lang/String;

.field private final mScreenId:Ljava/lang/String;

.field private final mSeekId:Ljava/lang/String;

.field private final mShuffleId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->access$000(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mScreenId:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->access$100(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mNextId:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->access$200(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mPrevId:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->access$300(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mPlayId:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->access$400(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mCloseId:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->access$500(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mSeekId:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->access$600(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mQueueId:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->access$700(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mRepeatId:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->access$800(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mShuffleId:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->access$900(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mFavoriteId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;-><init>(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mCloseId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mScreenId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mCloseId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public favorite(Z)V
    .locals 6
    .param p1, "isFavorite"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mFavoriteId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mScreenId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mFavoriteId:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "1"

    .line 160
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v4

    .line 158
    invoke-static {v1, v2, v0, v4, v5}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public next()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mNextId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mScreenId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mNextId:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mPlayId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mScreenId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mPlayId:Ljava/lang/String;

    const-string v2, "Pause"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public play()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mPlayId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mScreenId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mPlayId:Ljava/lang/String;

    const-string v2, "Play"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public prev()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mPrevId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mScreenId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mPrevId:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public repeat(I)V
    .locals 3
    .param p1, "repeat"    # I

    .prologue
    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mRepeatId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x0

    .line 132
    .local v0, "repeatDetail":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 147
    :goto_1
    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mScreenId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mRepeatId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_0
    const-string v0, "Off"

    .line 136
    goto :goto_1

    .line 138
    :pswitch_1
    const-string v0, "One"

    .line 140
    goto :goto_1

    .line 142
    :pswitch_2
    const-string v0, "All"

    .line 144
    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mSeekId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mScreenId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mSeekId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shuffle(I)V
    .locals 3
    .param p1, "shuffle"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mShuffleId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const/4 v0, 0x0

    .line 111
    .local v0, "shuffleDetail":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 120
    :goto_1
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mScreenId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mShuffleId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_0
    const-string v0, "0"

    .line 114
    goto :goto_1

    .line 116
    :pswitch_1
    const-string v0, "1"

    .line 117
    goto :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toggleQueue(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "openState"    # Ljava/lang/Boolean;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mQueueId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    if-nez p1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mScreenId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mQueueId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mScreenId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;->mQueueId:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    .line 99
    :goto_1
    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "0"

    goto :goto_1
.end method
