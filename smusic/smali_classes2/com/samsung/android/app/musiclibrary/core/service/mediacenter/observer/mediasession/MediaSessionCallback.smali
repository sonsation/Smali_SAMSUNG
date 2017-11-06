.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaSessionCallback.java"


# static fields
.field public static final ACTION_AVRCP:Ljava/lang/String; = "com.samsung.android.bt.AVRCP"

.field private static final DEBUG:Z = false

.field public static final EXTRA_REPEAT:Ljava/lang/String; = "repeat"

.field public static final EXTRA_SHUFFLE:Ljava/lang/String; = "shuffle"

.field private static final GEAR_DEVICE_NAME:Ljava/lang/String; = "SA_MUSIC_REMOTE_CONTROL"

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Player"

.field private static final REQUIRED_PERMISSIONS:[Ljava/lang/String;

.field private static final SAFE_CANCEL_TIME:I = 0x7d0

.field private static final STOP_FF_REW_TASK:I = 0x0

.field private static final SUB_TAG:Ljava/lang/String; = "MediaSessionCallback: "

.field private static final TAG:Ljava/lang/String; = "SV-Player"


# instance fields
.field private final mCallback:Landroid/os/Handler$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mControlTaskHandler:Landroid/os/Handler;

.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

.field private mHeadsetHookClickHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

.field private mLyricLoader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

.field private mMediaSession:Landroid/media/session/MediaSession;

.field private mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private final mOnLyricListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

.field private mPlayerLoggers:Landroid/util/SparseArray;
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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceFacade"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 81
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 251
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mOnLyricListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    .line 439
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCallback:Landroid/os/Handler$Callback;

    .line 455
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->sendResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doCancelOnlyUpEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "ke"    # Landroid/view/KeyEvent;

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 325
    .local v0, "id":Landroid/view/InputDevice;
    const-string v2, "SA_MUSIC_REMOTE_CONTROL"

    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private ensureClickHandler()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mHeadsetHookClickHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mHeadsetHookClickHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mHeadsetHookClickHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->setMultipleKeyClickListener(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;)V

    .line 129
    :cond_0
    return-void
.end method

.method private getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/logger/EmptyPlayerLogger;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/EmptyPlayerLogger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mEmptyPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    goto :goto_0
.end method

.method private getMatchedLogger(I)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 458
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mPlayerLoggers:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 459
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    .line 465
    :cond_0
    :goto_0
    return-object v0

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mPlayerLoggers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .line 462
    .local v0, "logger":Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    if-nez v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->getEmptyLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    goto :goto_0
.end method

.method private isAcceptRepeatCountKeyCode(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 435
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x59

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onMediaKeyDown(Landroid/content/Intent;)V
    .locals 12
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 329
    const-string v8, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 330
    .local v3, "ke":Landroid/view/KeyEvent;
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->isAcceptRepeatCountKeyCode(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 333
    const-string v8, "SV-Player"

    const-string v9, "onMediaKeyDown key event is repeating, thus ignore it"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v8}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    .line 338
    .local v5, "state":Landroid/media/session/PlaybackState;
    if-nez v5, :cond_3

    const-wide/16 v6, 0x0

    .line 339
    .local v6, "validActions":J
    :goto_1
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 399
    :sswitch_0
    if-eqz v5, :cond_4

    .line 400
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    const/4 v2, 0x1

    .line 401
    .local v2, "isPlaying":Z
    :goto_2
    const-wide/16 v8, 0x204

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    const/4 v1, 0x1

    .line 403
    .local v1, "canPlay":Z
    :goto_3
    const-wide/16 v8, 0x202

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    const/4 v0, 0x1

    .line 405
    .local v0, "canPause":Z
    :goto_4
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x4f

    if-ne v8, v9, :cond_8

    .line 406
    const-string v8, "SMUSIC-SV-Player"

    const-string v9, "MediaSessionCallback: listening multiple click"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->ensureClickHandler()V

    .line 408
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mHeadsetHookClickHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->getClickCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 409
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 410
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onPause()V

    .line 417
    :cond_2
    :goto_5
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mHeadsetHookClickHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->increaseCount()V

    goto :goto_0

    .line 338
    .end local v0    # "canPause":Z
    .end local v1    # "canPlay":Z
    .end local v2    # "isPlaying":Z
    .end local v6    # "validActions":J
    :cond_3
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v6

    goto :goto_1

    .line 341
    .restart local v6    # "validActions":J
    :sswitch_1
    const-wide/16 v8, 0x4

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onPlay()V

    .line 343
    const/16 v8, 0x6c

    invoke-direct {p0, v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->getMatchedLogger(I)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v4

    .line 344
    .local v4, "logger":Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->play()V

    goto :goto_0

    .line 348
    .end local v4    # "logger":Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    :sswitch_2
    const-wide/16 v8, 0x2

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onPause()V

    goto/16 :goto_0

    .line 353
    :sswitch_3
    const-wide/16 v8, 0x20

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onSkipToNext()V

    goto/16 :goto_0

    .line 358
    :sswitch_4
    const-wide/16 v8, 0x10

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onSkipToPrevious()V

    goto/16 :goto_0

    .line 363
    :sswitch_5
    const-wide/16 v8, 0x1

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onStop()V

    goto/16 :goto_0

    .line 368
    :sswitch_6
    const-wide/16 v8, 0x40

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 375
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v8}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->startForward()V

    .line 377
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->doCancelOnlyUpEvent(Landroid/view/KeyEvent;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 380
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    const-wide/16 v10, 0x7d0

    .line 381
    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 386
    :sswitch_7
    const-wide/16 v8, 0x8

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 387
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v8}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->startRewind()V

    .line 389
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->doCancelOnlyUpEvent(Landroid/view/KeyEvent;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 392
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    const-wide/16 v10, 0x7d0

    .line 393
    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 400
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 401
    .restart local v2    # "isPlaying":Z
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 403
    .restart local v1    # "canPlay":Z
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 411
    .restart local v0    # "canPause":Z
    :cond_7
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 412
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onPlay()V

    .line 413
    const/16 v8, 0x6b

    invoke-direct {p0, v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->getMatchedLogger(I)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v4

    .line 414
    .restart local v4    # "logger":Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->play()V

    goto/16 :goto_5

    .line 419
    .end local v4    # "logger":Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    :cond_8
    const-string v8, "SMUSIC-SV-Player"

    const-string v9, "MediaSessionCallback: only play/pause"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onPause()V

    goto/16 :goto_0

    .line 422
    :cond_9
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onPlay()V

    .line 424
    const/16 v8, 0x6c

    invoke-direct {p0, v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->getMatchedLogger(I)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v4

    .line 425
    .restart local v4    # "logger":Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->play()V

    goto/16 :goto_0

    .line 339
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_5
        0x57 -> :sswitch_3
        0x58 -> :sswitch_4
        0x59 -> :sswitch_7
        0x5a -> :sswitch_6
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method private sendResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "audioId"    # Ljava/lang/String;
    .param p2, "lyrics"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMediaSession:Landroid/media/session/MediaSession;

    if-nez v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 267
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "com.samsung.android.servicebox.mediasession.extra.MEDIA_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "com.samsung.android.servicebox.mediasession.extra.LYRIC"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMediaSession:Landroid/media/session/MediaSession;

    const-string v2, "com.samsung.android.servicebox.mediasession.action.RESULT_LYRIC"

    invoke-virtual {v1, v2, v0}, Landroid/media/session/MediaSession;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 214
    const-string v0, "SV-Player"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCustomAction action "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v0, "com.samsung.android.servicebox.mediasession.action.REQUEST_LYRIC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mLyricLoader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

    if-nez v0, :cond_0

    .line 217
    const-string v0, "SMUSIC-SV-Player"

    const-string v4, "ACTION_REQUEST_LYRIC but mLyricLoader is empty"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v0, "com.samsung.android.servicebox.mediasession.extra.MEDIA_ID"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 221
    .local v8, "stringId":Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->convertAudioId(Ljava/lang/String;)J

    move-result-wide v2

    .line 222
    .local v2, "id":J
    const-wide/16 v10, -0x1

    cmp-long v0, v2, v10

    if-nez v0, :cond_1

    .line 223
    const-string v0, "SMUSIC-SV-Player"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_REQUEST_LYRIC but abnormal id"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 228
    .local v7, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    if-eqz v7, :cond_2

    .line 229
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v1, v10

    .line 230
    .local v1, "cpAttrs":I
    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "title":Ljava/lang/String;
    const-string v0, "android.media.metadata.ARTIST"

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "artist":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mLyricLoader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mOnLyricListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;->requestLyric(IJLcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader$OnLyricLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    .end local v1    # "cpAttrs":I
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "artist":Ljava/lang/String;
    :cond_2
    const-string v0, "SMUSIC-SV-Player"

    const-string v4, "ACTION_REQUEST_LYRIC but not exist metadata"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    .end local v2    # "id":J
    .end local v7    # "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v8    # "stringId":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->onCustomEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onFastForward()V
    .locals 2

    .prologue
    .line 174
    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onFastForward()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->forward()V

    .line 176
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 275
    const-string v2, "SV-Player"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaSessionCallback: onMediaButtonEvent() mediaButtonIntent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    .line 282
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 284
    .local v0, "ke":Landroid/view/KeyEvent;
    const-string v2, "SV-Player"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaSessionCallback: onMediaButtonEvent() KeyEvent  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 311
    .end local v0    # "ke":Landroid/view/KeyEvent;
    :cond_0
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 288
    .restart local v0    # "ke":Landroid/view/KeyEvent;
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onMediaKeyDown(Landroid/content/Intent;)V

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    .line 294
    invoke-static {v2, v3, p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->startPermissionActivity(Landroid/content/Context;[Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->pause()V

    .line 164
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onPlay()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->play()V

    .line 135
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 144
    const-string v0, "SMUSIC-SV-Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionCallback: onPlayFromMediaId() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 149
    const-string v0, "SMUSIC-SV-Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionCallback: onPlayFromSearch() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 139
    const-string v0, "SMUSIC-SV-Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionCallback: onPlayFromUri() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public onRewind()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onRewind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->rewind()V

    .line 182
    return-void
.end method

.method public onSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 186
    const-string v0, "SV-Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionCallback: onSeekTo() pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mControlTaskHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->seek(J)J

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v0, "SMUSIC-SV-Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionCallback: onSeekTo() pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignore this, our ff/rew task is working now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSkipToNext()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onSkipToNext()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    .line 200
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onSkipToPrevious()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->prev(Z)Z

    .line 206
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x1

    .line 155
    const-string v0, "SMUSIC-SV-Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSessionCallback: onSkipToQueueItem() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    .line 157
    invoke-interface {v0, p1, p2, v3, v3}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->openQueueId(JIZ)V

    .line 158
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "MediaSessionCallback: onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stop()V

    .line 170
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mLyricLoader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mLyricLoader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;->release()V

    .line 249
    :cond_0
    return-void
.end method

.method public setLyricLoader(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;)V
    .locals 0
    .param p1, "lyricLoader"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mLyricLoader:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;

    .line 94
    return-void
.end method

.method public setMediaSession(Landroid/media/session/MediaSession;)V
    .locals 0
    .param p1, "ms"    # Landroid/media/session/MediaSession;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMediaSession:Landroid/media/session/MediaSession;

    .line 90
    return-void
.end method

.method setMusicMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 243
    return-void
.end method

.method public setPlayerLoggers(Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "playerLoggers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->mPlayerLoggers:Landroid/util/SparseArray;

    .line 98
    return-void
.end method
