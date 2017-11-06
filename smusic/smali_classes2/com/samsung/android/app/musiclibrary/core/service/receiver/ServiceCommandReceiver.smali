.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;
.super Ljava/lang/Object;
.source "ServiceCommandReceiver.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver$Actions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SV"


# instance fields
.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

.field private final mPlayerLoggers:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "playerLoggers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 86
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mPlayerLoggers:Landroid/util/SparseArray;

    .line 87
    return-void
.end method

.method private getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/logger/EmptyPlayerLogger;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/EmptyPlayerLogger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    goto :goto_0
.end method

.method private getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 178
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mPlayerLoggers:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    .line 186
    :cond_0
    :goto_0
    return-object v0

    .line 181
    :cond_1
    const-string/jumbo v2, "tag"

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 182
    .local v1, "tag":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mPlayerLoggers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .line 183
    .local v0, "logger":Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    goto :goto_0
.end method

.method private handleServiceCommand(Landroid/content/Intent;)Z
    .locals 19
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "action":Ljava/lang/String;
    const-string v3, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v14

    .line 99
    .local v14, "logger":Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    const-string v3, "command"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 100
    .local v12, "cmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-object/from16 v0, p1

    invoke-static {v3, v0, v12, v14}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->handleExtraCommand(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 174
    .end local v12    # "cmd":Ljava/lang/String;
    .end local v14    # "logger":Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 101
    :cond_1
    const-string v3, "com.samsung.android.app.music.core.action.TOGGLE_PAUSE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v14

    .line 103
    .restart local v14    # "logger":Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    invoke-interface {v14}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->pause()V

    .line 108
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->togglePlay()V

    goto :goto_0

    .line 106
    :cond_2
    invoke-interface {v14}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->play()V

    goto :goto_2

    .line 109
    .end local v14    # "logger":Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    :cond_3
    const-string v3, "com.samsung.android.app.music.core.action.PREV"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 110
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->hasEmptySong()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    const/4 v3, 0x0

    goto :goto_1

    .line 113
    :cond_4
    const-string v3, "force"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 114
    .local v13, "force":Z
    if-eqz v13, :cond_5

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->setSupposeToBePlaying(Z)V

    .line 117
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v3

    invoke-interface {v3, v13}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->prev(Z)Z

    .line 118
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->prev()V

    goto :goto_0

    .line 119
    .end local v13    # "force":Z
    :cond_6
    const-string v3, "com.samsung.android.app.music.core.action.NEXT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->hasEmptySong()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 121
    const/4 v3, 0x0

    goto :goto_1

    .line 123
    :cond_7
    const-string v3, "force"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 124
    .restart local v13    # "force":Z
    if-eqz v13, :cond_8

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->setSupposeToBePlaying(Z)V

    .line 127
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    .line 128
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->next()V

    goto/16 :goto_0

    .line 129
    .end local v13    # "force":Z
    :cond_9
    const-string v3, "com.samsung.android.app.music.core.action.FF_DOWN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->startForward()V

    goto/16 :goto_0

    .line 131
    :cond_a
    const-string v3, "com.samsung.android.app.music.core.action.FF_UP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stopForward()V

    goto/16 :goto_0

    .line 133
    :cond_b
    const-string v3, "com.samsung.android.app.music.core.action.REW_DOWN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->startRewind()V

    goto/16 :goto_0

    .line 135
    :cond_c
    const-string v3, "com.samsung.android.app.music.core.action.REW_UP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stopRewind()V

    goto/16 :goto_0

    .line 137
    :cond_d
    const-string v3, "com.samsung.android.app.music.core.action.RELOAD_QUEUE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->reloadQueue()V

    goto/16 :goto_0

    .line 139
    :cond_e
    const-string v3, "com.samsung.android.app.music.core.action.TOGGLE_REPEAT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->toggleQueueMode(I)I

    move-result v16

    .line 141
    .local v16, "repeat":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v3

    move/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->repeat(I)V

    goto/16 :goto_0

    .line 142
    .end local v16    # "repeat":I
    :cond_f
    const-string v3, "com.samsung.android.app.music.core.action.TOGGLE_SHUFFLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->toggleQueueMode(I)I

    move-result v17

    .line 144
    .local v17, "shuffle":I
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v3

    move/from16 v0, v17

    invoke-interface {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->shuffle(I)V

    goto/16 :goto_0

    .line 145
    .end local v17    # "shuffle":I
    :cond_10
    const-string v3, "com.samsung.android.app.music.core.action.TOGGLE_UNION_SHUFFLE_REPEAT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->toggleQueueMode(I)I

    goto/16 :goto_0

    .line 147
    :cond_11
    const-string v3, "com.samsung.android.app.music.core.action.CHANG_QUEUE_MODE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 148
    const-string v3, "extra.list_mode_type"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 149
    .local v15, "modeType":I
    const-string v3, "extra.value"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 150
    .local v18, "value":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->setQueueMode(II)V

    goto/16 :goto_0

    .line 151
    .end local v15    # "modeType":I
    .end local v18    # "value":I
    :cond_12
    const-string v3, "com.samsung.android.app.music.core.action.ACTION_TOGGLE_FAVORITE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->hasEmptySong()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 153
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 155
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->isFavorite()Z

    move-result v3

    if-nez v3, :cond_14

    const/4 v3, 0x1

    :goto_3
    invoke-interface {v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->favorite(Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->toggleFavorite()V

    goto/16 :goto_0

    .line 155
    :cond_14
    const/4 v3, 0x0

    goto :goto_3

    .line 157
    :cond_15
    const-string v3, "com.samsung.android.app.music.core.action.UPDATE_WIDGET"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->updateWidget()V

    goto/16 :goto_0

    .line 159
    :cond_16
    const-string v3, "com.samsung.android.app.music.core.action.PLAY_WIDGET_LIST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 160
    const-string v3, "list"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    .line 161
    .local v6, "list":[J
    const-string v3, "listPosition"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 162
    .local v8, "position":I
    const-string v3, "SV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from widget."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    .line 164
    invoke-interface/range {v3 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->openQueue(ILjava/lang/String;[JLjava/util/List;IZJ)V

    goto/16 :goto_0

    .line 166
    .end local v6    # "list":[J
    .end local v8    # "position":I
    :cond_17
    const-string v3, "com.samsung.android.app.music.core.action.HIDE_NOTIFICATION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->hideNotification()V

    goto/16 :goto_0

    .line 168
    :cond_18
    const-string v3, "com.samsung.android.app.music.core.action.EXIT_MUSIC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->exit()V

    .line 170
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->getMatchedLogger(Landroid/content/Intent;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->close()V

    goto/16 :goto_0

    .line 171
    :cond_19
    const-string v3, "com.samsung.android.app.music.core.action.SEND_EDGE_ANIMATION_STATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const-string v4, "com.samsung.android.app.music.core.action.SEND_EDGE_ANIMATION_STATE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->onCustomEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private hasEmptySong()Z
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 197
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ServiceCommandReceiver;->handleServiceCommand(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
