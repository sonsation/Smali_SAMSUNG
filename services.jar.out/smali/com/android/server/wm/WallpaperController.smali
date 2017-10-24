.class Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WALLPAPER_DRAW_NORMAL:I = 0x0

.field private static final WALLPAPER_DRAW_PENDING:I = 0x1

.field private static final WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION:J = 0x1f4L

.field private static final WALLPAPER_DRAW_TIMEOUT:I = 0x2

.field private static final WALLPAPER_TIMEOUT:J = 0x96L

.field private static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L


# instance fields
.field private mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

.field private final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field private mLastWallpaperDisplayOffsetX:I

.field private mLastWallpaperDisplayOffsetY:I

.field private mLastWallpaperTimeoutTime:J

.field private mLastWallpaperX:F

.field private mLastWallpaperXStep:F

.field private mLastWallpaperY:F

.field private mLastWallpaperYStep:F

.field private mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field private mWallpaperAnimLayerAdjustment:I

.field private mWallpaperDrawState:I

.field private mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/high16 v3, -0x80000000

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 71
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 74
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 77
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 81
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 82
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 83
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 84
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 85
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 86
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 103
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 112
    new-instance v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 115
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 114
    return-void
.end method

.method private findWallpaperTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .locals 13
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .prologue
    const/4 v9, 0x0

    .line 483
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v10, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 484
    .local v7, "winAnimator":Lcom/android/server/wm/WindowAnimator;
    invoke-virtual {p2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    .line 485
    const/4 v6, 0x0

    .line 486
    .local v6, "w":Lcom/android/server/wm/WindowState;
    const/4 v8, -0x1

    .line 487
    .local v8, "windowDetachedI":I
    const/4 v4, 0x0

    .line 488
    .local v4, "resetTopWallpaper":Z
    const/4 v2, 0x0

    .line 489
    .local v2, "inFreeformSpace":Z
    const/4 v3, 0x0

    .line 490
    .local v3, "replacing":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_f

    .line 491
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 492
    .local v6, "w":Lcom/android/server/wm/WindowState;
    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7dd

    if-ne v10, v11, :cond_2

    .line 493
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_0

    if-eqz v4, :cond_1

    .line 494
    :cond_0
    invoke-virtual {p2, v6, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopWallpaper(Lcom/android/server/wm/WindowState;I)V

    .line 495
    const/4 v4, 0x0

    .line 490
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 499
    :cond_2
    const/4 v4, 0x1

    .line 500
    iget-object v10, v7, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v6, v10, :cond_3

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_3

    .line 503
    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v10, v10, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v10, :cond_3

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v10, v10, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v10, v10, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v10, :cond_3

    .line 504
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 505
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Skipping hidden and not animating token: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 504
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 509
    :cond_3
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Win #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": isOnScreen="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 510
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v12

    .line 509
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 510
    const-string/jumbo v12, " mDrawState="

    .line 509
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 510
    iget-object v12, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 509
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_4
    if-nez v2, :cond_5

    .line 513
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 514
    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v5, :cond_a

    iget v10, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    const/4 v2, 0x1

    .line 517
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_5
    :goto_2
    if-nez v3, :cond_6

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_b

    :cond_6
    const/4 v3, 0x1

    .line 522
    :goto_3
    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x100000

    and-int/2addr v10, v11

    if-nez v10, :cond_c

    .line 523
    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_d

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v10, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    .line 524
    .local v0, "hasWallpaper":Z
    :goto_4
    if-eqz v0, :cond_e

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v10, v6, :cond_7

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 525
    :cond_7
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v10, :cond_8

    sget-object v10, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found wallpaper target: #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_8
    invoke-virtual {p2, v6, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 527
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v6, v10, :cond_9

    iget-boolean v10, v6, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v10, :cond_f

    :cond_9
    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 530
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 531
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Win "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": token animating, looking behind."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 530
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 514
    .end local v0    # "hasWallpaper":Z
    .restart local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 517
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 522
    :cond_c
    const/4 v0, 0x1

    goto :goto_4

    :cond_d
    move v0, v9

    .line 523
    goto :goto_4

    .line 535
    .restart local v0    # "hasWallpaper":Z
    :cond_e
    iget-object v10, v7, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-ne v6, v10, :cond_1

    .line 536
    move v8, v1

    goto/16 :goto_1

    .line 540
    .end local v0    # "hasWallpaper":Z
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    :cond_f
    iget-object v9, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v9, :cond_11

    if-ltz v8, :cond_11

    .line 541
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v9, :cond_10

    sget-object v9, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 542
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Found animating detached wallpaper activity: #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 541
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_10
    invoke-virtual {p2, v6, v8}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 545
    :cond_11
    iget-object v9, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v9, :cond_14

    .line 546
    if-nez v2, :cond_12

    if-eqz v3, :cond_14

    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_14

    .line 550
    :cond_12
    if-eqz v2, :cond_13

    if-eqz v2, :cond_14

    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 551
    :cond_13
    iget-object v9, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    iget v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    invoke-virtual {p2, v9, v10}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 482
    :cond_14
    return-void
.end method

.method private isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_0

    sget-object v3, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wallpaper vis: target "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", obscured="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 144
    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    const-string/jumbo v4, " anim="

    .line 143
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 145
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 143
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    const-string/jumbo v1, " upper="

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const-string/jumbo v1, " lower="

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    if-eqz p1, :cond_4

    .line 150
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    .line 149
    :goto_2
    return v0

    .line 144
    :cond_2
    const-string/jumbo v0, "??"

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 146
    goto :goto_1

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateWallpaperWindowsTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z
    .locals 11
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .prologue
    const/4 v10, 0x0

    .line 567
    const/4 v4, 0x0

    .line 568
    .local v4, "targetChanged":Z
    iget-object v5, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 569
    .local v5, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget v6, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 571
    .local v6, "wallpaperTargetIndex":I
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v7, v5, :cond_b

    .line 572
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v7, v5, :cond_b

    .line 573
    :cond_0
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 574
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "New wallpaper target: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " oldTarget: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 573
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_1
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 577
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 579
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 580
    .local v3, "oldW":Lcom/android/server/wm/WindowState;
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 581
    const/4 v4, 0x1

    .line 585
    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    .line 586
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    .line 587
    .local v1, "oldAnim":Z
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    .line 588
    .local v0, "foundAnim":Z
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 589
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "New animation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " old animation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 588
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_2
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 591
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 592
    .local v2, "oldI":I
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 593
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "New i: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " old i: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 592
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_3
    if-ltz v2, :cond_6

    .line 595
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 596
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Animating wallpapers: old#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "; new#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 597
    const-string/jumbo v9, "="

    .line 596
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 595
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_4
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_7

    .line 601
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 600
    if-eqz v7, :cond_7

    .line 602
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 603
    const-string/jumbo v8, "Old wallpaper still the target."

    .line 602
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_5
    iput-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 605
    move-object v5, v3

    .line 606
    move v6, v2

    .line 640
    .end local v0    # "foundAnim":Z
    .end local v1    # "oldAnim":Z
    .end local v2    # "oldI":I
    .end local v3    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_6
    :goto_0
    invoke-virtual {p2, v5, v6}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 641
    return v4

    .line 610
    .restart local v0    # "foundAnim":Z
    .restart local v1    # "oldAnim":Z
    .restart local v2    # "oldI":I
    .restart local v3    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_7
    if-le v6, v2, :cond_9

    .line 612
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 613
    const-string/jumbo v8, "Found target above old target."

    .line 612
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_8
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 615
    iput-object v3, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 616
    move-object v5, v3

    .line 617
    move v6, v2

    goto :goto_0

    .line 620
    :cond_9
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 621
    const-string/jumbo v8, "Found target below old target."

    .line 620
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_a
    iput-object v3, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 623
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 629
    .end local v0    # "foundAnim":Z
    .end local v1    # "oldAnim":Z
    .end local v2    # "oldI":I
    .end local v3    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_b
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_6

    .line 631
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v7

    if-nez v7, :cond_6

    .line 632
    :cond_c
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_d

    sget-object v7, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "No longer animating wallpaper targets!"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_d
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 634
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 635
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 636
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method addWallpaperToken(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    return-void
.end method

.method adjustWallpaperWindows()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/high16 v9, -0x80000000

    const/4 v8, 0x0

    .line 779
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iput-boolean v7, v6, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 781
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .line 784
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    .line 785
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z

    move-result v1

    .line 786
    .local v1, "targetChanged":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTargetByLayer(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z

    move-result v2

    .line 787
    .local v2, "visible":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v3, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 788
    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget v4, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 790
    .local v4, "wallpaperTargetIndex":I
    if-nez v3, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v6, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_5

    .line 793
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v3, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 794
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget v6, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    add-int/lit8 v4, v6, 0x1

    .line 805
    .end local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :goto_0
    if-eqz v2, :cond_3

    .line 806
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_0

    .line 807
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 808
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 810
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_1

    .line 811
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 812
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 814
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v6, v9, :cond_2

    .line 815
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 817
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v6, v9, :cond_3

    .line 818
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 822
    :cond_3
    invoke-virtual {p0, v5, v3, v4, v2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsPlacement(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;IZ)Z

    move-result v0

    .line 825
    .local v0, "changed":Z
    if-eqz v1, :cond_4

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "New wallpaper: target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 826
    iget-object v8, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 825
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 826
    const-string/jumbo v8, " lower="

    .line 825
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 826
    iget-object v8, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 825
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 826
    const-string/jumbo v8, " upper="

    .line 825
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 827
    iget-object v8, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 825
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_4
    return v0

    .line 798
    .end local v0    # "changed":Z
    .restart local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_5
    if-lez v4, :cond_7

    .line 800
    if-eqz v3, :cond_6

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x96a

    if-ne v6, v7, :cond_6

    .line 802
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    check-cast v3, Lcom/android/server/wm/WindowState;

    .restart local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto/16 :goto_0

    :cond_6
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    check-cast v3, Lcom/android/server/wm/WindowState;

    .restart local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto/16 :goto_0
.end method

.method clearLastWallpaperTimeoutTime()V
    .locals 2

    .prologue
    .line 441
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 440
    return-void
.end method

.method dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V
    .locals 5
    .param p1, "wallpaper"    # Lcom/android/server/wm/WindowState;
    .param p2, "visible"    # Z

    .prologue
    .line 242
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v1, p2, :cond_3

    .line 243
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    .line 242
    if-eqz p2, :cond_3

    .line 244
    :cond_0
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 246
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating vis of wallpaper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    const-string/jumbo v3, ": "

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    const-string/jumbo v3, " from:\n"

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    const-string/jumbo v3, "  "

    const/4 v4, 0x4

    invoke-static {v4, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p2}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_3
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/high16 v1, -0x80000000

    .line 888
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 889
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 890
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLowerWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 891
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUpperWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 893
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 894
    const-string/jumbo v0, " mLastWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 895
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    if-ne v0, v1, :cond_2

    .line 896
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_3

    .line 897
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 898
    const-string/jumbo v0, "mLastWallpaperDisplayOffsetX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 899
    const-string/jumbo v0, " mLastWallpaperDisplayOffsetY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 887
    :cond_3
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 904
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 905
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 906
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Wallpaper tokens:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 908
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 909
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Wallpaper #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 910
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 911
    if-eqz p3, :cond_0

    .line 912
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 913
    const-string/jumbo v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 907
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 915
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 903
    .end local v0    # "i":I
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :cond_1
    return-void
.end method

.method getAnimLayerAdjustment()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    return v0
.end method

.method getLowerWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getUpperWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method hideDeferredWallpapersIfNeeded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 195
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 192
    :cond_0
    return-void
.end method

.method hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .locals 12
    .param p1, "winGoingAway"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v11, 0x0

    .line 200
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_1

    .line 201
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v7, p1, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_1

    .line 202
    :cond_0
    return-void

    .line 204
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 207
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 208
    return-void

    .line 211
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-ne v7, p1, :cond_5

    const/4 v5, 0x1

    .line 212
    .local v5, "wasDeferred":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_9

    .line 213
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 214
    .local v3, "token":Lcom/android/server/wm/WindowToken;
    iget-object v7, v3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "j":I
    :goto_2
    if-ltz v2, :cond_6

    .line 215
    iget-object v7, v3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 216
    .local v4, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 217
    .local v6, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v7, :cond_3

    if-eqz v5, :cond_4

    .line 218
    :cond_3
    const-string/jumbo v7, "hideWallpapers"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v4, v11}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 220
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 221
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_4

    .line 222
    iget v7, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 214
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 211
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "token":Lcom/android/server/wm/WindowToken;
    .end local v4    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v5    # "wasDeferred":Z
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "wasDeferred":Z
    goto :goto_0

    .line 227
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "token":Lcom/android/server/wm/WindowToken;
    :cond_6
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_7

    iget-boolean v7, v3, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v7, :cond_8

    .line 230
    :cond_7
    :goto_3
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 212
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 227
    :cond_8
    sget-object v7, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Hiding wallpaper "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 228
    const-string/jumbo v9, " from "

    .line 227
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 228
    const-string/jumbo v9, " target="

    .line 227
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 228
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 227
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 228
    const-string/jumbo v9, " lower="

    .line 227
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 229
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 227
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 229
    const-string/jumbo v9, "\n"

    .line 227
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 229
    const-string/jumbo v9, "  "

    const/4 v10, 0x5

    invoke-static {v10, v9}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 227
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 199
    .end local v2    # "j":I
    .end local v3    # "token":Lcom/android/server/wm/WindowToken;
    :cond_9
    return-void
.end method

.method isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWallpaperTargetAnimating()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isWallpaperVisible()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method processWallpaperDrawPendingTimeout()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 833
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-ne v0, v2, :cond_2

    .line 834
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 835
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 836
    const-string/jumbo v1, "*** WALLPAPER DRAW TIMEOUT"

    .line 835
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_1
    return v2

    .line 839
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method removeWallpaperToken(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 883
    return-void
.end method

.method sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 13
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_1

    .line 357
    :cond_0
    move/from16 v8, p7

    .line 358
    .local v8, "doWait":Z
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .end local p7    # "sync":Z
    .local v7, "curTokenNdx":I
    :goto_0
    if-ltz v7, :cond_4

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    iget-object v12, v0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 360
    .local v12, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    .local v11, "wallpaperNdx":I
    :goto_1
    if-ltz v11, :cond_3

    .line 361
    invoke-virtual {v12, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 363
    .local v10, "wallpaper":Lcom/android/server/wm/WindowState;
    :try_start_0
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    const/16 p7, 0x0

    .line 360
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 356
    .end local v7    # "curTokenNdx":I
    .end local v8    # "doWait":Z
    .end local v10    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v11    # "wallpaperNdx":I
    .end local v12    # "windows":Lcom/android/server/wm/WindowList;
    .restart local p7    # "sync":Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    .line 377
    .end local p7    # "sync":Z
    :cond_2
    :goto_3
    const/4 v0, 0x0

    return-object v0

    .line 358
    .restart local v7    # "curTokenNdx":I
    .restart local v8    # "doWait":Z
    .restart local v11    # "wallpaperNdx":I
    .restart local v12    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 372
    .end local v11    # "wallpaperNdx":I
    .end local v12    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    if-eqz v8, :cond_2

    goto :goto_3

    .line 367
    .restart local v10    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v11    # "wallpaperNdx":I
    .restart local v12    # "windows":Lcom/android/server/wm/WindowList;
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method setAnimLayerAdjustment(Lcom/android/server/wm/WindowState;I)V
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "adj"    # I

    .prologue
    .line 465
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1

    .line 466
    :cond_0
    return-void

    .line 469
    :cond_1
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_3

    :cond_2
    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Setting wallpaper layer adj to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_3
    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    .line 471
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_7

    .line 472
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    iget-object v3, v4, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 473
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_6

    .line 474
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 475
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p2

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 476
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_5

    :cond_4
    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setWallpaper win "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 477
    const-string/jumbo v6, " anim layer: "

    .line 476
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 477
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 476
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 471
    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 464
    .end local v1    # "j":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_7
    return-void
.end method

.method setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 345
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_1

    .line 346
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 347
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 348
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 344
    :cond_1
    return-void
.end method

.method setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    .prologue
    .line 335
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 337
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 338
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 339
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 340
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 334
    :cond_1
    return-void
.end method

.method updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z
    .locals 23
    .param p1, "wallpaperWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "dw"    # I
    .param p3, "dh"    # I
    .param p4, "sync"    # Z

    .prologue
    .line 256
    const/16 v16, 0x0

    .line 257
    .local v16, "rawChanged":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    move/from16 v17, v0

    .line 258
    .local v17, "wpx":F
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    move/from16 v20, v0

    .line 259
    .local v20, "wpxs":F
    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int v11, v4, p2

    .line 260
    .local v11, "availw":I
    if-lez v11, :cond_12

    int-to-float v4, v11

    mul-float v4, v4, v17

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v15, v4

    .line 261
    .local v15, "offset":I
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    .line 262
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    add-int/2addr v15, v4

    .line 264
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-eq v4, v15, :cond_13

    const/4 v12, 0x1

    .line 265
    .local v12, "changed":Z
    :goto_3
    if-eqz v12, :cond_2

    .line 266
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update wallpaper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " x: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 269
    :cond_2
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v4, v4, v17

    if-nez v4, :cond_3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v4, v4, v20

    if-eqz v4, :cond_4

    .line 270
    :cond_3
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 271
    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 272
    const/16 v16, 0x1

    .line 275
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    move/from16 v21, v0

    .line 276
    .local v21, "wpy":F
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    move/from16 v22, v0

    .line 277
    .local v22, "wpys":F
    :goto_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v10, v4, p3

    .line 278
    .local v10, "availh":I
    if-lez v10, :cond_16

    int-to-float v4, v10

    mul-float v4, v4, v21

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v15, v4

    .line 279
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_5

    .line 280
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    add-int/2addr v15, v4

    .line 282
    :cond_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eq v4, v15, :cond_7

    .line 283
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update wallpaper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_6
    const/4 v12, 0x1

    .line 285
    .local v12, "changed":Z
    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 287
    .end local v12    # "changed":Z
    :cond_7
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v4, v4, v21

    if-nez v4, :cond_8

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v4, v4, v22

    if-eqz v4, :cond_9

    .line 288
    :cond_8
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 289
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 290
    const/16 v16, 0x1

    .line 293
    :cond_9
    if-eqz v16, :cond_f

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_f

    .line 296
    :try_start_0
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Report new wp offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 297
    const-string/jumbo v6, " x="

    .line 296
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 297
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 296
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 298
    const-string/jumbo v6, " y="

    .line 296
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 298
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 296
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_a
    if-eqz p4, :cond_b

    .line 300
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 302
    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 303
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 304
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v9, p4

    .line 302
    invoke-interface/range {v4 .. v9}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 305
    if-eqz p4, :cond_f

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_f

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 308
    .local v18, "start":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v4, v4, v18

    if-gez v4, :cond_e

    .line 311
    :try_start_1
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_c

    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 312
    const-string/jumbo v5, "Waiting for offset complete..."

    .line 311
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 316
    :goto_7
    :try_start_2
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Offset complete!"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_d
    const-wide/16 v4, 0x96

    add-long v4, v4, v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_e

    .line 318
    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 323
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 330
    .end local v18    # "start":J
    :cond_f
    :goto_8
    return v12

    .line 257
    .end local v10    # "availh":I
    .end local v11    # "availw":I
    .end local v15    # "offset":I
    .end local v17    # "wpx":F
    .end local v20    # "wpxs":F
    .end local v21    # "wpy":F
    .end local v22    # "wpys":F
    :cond_10
    const/high16 v17, 0x3f000000    # 0.5f

    .restart local v17    # "wpx":F
    goto/16 :goto_0

    .line 258
    :cond_11
    const/high16 v20, -0x40800000    # -1.0f

    .restart local v20    # "wpxs":F
    goto/16 :goto_1

    .line 260
    .restart local v11    # "availw":I
    :cond_12
    const/4 v15, 0x0

    .restart local v15    # "offset":I
    goto/16 :goto_2

    .line 264
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 275
    .local v12, "changed":Z
    :cond_14
    const/high16 v21, 0x3f000000    # 0.5f

    .restart local v21    # "wpy":F
    goto/16 :goto_4

    .line 276
    :cond_15
    const/high16 v22, -0x40800000    # -1.0f

    .restart local v22    # "wpys":F
    goto/16 :goto_5

    .line 278
    .restart local v10    # "availh":I
    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 326
    .end local v12    # "changed":Z
    :catch_0
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    goto :goto_8

    .line 314
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v18    # "start":J
    :catch_1
    move-exception v14

    .local v14, "e":Ljava/lang/InterruptedException;
    goto :goto_7
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 13
    .param p1, "changingTarget"    # Lcom/android/server/wm/WindowState;
    .param p2, "sync"    # Z

    .prologue
    const/high16 v12, -0x80000000

    const/4 v11, 0x0

    .line 381
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 382
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_0

    .line 383
    return-void

    .line 385
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 386
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 387
    .local v4, "dw":I
    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 389
    .local v1, "dh":I
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 390
    .local v5, "target":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_6

    .line 391
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_8

    .line 392
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 396
    :cond_1
    :goto_0
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_9

    .line 397
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 401
    :cond_2
    :goto_1
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v10, v12, :cond_a

    .line 402
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 406
    :cond_3
    :goto_2
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v10, v12, :cond_b

    .line 407
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 411
    :cond_4
    :goto_3
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_c

    .line 412
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 416
    :cond_5
    :goto_4
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_d

    .line 417
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 423
    :cond_6
    :goto_5
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .end local p2    # "sync":Z
    .local v0, "curTokenNdx":I
    :goto_6
    if-ltz v0, :cond_f

    .line 424
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    iget-object v9, v10, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 425
    .local v9, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .local v7, "wallpaperNdx":I
    :goto_7
    if-ltz v7, :cond_e

    .line 426
    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 427
    .local v6, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v6, v4, v1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 428
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 429
    .local v8, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 432
    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperOffset(Landroid/graphics/Point;)V

    .line 434
    const/4 p2, 0x0

    .line 425
    .end local v8    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    .line 393
    .end local v0    # "curTokenNdx":I
    .end local v6    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v7    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    .restart local p2    # "sync":Z
    :cond_8
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_1

    .line 394
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    goto :goto_0

    .line 398
    :cond_9
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_2

    .line 399
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    goto :goto_1

    .line 403
    :cond_a
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v10, v12, :cond_3

    .line 404
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    goto :goto_2

    .line 408
    :cond_b
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v10, v12, :cond_4

    .line 409
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    goto :goto_3

    .line 413
    :cond_c
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_5

    .line 414
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    goto :goto_4

    .line 418
    :cond_d
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_6

    .line 419
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    goto :goto_5

    .line 423
    .end local p2    # "sync":Z
    .restart local v0    # "curTokenNdx":I
    .restart local v7    # "wallpaperNdx":I
    .restart local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 380
    .end local v7    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_f
    return-void
.end method

.method updateWallpaperVisibility()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 162
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 163
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v10}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    .line 167
    .local v6, "visible":Z
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 168
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 169
    .local v4, "dw":I
    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 171
    .local v1, "dh":I
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .local v0, "curTokenNdx":I
    :goto_0
    if-ltz v0, :cond_5

    .line 172
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 173
    .local v5, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v10, v6, :cond_1

    .line 174
    if-eqz v6, :cond_3

    move v10, v11

    :goto_1
    iput-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 177
    iput-boolean v12, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 180
    :cond_1
    iget-object v9, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 181
    .local v9, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .local v8, "wallpaperNdx":I
    :goto_2
    if-ltz v8, :cond_4

    .line 182
    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 183
    .local v7, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_2

    .line 184
    invoke-virtual {p0, v7, v4, v1, v11}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 187
    :cond_2
    invoke-virtual {p0, v7, v6}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 181
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .end local v7    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v8    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    move v10, v12

    .line 174
    goto :goto_1

    .line 171
    .restart local v8    # "wallpaperNdx":I
    .restart local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 161
    .end local v5    # "token":Lcom/android/server/wm/WindowToken;
    .end local v8    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_5
    return-void
.end method

.method updateWallpaperWindowsPlacement(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;IZ)Z
    .locals 18
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p3, "wallpaperTargetIndex"    # I
    .param p4, "visible"    # Z

    .prologue
    .line 698
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 699
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    iget v6, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 700
    .local v6, "dw":I
    iget v4, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 704
    .local v4, "dh":I
    const/4 v2, 0x0

    .line 705
    .local v2, "changed":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v3, v15, -0x1

    .end local p2    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .local v3, "curTokenNdx":I
    :goto_0
    if-ltz v3, :cond_11

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    .line 707
    .local v10, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v15, v10, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v0, p4

    if-ne v15, v0, :cond_1

    .line 708
    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v15, :cond_0

    sget-object v16, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 709
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Wallpaper token "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, " hidden="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz p4, :cond_5

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 708
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_0
    if-eqz p4, :cond_6

    const/4 v15, 0x0

    :goto_2
    iput-boolean v15, v10, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 712
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 715
    :cond_1
    iget-object v11, v10, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 716
    .local v11, "tokenWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v11}, Lcom/android/server/wm/WindowList;->size()I

    move-result v15

    add-int/lit8 v14, v15, -0x1

    .local v14, "wallpaperNdx":I
    :goto_3
    if-ltz v14, :cond_10

    .line 717
    invoke-virtual {v11, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    .line 719
    .local v13, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_2

    .line 720
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6, v4, v15}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 724
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v13, v1}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 726
    iget-object v15, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 727
    iget v0, v13, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    move/from16 v17, v0

    add-int v16, v16, v17

    .line 726
    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 728
    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-nez v15, :cond_3

    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v15, :cond_4

    :cond_3
    sget-object v15, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "adjustWallpaper win "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 729
    const-string/jumbo v17, " anim layer: "

    .line 728
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 729
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v17, v0

    .line 728
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_4
    move-object/from16 v0, p2

    if-ne v13, v0, :cond_8

    .line 733
    add-int/lit8 p3, p3, -0x1

    .line 734
    if-lez p3, :cond_7

    .line 735
    add-int/lit8 v15, p3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowState;

    .line 716
    :goto_4
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    .line 709
    .end local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .end local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v14    # "wallpaperNdx":I
    :cond_5
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 710
    :cond_6
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 735
    .restart local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .restart local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v14    # "wallpaperNdx":I
    :cond_7
    const/16 p2, 0x0

    .local p2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto :goto_4

    .line 741
    .end local p2    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 742
    .local v8, "oldIndex":I
    if-ltz v8, :cond_a

    .line 743
    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MOVEMENT:Z

    if-eqz v15, :cond_9

    sget-object v15, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 744
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Wallpaper removing at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 743
    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 746
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 747
    move/from16 v0, p3

    if-ge v8, v0, :cond_a

    .line 748
    add-int/lit8 p3, p3, -0x1

    .line 754
    :cond_a
    const/4 v7, 0x0

    .line 755
    .local v7, "insertionIndex":I
    if-eqz p4, :cond_c

    if-eqz p2, :cond_c

    .line 756
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 757
    .local v12, "type":I
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 758
    .local v9, "privateFlags":I
    and-int/lit16 v15, v9, 0x400

    if-nez v15, :cond_b

    .line 759
    const/16 v15, 0x7ed

    if-ne v12, v15, :cond_f

    .line 761
    :cond_b
    :goto_5
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 764
    .end local v9    # "privateFlags":I
    .end local v12    # "type":I
    :cond_c
    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-nez v15, :cond_d

    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MOVEMENT:Z

    if-nez v15, :cond_d

    .line 765
    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v15, :cond_e

    if-eq v8, v7, :cond_e

    :cond_d
    sget-object v15, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 766
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Moving wallpaper "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 767
    const-string/jumbo v17, " from "

    .line 766
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 767
    const-string/jumbo v17, " to "

    .line 766
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 765
    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v13}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 771
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 760
    .restart local v9    # "privateFlags":I
    .restart local v12    # "type":I
    :cond_f
    const/16 v15, 0x96a

    if-ne v12, v15, :cond_c

    goto :goto_5

    .line 705
    .end local v7    # "insertionIndex":I
    .end local v8    # "oldIndex":I
    .end local v9    # "privateFlags":I
    .end local v12    # "type":I
    .end local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_10
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 775
    .end local v10    # "token":Lcom/android/server/wm/WindowToken;
    .end local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .end local v14    # "wallpaperNdx":I
    :cond_11
    return v2
.end method

.method updateWallpaperWindowsTargetByLayer(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z
    .locals 9
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .prologue
    const/4 v5, 0x0

    .line 647
    iget-object v2, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 648
    .local v2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget v3, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 649
    .local v3, "wallpaperTargetIndex":I
    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .line 651
    .local v1, "visible":Z
    :goto_0
    if-eqz v1, :cond_7

    .line 654
    invoke-direct {p0, v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    .line 655
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Wallpaper visibility: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_1

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_1

    .line 661
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v5, v5, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 659
    :cond_1
    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    .line 663
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit16 v0, v5, 0x3e8

    .line 670
    .local v0, "maxLayer":I
    :goto_1
    if-lez v3, :cond_3

    .line 671
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 672
    .local v4, "wb":Lcom/android/server/wm/WindowState;
    iget v5, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ge v5, v0, :cond_6

    .line 673
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eq v5, v2, :cond_6

    .line 674
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_2

    .line 675
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eq v5, v6, :cond_6

    .line 676
    :cond_2
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 677
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v5, :cond_5

    .line 690
    .end local v0    # "maxLayer":I
    .end local v4    # "wb":Lcom/android/server/wm/WindowState;
    :cond_3
    :goto_2
    invoke-virtual {p2, v2, v3}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 691
    return v1

    .end local v1    # "visible":Z
    :cond_4
    move v1, v5

    .line 649
    goto :goto_0

    .line 678
    .restart local v0    # "maxLayer":I
    .restart local v1    # "visible":Z
    .restart local v4    # "wb":Lcom/android/server/wm/WindowState;
    :cond_5
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v5, v6, :cond_3

    .line 683
    :cond_6
    move-object v2, v4

    .line 684
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 687
    .end local v0    # "maxLayer":I
    .end local v4    # "wb":Lcom/android/server/wm/WindowState;
    :cond_7
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "No wallpaper target"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 447
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 448
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->notifyAll()V

    .line 444
    :cond_0
    return-void
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 455
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->notifyAll()V

    .line 452
    :cond_0
    return-void
.end method

.method wallpaperTransitionReady()Z
    .locals 12

    .prologue
    const/16 v11, 0x27

    const/4 v10, 0x0

    .line 843
    const/4 v3, 0x1

    .line 844
    .local v3, "transitionReady":Z
    const/4 v5, 0x1

    .line 845
    .local v5, "wallpaperReady":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 846
    .local v0, "curTokenIndex":I
    :goto_0
    if-ltz v0, :cond_6

    .line 845
    if-eqz v5, :cond_6

    .line 847
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 848
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    iget-object v6, v2, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "curWallpaperIndex":I
    :goto_1
    if-ltz v1, :cond_5

    .line 850
    iget-object v6, v2, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 851
    .local v4, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-boolean v6, v4, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 849
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 853
    :cond_1
    const/4 v5, 0x0

    .line 854
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 856
    const/4 v3, 0x0

    .line 858
    :cond_2
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-nez v6, :cond_3

    .line 859
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 860
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 861
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 862
    const-wide/16 v8, 0x1f4

    .line 861
    invoke-virtual {v6, v11, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 864
    :cond_3
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v6, :cond_4

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v6, :cond_5

    :cond_4
    sget-object v6, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 865
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Wallpaper should be visible but has not been drawn yet. mWallpaperDrawState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 866
    iget v8, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 865
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 864
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    .end local v4    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 871
    .end local v1    # "curWallpaperIndex":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_6
    if-eqz v5, :cond_7

    .line 872
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 873
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 876
    :cond_7
    return v3
.end method
