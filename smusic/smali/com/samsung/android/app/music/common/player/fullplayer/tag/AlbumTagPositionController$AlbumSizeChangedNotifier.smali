.class final Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;
.super Ljava/lang/Object;
.source "AlbumTagPositionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlbumSizeChangedNotifier"
.end annotation


# static fields
.field private static final PASSING_DELAY:I = 0xa


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field private mNewAlbumHeight:I

.field private mNewAlbumWidth:I

.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;)V
    .locals 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;)V

    return-void
.end method


# virtual methods
.method declared-synchronized postNotify(II)V
    .locals 4
    .param p1, "albumWith"    # I
    .param p2, "albumHeight"    # I

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;->mNewAlbumWidth:I

    .line 140
    iput p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;->mNewAlbumHeight:I

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->access$100(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$OnAlbumSizeChangedListener;

    .line 147
    .local v0, "listener":Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$OnAlbumSizeChangedListener;
    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;->mNewAlbumWidth:I

    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;->mNewAlbumHeight:I

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$OnAlbumSizeChangedListener;->onAlbumSizeChanged(II)V

    goto :goto_0

    .line 149
    .end local v0    # "listener":Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$OnAlbumSizeChangedListener;
    :cond_0
    return-void
.end method
