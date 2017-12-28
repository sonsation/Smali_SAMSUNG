.class Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;
.super Landroid/os/Handler;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TiltUpdateHandler"
.end annotation


# static fields
.field private static final MSG_TILT_UPDATE:I = 0x1


# instance fields
.field private mTiltRangeX:F

.field private mTiltRangeY:F

.field private mWallpaperRangeX:F

.field private mWallpaperRangeY:F

.field final synthetic this$0:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 162
    iput-object p1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->this$0:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    .line 163
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 157
    iput v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->mWallpaperRangeX:F

    .line 158
    iput v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->mWallpaperRangeY:F

    .line 159
    iput v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->mTiltRangeX:F

    .line 160
    iput v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->mTiltRangeY:F

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;Landroid/os/Looper;Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$1;

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;-><init>(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;FFFFFF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # F

    .prologue
    .line 154
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->update(FFFFFF)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->update(FF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->setWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->shutdown()V

    return-void
.end method

.method private declared-synchronized setWindowToken(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->this$0:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-static {v0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->access$700(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;)Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->access$800(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized update(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;

    iget v3, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->mTiltRangeX:F

    iget v4, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->mTiltRangeY:F

    iget v5, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->mWallpaperRangeX:F

    iget v6, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->mWallpaperRangeY:F

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;-><init>(FFFFFF)V

    .line 184
    .local v0, "info":Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 182
    .end local v0    # "info":Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized update(FFFFFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "tiltRangeX"    # F
    .param p4, "tiltRangeY"    # F
    .param p5, "rangeX"    # F
    .param p6, "rangeY"    # F

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iput p3, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->mTiltRangeX:F

    .line 173
    iput p4, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->mTiltRangeY:F

    .line 174
    iput p5, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->mWallpaperRangeX:F

    .line 175
    iput p6, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->mWallpaperRangeY:F

    .line 177
    new-instance v0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;-><init>(FFFFFF)V

    .line 178
    .local v0, "info":Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 172
    .end local v0    # "info":Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 193
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;

    if-eqz v1, :cond_0

    .line 196
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;

    .line 197
    .local v0, "info":Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;
    iget-object v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->this$0:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-static {v1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->access$700(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;)Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->this$0:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-static {v1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->access$700(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;)Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->access$900(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;)V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
