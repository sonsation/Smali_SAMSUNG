.class Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;
.super Ljava/lang/Thread;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WallpaperThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mNeedUpdate:Z

.field mOffsetX:F

.field mOffsetY:F

.field mStopped:Z

.field mTiltRangeX:F

.field mTiltRangeY:F

.field mTiltX:F

.field mTiltY:F

.field mToken:Landroid/os/IBinder;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperRangeX:F

.field mWallpaperRangeY:F

.field mX:F

.field mY:F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/WallpaperManager;)V
    .locals 4
    .param p1, "ct"    # Landroid/content/Context;
    .param p2, "wm"    # Landroid/app/WallpaperManager;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 231
    const-string v0, "updateWallpaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mToken:Landroid/os/IBinder;

    .line 212
    iput v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mX:F

    .line 213
    iput v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mY:F

    .line 215
    iput v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltX:F

    .line 216
    iput v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltY:F

    .line 217
    iput v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mOffsetX:F

    .line 218
    iput v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mOffsetY:F

    .line 219
    iput v2, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mWallpaperRangeX:F

    .line 220
    iput v2, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mWallpaperRangeY:F

    .line 221
    iput v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltRangeX:F

    .line 222
    iput v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltRangeY:F

    .line 223
    iput-boolean v3, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mNeedUpdate:Z

    .line 225
    iput-boolean v3, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mStopped:Z

    .line 232
    iput-object p1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mContext:Landroid/content/Context;

    .line 233
    iput-object p2, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 234
    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->shutdown()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->setWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;
    .param p1, "x1"    # Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->update(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;)V

    return-void
.end method

.method private computeOffset(FFFFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "start1"    # F
    .param p3, "stop1"    # F
    .param p4, "start2"    # F
    .param p5, "stop2"    # F

    .prologue
    .line 257
    sub-float v0, p5, p4

    sub-float v1, p1, p2

    sub-float v2, p3, p2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p4

    return v0
.end method

.method private setWallpaperOffset()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 279
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v2, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mToken:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mOffsetX:F

    sub-float v3, v5, v3

    iget v4, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mOffsetY:F

    sub-float v4, v5, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 290
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v2, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mToken:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mOffsetY:F

    sub-float v3, v5, v3

    iget v4, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mOffsetX:F

    sub-float v4, v5, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "WallpaperScroller"

    const-string v2, "setWallpaperOffsets:IllegalArgumentException "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized setWindowToken(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 237
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mStopped:Z

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized update(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mX:F

    iput v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mX:F

    .line 243
    iget v0, p1, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mY:F

    iput v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mY:F

    .line 244
    iget v0, p1, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mWallpaperRangeX:F

    iput v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mWallpaperRangeX:F

    .line 245
    iget v0, p1, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mWallpaperRangeY:F

    iput v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mWallpaperRangeY:F

    .line 246
    iget v0, p1, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mTiltRangeX:F

    iput v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltRangeX:F

    .line 247
    iget v0, p1, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;->mTiltRangeY:F

    iput v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltRangeY:F

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateOffset()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3eaa7efa    # 0.333f

    .line 261
    iget v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mX:F

    iget v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltX:F

    sub-float v6, v0, v1

    .line 262
    .local v6, "diffX":F
    iget v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mY:F

    iget v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltY:F

    sub-float v7, v0, v1

    .line 263
    .local v7, "diffY":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_0

    .line 264
    iget v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltX:F

    mul-float v1, v6, v8

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltX:F

    .line 265
    iget v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltX:F

    iget v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltRangeX:F

    neg-float v2, v0

    iget v3, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltRangeX:F

    iget v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mWallpaperRangeX:F

    neg-float v4, v0

    iget v5, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mWallpaperRangeX:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->computeOffset(FFFFF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mOffsetX:F

    .line 267
    iput-boolean v10, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mNeedUpdate:Z

    .line 269
    :cond_0
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_1

    .line 270
    iget v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltY:F

    mul-float v1, v7, v8

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltY:F

    .line 271
    iget v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltY:F

    iget v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltRangeY:F

    neg-float v2, v0

    iget v3, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mTiltRangeY:F

    iget v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mWallpaperRangeY:F

    neg-float v4, v0

    iget v5, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mWallpaperRangeY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->computeOffset(FFFFF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mOffsetY:F

    .line 273
    iput-boolean v10, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mNeedUpdate:Z

    .line 275
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 294
    :goto_0
    monitor-enter p0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->updateOffset()V

    .line 299
    iget-boolean v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mNeedUpdate:Z

    if-eqz v1, :cond_0

    .line 300
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mNeedUpdate:Z

    .line 301
    invoke-direct {p0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->setWallpaperOffset()V

    .line 302
    const-wide/16 v2, 0x14

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 310
    :goto_1
    iget-boolean v1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->mStopped:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 311
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    return-void

    .line 304
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "WallpaperScroller"

    const-string v2, "setWallpaperOffsets:InterruptedException "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 307
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
