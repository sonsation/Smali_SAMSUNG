.class public final Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
.super Ljava/lang/Object;
.source "LyricsController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;,
        Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$AlbumViewGestureDetector;,
        Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;,
        Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricViewState;,
        Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final KEEP_LYRIC_VIEW:Z = true

.field private static final MAJOR_MOVE:I = 0x96

.field private static final SAVED_STATE_LYRIC_STATE:Ljava/lang/String; = "saved_state_lyric_state"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHasLyrics:Z

.field private mIsOnStart:Z

.field private mIsPlaying:Z

.field private final mLoadingProgress:Landroid/widget/ProgressBar;

.field private final mLyricDownOut:Landroid/view/animation/Animation;

.field private final mLyricUpIn:Landroid/view/animation/Animation;

.field private final mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

.field private mLyricViewState:I

.field private final mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

.field private mLyricsLastModified:J

.field private final mLyricsLoaded:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;

.field private mLyricsLogger:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mParent:Landroid/view/View;

.field private mPlaySpeed:F

.field private mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "lyricsView"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .param p3, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    .line 75
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricViewState:I

    .line 83
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mPlaySpeed:F

    .line 103
    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsLoaded:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mParent:Landroid/view/View;

    .line 129
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$2;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$3;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setAnchorOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    const v2, 0x7f1200fc

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 144
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$AlbumViewGestureDetector;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$AlbumViewGestureDetector;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$1;)V

    invoke-direct {v1, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 145
    const v1, 0x7f050013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricDownOut:Landroid/view/animation/Animation;

    .line 146
    const v1, 0x7f050014

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricUpIn:Landroid/view/animation/Animation;

    .line 148
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLoadingProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    .prologue
    .line 42
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mPlaySpeed:F

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mHasLyrics:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->onLyricLoadFinished(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsLogger:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->onLyricViewScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private checkNeedToReloadLyrics(Ljava/lang/String;)Z
    .locals 6
    .param p1, "lyricsPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 472
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    :cond_0
    :goto_0
    return v1

    .line 476
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsLastModified:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initLoggingInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V
    .locals 3
    .param p1, "lyricsView"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .prologue
    .line 153
    const-class v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    .line 154
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findItemViewBinder(Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    .line 155
    .local v1, "textSizeBinder":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;
    if-eqz v1, :cond_0

    .line 156
    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$4;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->setOnTextMagnificationChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    .line 169
    :cond_0
    const-class v2, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;

    .line 170
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findItemViewBinder(Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;

    .line 171
    .local v0, "jumpFocusViewBinder":Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;
    if-eqz v0, :cond_1

    .line 172
    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$5;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)V

    .line 173
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->setOnLyricsJumpedListener(Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;)V

    .line 182
    :cond_1
    return-void
.end method

.method private isLyricViewClosed()Z
    .locals 2

    .prologue
    .line 358
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricViewState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLyricViewHidden()Z
    .locals 2

    .prologue
    .line 362
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricViewState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLyricViewOpened()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 354
    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricViewState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadLyricsInternal()V
    .locals 6

    .prologue
    .line 309
    const-string v0, "UiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loadLyricsInternal()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    iget v1, v1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->cpAttrs:I

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    iget-wide v2, v2, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->audioId:J

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsLoaded:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    iget-object v5, v5, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->user:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getLyrics(IJLcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 317
    return-void
.end method

.method private onLyricLoadFinished(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;)V
    .locals 7
    .param p1, "lyricsData"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    .prologue
    const/4 v6, 0x0

    .line 320
    iget-object v1, p1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "lyrics":Ljava/lang/String;
    const-string v1, "UiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onLyricLoadFinished() - lyricsData.audioId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->audioId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lyric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v1, p1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    const-string v2, "extra_title"

    iget-object v3, p1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->title:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    const-string v2, "extra_artist"

    iget-object v3, p1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->artist:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v1, p1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->destroy()V

    .line 331
    iput-object v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    .line 333
    :cond_0
    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    iget-object v1, p1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    .line 338
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    iget-object v2, p1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    .line 340
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 341
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->isLyricViewOpened()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setLyricViewVisibility(ZZ)V

    .line 345
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->startUpdateSyncInternal()Z

    .line 346
    return-void

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->destroy()V

    .line 336
    iput-object v6, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    goto :goto_0

    .line 343
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setVisibility(I)V

    goto :goto_1
.end method

.method private onLyricViewScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 264
    .local v0, "distX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 266
    .local v1, "distY":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    const/high16 v2, 0x43160000    # 150.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->isShowingLyricView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setVisibility(I)V

    .line 277
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 281
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mParent:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 282
    const/4 v2, 0x1

    .line 284
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private recordLyricsWhenModified(Ljava/lang/String;)V
    .locals 4
    .param p1, "lyricsPath"    # Ljava/lang/String;

    .prologue
    .line 459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    :goto_0
    return-void

    .line 463
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 465
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsLastModified:J

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsLastModified:J

    goto :goto_0
.end method

.method private setIsPlaying(Z)V
    .locals 1
    .param p1, "isPlaying"    # Z

    .prologue
    .line 501
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mIsPlaying:Z

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setRestorePositionEnabled(Z)V

    .line 503
    return-void
.end method

.method private setLyricViewState(I)V
    .locals 0
    .param p1, "lyricViewState"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricViewState:I

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->startUpdateSyncInternal()Z

    .line 351
    return-void
.end method

.method private setLyricViewVisibility(ZZ)V
    .locals 3
    .param p1, "visibility"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 289
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setLyricViewVisibility() - mLyricView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    if-nez v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->isShowingLyricView()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 298
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mHasLyrics:Z

    if-eqz v0, :cond_0

    .line 301
    :cond_2
    if-eqz p2, :cond_3

    .line 302
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricUpIn:Landroid/view/animation/Animation;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 304
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setVisibility(I)V

    goto :goto_0

    .line 302
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricDownOut:Landroid/view/animation/Animation;

    goto :goto_1

    .line 304
    :cond_5
    const/16 v0, 0x8

    goto :goto_2
.end method

.method private startUpdateSyncInternal()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 506
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    if-nez v1, :cond_0

    .line 525
    :goto_0
    return v0

    .line 510
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mIsOnStart:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->isShowingLyricView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->stop()V

    .line 512
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->start()V

    .line 514
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startUpdateSyncInternal() - true, update repeat"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->invalidate()V

    .line 517
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startUpdateSyncInternal() - true, update once"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 521
    :cond_2
    sget-object v1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startUpdateSyncInternal() - false, lyric-view showing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 522
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->isShowingLyricView()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsOnStart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mIsOnStart:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public addOnLyricViewVisibilityChangeListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->addOnVisibilityChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V

    .line 367
    return-void
.end method

.method public changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "o"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-ne v0, p1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 258
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    goto :goto_0
.end method

.method public closeView(Z)V
    .locals 2
    .param p1, "animation"    # Z

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->isLyricViewOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsLogger:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsLogger:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;->onLoggingLyricsClosed()V

    .line 245
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    const-string v1, "closeView() - View is closed!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setLyricViewVisibility(ZZ)V

    .line 249
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setLyricViewState(I)V

    .line 250
    return-void
.end method

.method public hasLyrics()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mHasLyrics:Z

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->isLyricViewOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setLyricViewVisibility(ZZ)V

    .line 208
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setLyricViewState(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public isShowingLyricView()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 380
    :goto_0
    return-void

    .line 379
    :cond_0
    const-string/jumbo v0, "saved_state_lyric_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setLyricViewState(I)V

    goto :goto_0
.end method

.method public onDestroyCalled()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->destroy()V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    .line 418
    :cond_0
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 496
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onExtraChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 5
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    const/4 v4, 0x0

    .line 422
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMetaChanged()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iput-boolean v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mHasLyrics:Z

    .line 427
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    iget-wide v0, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->audioId:J

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->checkNeedToReloadLyrics(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reload lyrics : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    iget-object v2, v2, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    iget-wide v2, v1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->audioId:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->remove(J)V

    .line 444
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->title:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->artist:Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    const-string v1, "android.media.metadata.ALBUM"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->album:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    const-string v1, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->listPosition:I

    .line 448
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    const-string v1, "com.samsung.android.app.music.metadata.PLAYING_URI"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->filePath:Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    const-string v1, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->cpAttrs:I

    .line 450
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->audioId:J

    .line 451
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    invoke-static {p1}, Lcom/samsung/android/app/music/common/lyrics/LyricsExtra;->convertToExtra(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->user:Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsData:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$LyricsData;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->recordLyricsWhenModified(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->loadLyricsInternal()V

    .line 455
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->startUpdateSyncInternal()Z

    .line 456
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLoadingProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 438
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onPauseCalled()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 482
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", update synced lyric if need"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlaySpeed()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mPlaySpeed:F

    .line 484
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setIsPlaying(Z)V

    .line 485
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->startUpdateSyncInternal()Z

    .line 486
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
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
    .line 492
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 2

    .prologue
    .line 390
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResumeCalled()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 409
    const-string/jumbo v0, "saved_state_lyric_state"

    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricViewState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    return-void
.end method

.method public onStartCalled()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mIsOnStart:Z

    .line 385
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->startUpdateSyncInternal()Z

    .line 386
    return-void
.end method

.method public onStopCalled()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mIsOnStart:Z

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mSyncedLyricUpdater:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->stop()V

    .line 403
    :cond_0
    return-void
.end method

.method public openView(Z)V
    .locals 2
    .param p1, "animation"    # Z

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->isLyricViewClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsLogger:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsLogger:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;->onLoggingLyricsOpened()V

    .line 229
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openView() - View is opened!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mHasLyrics:Z

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setLyricViewVisibility(ZZ)V

    .line 233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setLyricViewState(I)V

    .line 234
    return-void
.end method

.method public openViewIfHasLyrics(Z)V
    .locals 2
    .param p1, "animation"    # Z

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mHasLyrics:Z

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t be opened only if has lyrics!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->openView(Z)V

    goto :goto_0
.end method

.method public removeOnLyricViewVisibilityChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->removeOnVisibilityChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V

    .line 372
    return-void
.end method

.method public setLyricsLogger(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;)V
    .locals 1
    .param p1, "logger"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsLogger:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricsLogger:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->mLyricView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->initLoggingInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V

    .line 189
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->isLyricViewHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setLyricViewVisibility(ZZ)V

    .line 201
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->setLyricViewState(I)V

    .line 203
    :cond_0
    return-void
.end method
