.class final Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;
.super Ljava/lang/Object;
.source "ExtraCommandUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;
    }
.end annotation


# static fields
.field private static final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private static mKeyRunnable:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 45
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->mKeyRunnable:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static executeKeyEvent(I)V
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 126
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->mKeyRunnable:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;->setKeyEvent(I)V

    .line 127
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->mExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->mKeyRunnable:Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method static handleExtraCommand(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->handleExtraCommand(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 52
    return-void
.end method

.method static handleExtraCommand(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
    .locals 8
    .param p0, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "logger"    # Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    const-string/jumbo v4, "togglepause"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    if-eqz p3, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->play()V

    .line 60
    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->togglePlay()V

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    const-string v4, "play"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 62
    if-eqz p3, :cond_3

    .line 63
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->play()V

    .line 65
    :cond_3
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->play()V

    goto :goto_0

    .line 66
    :cond_4
    const-string v4, "pause"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 67
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->pause()V

    goto :goto_0

    .line 68
    :cond_5
    const-string v4, "next"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 69
    const-string v4, "force"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 70
    .local v0, "force":Z
    if-eqz v0, :cond_6

    .line 71
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->setSupposeToBePlaying(Z)V

    .line 73
    :cond_6
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    goto :goto_0

    .line 74
    .end local v0    # "force":Z
    :cond_7
    const-string v4, "previous"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 75
    const-string v4, "force"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 76
    .restart local v0    # "force":Z
    if-eqz v0, :cond_8

    .line 77
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->setSupposeToBePlaying(Z)V

    .line 81
    :cond_8
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->prev(Z)Z

    goto :goto_0

    .line 82
    .end local v0    # "force":Z
    :cond_9
    const-string/jumbo v4, "seek"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 83
    const-string/jumbo v4, "seek_position"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 84
    .local v2, "position":J
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->seek(J)J

    goto :goto_0

    .line 85
    .end local v2    # "position":J
    :cond_a
    const-string v4, "fastforward_down"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 86
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->startForward()V

    goto/16 :goto_0

    .line 87
    :cond_b
    const-string v4, "fastforward_up"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 88
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stopForward()V

    goto/16 :goto_0

    .line 89
    :cond_c
    const-string/jumbo v4, "rewind_down"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 90
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->startRewind()V

    goto/16 :goto_0

    .line 91
    :cond_d
    const-string/jumbo v4, "rewind_up"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 92
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stopRewind()V

    goto/16 :goto_0

    .line 93
    :cond_e
    const-string v4, "fastforward"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 94
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->forward()V

    goto/16 :goto_0

    .line 95
    :cond_f
    const-string/jumbo v4, "rewind"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 96
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->rewind()V

    goto/16 :goto_0

    .line 97
    :cond_10
    const-string/jumbo v4, "stop"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 98
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stop()V

    goto/16 :goto_0

    .line 99
    :cond_11
    const-string v4, "enqueue"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 100
    const-string v4, "list"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 102
    .local v1, "list":[J
    const/4 v4, 0x4

    invoke-interface {p0, v1, v4, v5, v5}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->addQueue([JIZI)V

    goto/16 :goto_0

    .line 103
    .end local v1    # "list":[J
    :cond_12
    const-string v4, "openList"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 104
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->openQueueFromIntent(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 105
    :cond_13
    const-string/jumbo v4, "volume_up"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 106
    const/16 v4, 0x18

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->executeKeyEvent(I)V

    goto/16 :goto_0

    .line 107
    :cond_14
    const-string/jumbo v4, "volume_down"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    const/16 v4, 0x19

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->executeKeyEvent(I)V

    goto/16 :goto_0
.end method

.method private static openQueueFromIntent(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;)V
    .locals 13
    .param p0, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    .line 113
    const-string v0, "listQueryKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "key":Ljava/lang/String;
    const-string v0, "list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v3

    .line 115
    .local v3, "list":[J
    const-string v0, "listPosition"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 116
    .local v4, "position":I
    const-string v0, "dmr_device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "dmrId":Ljava/lang/String;
    const-string v0, "is_maintain_seek_position"

    .line 118
    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 119
    .local v7, "isMaintainSeekPosition":Z
    const-string/jumbo v0, "seek_position"

    const-wide/16 v10, 0x0

    invoke-virtual {p1, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 120
    .local v8, "seekPosition":J
    const-string v0, "playing"

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .local v5, "play":Z
    move-object v1, p0

    .line 121
    invoke-interface/range {v1 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->openQueueFromIntent(Ljava/lang/String;[JIZLjava/lang/String;ZJ)V

    .line 123
    return-void
.end method
