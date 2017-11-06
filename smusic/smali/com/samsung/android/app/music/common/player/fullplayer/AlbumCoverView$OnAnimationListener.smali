.class Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;
.super Ljava/lang/Object;
.source "AlbumCoverView.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAnimationListener"
.end annotation


# instance fields
.field private final mAssignCur:Landroid/os/Handler;

.field private final mAssignNext:Landroid/os/Handler;

.field private final mAssignPrev:Landroid/os/Handler;

.field private mDirection:I

.field private mLastBlurViewUpdatePosition:I

.field private mLastPosition:I

.field private final mLastUpdatePosition:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPressPosition:I

.field private mStartPosition:I

.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 850
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mLastBlurViewUpdatePosition:I

    .line 862
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$AssignNextHandler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$AssignNextHandler;-><init>(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mAssignNext:Landroid/os/Handler;

    .line 864
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$AssignPrevHandler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$AssignPrevHandler;-><init>(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mAssignPrev:Landroid/os/Handler;

    .line 866
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$1;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mAssignCur:Landroid/os/Handler;

    .line 1007
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mLastUpdatePosition:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$1;

    .prologue
    .line 850
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mLastUpdatePosition:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;

    .prologue
    .line 850
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mDirection:I

    return v0
.end method

.method private getQueuePosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 998
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 999
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1000
    .local v0, "c":Landroid/database/Cursor;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz v1, :cond_0

    .line 1001
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .end local v0    # "c":Landroid/database/Cursor;
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getQueuePosition(I)I

    move-result p1

    .line 1004
    .end local p1    # "position":I
    :cond_0
    return p1
.end method

.method private isAvailable3DEffect()Z
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1900(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2600(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2700(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadToHandler(ILandroid/os/Handler;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1056
    const v0, 0x7f0d0061

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .line 1057
    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2500(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getAlbArtUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    .line 1058
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V

    .line 1059
    return-void
.end method

.method private process3DAudioEffect(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1010
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2100(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1011
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PositionUpdater"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1012
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1013
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener$2;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;)V

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 1029
    .local v0, "handler":Landroid/os/Handler;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2402(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 1030
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2102(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Landroid/os/Handler;)Landroid/os/Handler;

    .line 1032
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "thread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mLastUpdatePosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1033
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2100(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1034
    return-void
.end method

.method private updateBlurView()V
    .locals 6

    .prologue
    .line 1037
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .line 1038
    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mLastBlurViewUpdatePosition:I

    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    if-ne v2, v3, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mLastBlurViewUpdatePosition:I

    .line 1043
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2500(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getAlbArtUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$702(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1045
    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getCount()I

    move-result v3

    rem-int v0, v2, v3

    .line 1046
    .local v0, "nextPosition":I
    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .line 1047
    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getCount()I

    move-result v3

    rem-int v1, v2, v3

    .line 1048
    .local v1, "prevPosition":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mAssignNext:Landroid/os/Handler;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->loadToHandler(ILandroid/os/Handler;)V

    .line 1049
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mAssignPrev:Landroid/os/Handler;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->loadToHandler(ILandroid/os/Handler;)V

    .line 1050
    const v2, 0x7f0d0061

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .line 1051
    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2500(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getAlbArtUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mAssignCur:Landroid/os/Handler;

    .line 1052
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public onAnimationFinished(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;)V
    .locals 11
    .param p1, "view"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    .prologue
    const/4 v7, 0x0

    .line 948
    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    iget-object v9, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->isTouched()Z

    move-result v10

    invoke-static {v9, v7, v10}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$800(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;ZZ)I

    move-result v9

    .line 949
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->getSelectedItemPosition()I

    move-result v10

    .line 948
    invoke-static {v8, v9, v10}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$900(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;II)V

    .line 951
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->getSelectedItemPosition()I

    move-result v4

    .line 953
    .local v4, "position":I
    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v8}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1600(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)I

    move-result v3

    .line 955
    .local v3, "nowPlayingListShufflePosition":I
    const-string v8, "UiPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " onAnimationFinished: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isResumed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .line 957
    invoke-static {v10}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1700(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 955
    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    if-eq v3, v4, :cond_3

    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v8}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1700(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 959
    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    const/16 v9, 0x66

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;I)V

    .line 960
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->getQueuePosition(I)I

    move-result v5

    .line 961
    .local v5, "queuePosition":I
    sget-boolean v8, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_COVER_FLOW_NEXT_PREV_VI:Z

    if-eqz v8, :cond_2

    .line 962
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->process3DAudioEffect(I)V

    .line 976
    .end local v5    # "queuePosition":I
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v8}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 979
    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v8}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setFraction(F)V

    .line 980
    iget v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    if-eq v8, v4, :cond_0

    .line 981
    iput v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    .line 982
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->updateBlurView()V

    .line 986
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v8}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    move-result-object v0

    .line 987
    .local v0, "adapter":Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;
    if-eqz v0, :cond_5

    .line 988
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getCount()I

    move-result v1

    .line 992
    .local v1, "count":I
    :goto_1
    const/4 v8, 0x1

    if-le v1, v8, :cond_1

    .line 993
    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v8}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1500(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mStartPosition:I

    if-ne v9, v4, :cond_6

    :goto_2
    invoke-virtual {v8, v7}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->show(I)V

    .line 995
    :cond_1
    return-void

    .line 965
    .end local v0    # "adapter":Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;
    .end local v1    # "count":I
    .restart local v5    # "queuePosition":I
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v8}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1800(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v6

    .line 966
    .local v6, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v2

    .line 968
    .local v2, "isPlaying":Z
    iget v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mDirection:I

    invoke-static {v5, v8, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openQueuePosition(IIZ)V

    goto :goto_0

    .line 971
    .end local v2    # "isPlaying":Z
    .end local v5    # "queuePosition":I
    .end local v6    # "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v8}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v8}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1900(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 972
    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v8}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->setEnabled(Z)V

    .line 974
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    const/16 v9, 0x65

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;I)V

    goto :goto_0

    .line 990
    .restart local v0    # "adapter":Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "count":I
    goto :goto_1

    .line 993
    :cond_6
    const/16 v7, 0x64

    goto :goto_2
.end method

.method public onAnimationStarted(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;)V
    .locals 7
    .param p1, "view"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    .prologue
    const/4 v6, 0x1

    .line 887
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->isTouched()Z

    move-result v5

    invoke-static {v4, v6, v5}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$800(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;ZZ)I

    move-result v4

    .line 888
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->getSelectedItemPosition()I

    move-result v5

    .line 887
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$900(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;II)V

    .line 889
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;I)V

    .line 891
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->getSelectedItemPosition()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    .line 892
    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    iput v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mStartPosition:I

    .line 893
    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    iput v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mLastPosition:I

    .line 894
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->updateBlurView()V

    .line 896
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1100(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 897
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->isTouched()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->isAvailable3DEffect()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 898
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    move-result-object v3

    if-nez v3, :cond_2

    .line 899
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getAudioSessionId()I

    move-result v1

    .line 900
    .local v1, "audioSessionId":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 901
    const-string v3, "UiPlayer"

    const-string v4, "SessionId is -1. skip create 3D Audio Effect Object"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    .end local v1    # "audioSessionId":I
    :cond_0
    :goto_0
    return-void

    .line 905
    .restart local v1    # "audioSessionId":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    invoke-direct {v4, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;-><init>(I)V

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1202(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    .line 907
    .end local v1    # "audioSessionId":I
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->setEnabled(Z)V

    .line 908
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1300(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->setItemPosition(II)V

    .line 912
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;

    move-result-object v0

    .line 913
    .local v0, "albumArtAdapter":Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;
    if-eqz v0, :cond_4

    .line 914
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getCount()I

    move-result v2

    .line 918
    .local v2, "count":I
    :goto_1
    if-le v2, v6, :cond_0

    .line 919
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1500(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumCoverTagsUpdater;->hide()V

    goto :goto_0

    .line 916
    .end local v2    # "count":I
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "count":I
    goto :goto_1
.end method

.method public onAnimationUpdate(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;FI)V
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;
    .param p2, "fraction"    # F
    .param p3, "selectedItemPosition"    # I

    .prologue
    const/4 v2, 0x1

    .line 926
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->isTouched()Z

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$800(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;ZZ)I

    move-result v3

    invoke-static {v1, v3, p3}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$900(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;II)V

    .line 927
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->isAvailable3DEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 928
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    move-result-object v3

    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    if-eq p3, v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1, p3, p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->applyPositionEffect(ZIF)V

    .line 932
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    if-eq p3, v1, :cond_2

    .line 933
    iput p3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    .line 934
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->updateBlurView()V

    .line 935
    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mLastPosition:I

    sub-int v0, v1, v3

    .line 936
    .local v0, "gap":I
    if-eq v0, v2, :cond_1

    const/4 v1, -0x1

    if-ge v0, v1, :cond_4

    .line 937
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mDirection:I

    .line 941
    :goto_1
    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mPressPosition:I

    iput v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mLastPosition:I

    .line 943
    .end local v0    # "gap":I
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setFraction(F)V

    .line 944
    return-void

    .line 928
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 939
    .restart local v0    # "gap":I
    :cond_4
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$OnAnimationListener;->mDirection:I

    goto :goto_1
.end method
