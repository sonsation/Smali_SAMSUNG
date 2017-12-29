.class public Lcom/android/server/wm/ScreenFreezeAnimation;
.super Ljava/lang/Object;
.source "ScreenFreezeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final FREEZE_LAYER:I = 0x1e8481

.field public static final MW_ANIMATION_FREEFORM_RESIZED:I = 0x3

.field public static final MW_ANIMATION_SPLIT_RESIZED:I = 0x1

.field public static final MW_ANIMATION_SPLIT_SWITCHED:I = 0x2

.field public static final MW_ANIMATION_UNSET:I = -0x1

.field private static final STATE_ANIM_READY:I = 0x1

.field private static final STATE_ANIM_RUNNING:I = 0x2

.field private static final STATE_FREEZING_SCREEN:I = 0x0

.field private static final STATE_INITIALIZING:I = -0x1

.field static final TAG:Ljava/lang/String; = "ScreenFreezeAnimation"


# instance fields
.field mAnimRunning:Z

.field mAnimation:Landroid/view/animation/Animation;

.field private mCheckFitToScreen:Z

.field final mContext:Landroid/content/Context;

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mDockBottom:I

.field private mFreezeAnimState:I

.field mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

.field private final mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

.field mNextScreenFreezeAnimation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Landroid/view/SurfaceSession;

.field mStartTime:J

.field mTargetWindowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mTransformation:Landroid/view/animation/Transformation;

.field mWaitForRecents:Z

.field private mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p4, "internal"    # Lcom/android/server/wm/MultiWindowManagerInternal;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    .line 63
    iput v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    .line 75
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    .line 76
    iput-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    .line 77
    iput-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    .line 78
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    .line 81
    iput-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 82
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mCheckFitToScreen:Z

    .line 84
    iput v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mDockBottom:I

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mDisplayRect:Landroid/graphics/Rect;

    .line 95
    iput-object p1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mSession:Landroid/view/SurfaceSession;

    .line 97
    iput-object p3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 98
    iput-object p4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    .line 94
    return-void
.end method

.method private loadScreenFreezeAnimation(I)Z
    .locals 9
    .param p1, "transit"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-nez v0, :cond_0

    .line 384
    return v5

    .line 386
    :cond_0
    if-ne p1, v8, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    .line 388
    const/16 v1, 0xc9

    move-object v4, v3

    move v6, v5

    move-object v7, v3

    .line 387
    invoke-interface/range {v0 .. v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->loadMultiWindowTransitionLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v1, v1, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v2, v2, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 390
    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v3, v3, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v4, v4, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 389
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 392
    return v8

    .line 394
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 395
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    .line 397
    const/16 v1, 0xca

    move-object v4, v3

    move v6, v5

    move-object v7, v3

    .line 396
    invoke-interface/range {v0 .. v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->loadMultiWindowTransitionLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v1, v1, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v2, v2, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 404
    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v3, v3, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v4, v4, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 403
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 406
    return v8

    .line 408
    :cond_4
    return v5
.end method

.method private setTargetWindows(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "wtokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v5, 0x0

    .line 365
    iput-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 366
    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 367
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "wtoken$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 368
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 369
    .local v0, "mainWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 372
    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "win$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 373
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 374
    :cond_2
    sget-boolean v5, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "ScreenFreezeAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTargetAppList.add : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    .end local v0    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "win$iterator":Ljava/util/Iterator;
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_1
    return v5

    :cond_5
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method checkDrawnWindowsFitToScreenForSwapTasks(I)V
    .locals 6
    .param p1, "dockBottom"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 456
    iput-boolean v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mCheckFitToScreen:Z

    .line 457
    iput p1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mDockBottom:I

    .line 459
    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 460
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eq v3, v4, :cond_0

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 461
    :cond_0
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 462
    .local v2, "width":I
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 467
    .local v1, "height":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v5, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 455
    return-void

    .line 464
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_1
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 465
    .restart local v2    # "width":I
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method public clearScreenFreezAnimation()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 434
    sget-boolean v0, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenFreezeAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearScreenFreezAnimation, at : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    iput-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 440
    iput-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->kill()V

    .line 444
    iput-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    .line 446
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    .line 447
    iput-boolean v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    .line 448
    iput-boolean v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mCheckFitToScreen:Z

    .line 449
    iput v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    .line 450
    iput v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->notifyScreenFreezeAnimationFinished()V

    .line 433
    return-void
.end method

.method public clearSnapWindowDeferAnimation()V
    .locals 5

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "win$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 305
    .local v0, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setSnapWindowDeferAnimation(IZ)Z

    goto :goto_0

    .line 302
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    .end local v1    # "win$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method containsTargetWindow(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 3
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 356
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "win$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 357
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v2, p1, :cond_0

    .line 358
    const/4 v2, 0x1

    return v2

    .line 361
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public createFreezeSurface(ZII)V
    .locals 17
    .param p1, "needBGSurface"    # Z
    .param p2, "maxLayer"    # I
    .param p3, "freezeLayer"    # I

    .prologue
    .line 144
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 145
    :cond_0
    const-string v2, "ScreenFreezeAnimation"

    const-string v3, "Layer for Screenshot or ScreenFreeze can\'t be under 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 148
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-nez v2, :cond_5

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v13

    .line 156
    .local v13, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 157
    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v2, :cond_2

    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 158
    :cond_2
    iget v6, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 159
    .local v6, "width":I
    iget v7, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 164
    .local v7, "height":I
    :goto_0
    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v9, v2, 0x4

    .line 178
    .local v9, "rotation":I
    :goto_1
    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ScreenFreezeAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create ScreenFreezeSurface, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_3
    new-instance v2, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mSession:Landroid/view/SurfaceSession;

    .line 180
    iget v8, v13, Landroid/view/DisplayInfo;->layerStack:I

    .line 179
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 180
    const/4 v11, 0x0

    move/from16 v10, p1

    move/from16 v12, p2

    .line 179
    invoke-direct/range {v2 .. v12}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;-><init>(Landroid/view/SurfaceSession;IIIIIIZII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v2, :cond_5

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget v3, v13, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->setLayerStackForSurface(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->setLayerForSurface(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->show()V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 192
    .local v16, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    const/4 v14, 0x0

    .line 194
    .local v14, "duration":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 195
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 196
    :cond_4
    const/16 v14, 0x7d0

    .line 200
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    int-to-long v4, v14

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 143
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v9    # "rotation":I
    .end local v13    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v14    # "duration":I
    .end local v16    # "msg":Landroid/os/Message;
    :cond_5
    return-void

    .line 161
    .restart local v13    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_6
    iget v6, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 162
    .restart local v6    # "width":I
    iget v7, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    .restart local v7    # "height":I
    goto/16 :goto_0

    .line 167
    .end local v6    # "width":I
    .end local v7    # "height":I
    :cond_7
    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 168
    :cond_8
    iget v6, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 169
    .restart local v6    # "width":I
    iget v7, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 174
    .restart local v7    # "height":I
    :goto_4
    iget v9, v13, Landroid/view/DisplayInfo;->rotation:I

    .restart local v9    # "rotation":I
    goto/16 :goto_1

    .line 171
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v9    # "rotation":I
    :cond_9
    iget v6, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 172
    .restart local v6    # "width":I
    iget v7, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    .restart local v7    # "height":I
    goto :goto_4

    .line 182
    .restart local v9    # "rotation":I
    :catch_0
    move-exception v15

    .line 183
    .local v15, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "ScreenFreezeAnimation"

    const-string v3, "Unable to allocate screen freeze surface"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 198
    .end local v15    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v14    # "duration":I
    .restart local v16    # "msg":Landroid/os/Message;
    :cond_a
    const/16 v14, 0x1388

    goto :goto_3
.end method

.method dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v1, -0x1

    .line 661
    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    if-eq v0, v1, :cond_0

    .line 662
    const-string v0, "    mFreezeAnimState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->freezeAnimStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    :cond_0
    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    if-eq v0, v1, :cond_1

    .line 665
    const-string v0, "    mFreezeAnimState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->freezeAnimationToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v0, :cond_2

    .line 668
    const-string v0, "    mFreezeSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 671
    const-string v0, "    mTargetWindowList="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 673
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    if-eqz v0, :cond_4

    .line 674
    const-string v0, "    mWaitForRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 676
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_5

    .line 677
    const-string v0, "    mWaitingAppToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 660
    :cond_5
    return-void
.end method

.method public executeScreenFreezeAniamtion()V
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->setAnimationReady()V

    .line 297
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearSnapWindowDeferAnimation()V

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 294
    :cond_0
    return-void
.end method

.method freezeAnimStateToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    packed-switch v0, :pswitch_data_0

    .line 646
    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 642
    :pswitch_0
    const-string v0, "STATE_INITIALIZING"

    return-object v0

    .line 643
    :pswitch_1
    const-string v0, "STATE_FREEZING_SCREEN"

    return-object v0

    .line 644
    :pswitch_2
    const-string v0, "STATE_ANIM_READY"

    return-object v0

    .line 645
    :pswitch_3
    const-string v0, "STATE_ANIM_RUNNING"

    return-object v0

    .line 641
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method freezeAnimationToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    packed-switch v0, :pswitch_data_0

    .line 656
    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 652
    :pswitch_1
    const-string v0, "MW_ANIMATION_UNSET"

    return-object v0

    .line 653
    :pswitch_2
    const-string v0, "MW_ANIMATION_SPLIT_RESIZED"

    return-object v0

    .line 654
    :pswitch_3
    const-string v0, "MW_ANIMATION_SPLIT_SWITCHED"

    return-object v0

    .line 655
    :pswitch_4
    const-string v0, "MW_ANIMATION_FREEFORM_RESIZED"

    return-object v0

    .line 651
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getScreenFreezeAnimation()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    return v0
.end method

.method goodToGo()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    .line 237
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    .line 235
    return-void
.end method

.method public handleMultiWindowTransitionReady()I
    .locals 8

    .prologue
    .line 313
    const/4 v2, 0x0

    .line 315
    .local v2, "changes":I
    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 316
    .local v0, "NN":I
    const/4 v3, 0x1

    .line 317
    .local v3, "goodToGo":Z
    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-nez v6, :cond_2

    .line 320
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    if-eqz v3, :cond_2

    .line 321
    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v5, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 322
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_0

    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v6, :cond_1

    .line 320
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 322
    :cond_1
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v6, :cond_0

    .line 323
    const/4 v3, 0x0

    goto :goto_1

    .line 328
    .end local v4    # "i":I
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    if-eqz v3, :cond_3

    .line 329
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->getScreenFreezeAnimation()I

    move-result v1

    .line 330
    .local v1, "anim":I
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->goodToGo()V

    .line 331
    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    const/4 v6, -0x1

    if-eq v1, v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 338
    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenFreezeAnimation;->loadScreenFreezeAnimation(I)Z

    .line 344
    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 348
    const/4 v2, 0x3

    .line 350
    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 352
    .end local v1    # "anim":I
    :cond_3
    return v2

    .line 341
    .restart local v1    # "anim":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezAnimation()V

    goto :goto_2
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 412
    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isAnimationReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 218
    iget v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAnimationRunning()Z
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAnimationSet()Z
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFreezingScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 214
    iget v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    .line 229
    :cond_0
    return-void
.end method

.method setAnimationReady()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    .line 221
    return-void
.end method

.method public setScreenFreezeAnimation(Ljava/util/ArrayList;I)V
    .locals 5
    .param p2, "anim"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "wtokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    const/16 v4, 0x7d0

    const/4 v3, 0x1

    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v1, -0x1

    .line 107
    .local v1, "maxLayer":I
    const/4 v0, -0x1

    .line 109
    .local v0, "freezeLayer":I
    packed-switch p2, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    return-void

    .line 111
    :pswitch_1
    iput p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    goto :goto_0

    .line 115
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenFreezeAnimation;->setTargetWindows(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 116
    sget-boolean v2, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ScreenFreezeAnimation"

    const-string v3, "No visible window. Abort ScreenFreezeAnimation."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    return-void

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v4}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v1, v2, -0x1

    .line 122
    move v0, v1

    .line 124
    iput p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    .line 125
    invoke-virtual {p0, v3, v1, v1}, Lcom/android/server/wm/ScreenFreezeAnimation;->createFreezeSurface(ZII)V

    goto :goto_0

    .line 128
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenFreezeAnimation;->setTargetWindows(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 129
    sget-boolean v2, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ScreenFreezeAnimation"

    const-string v3, "No visible window. Abort ScreenFreezeAnimation."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_4
    return-void

    .line 132
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v4}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/lit16 v1, v2, 0x3e8

    .line 135
    add-int/lit8 v0, v1, 0x1

    .line 137
    iput p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    .line 138
    invoke-virtual {p0, v3, v1, v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->createFreezeSurface(ZII)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setWindowDrawn(Lcom/android/server/wm/WindowState;)V
    .locals 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 241
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui/com.android.systemui.recents"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    iput-boolean v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    .line 243
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->executeScreenFreezeAniamtion()V

    .line 245
    return-void

    .line 249
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mCheckFitToScreen:Z

    if-eqz v2, :cond_2

    .line 250
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 252
    :cond_1
    iget v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mDockBottom:I

    if-gez v2, :cond_2

    .line 253
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 254
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_2

    .line 255
    return-void

    .line 263
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 264
    sget-boolean v2, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ScreenFreezeAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWindowDrawn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_3
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "w$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 266
    .local v0, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v2, :cond_4

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v2, :cond_4

    .line 267
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 266
    if-eqz v2, :cond_4

    .line 268
    sget-boolean v2, Lcom/android/server/wm/ScreenFreezeAnimation;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ScreenFreezeAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWindowDrawn, allDrawn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    .end local v0    # "w":Lcom/android/server/wm/WindowState;
    :cond_5
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v2, :cond_6

    .line 272
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 274
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 275
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v2, v3, v5}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setSnapWindowDeferAnimation(IZ)Z

    .line 278
    .end local v1    # "w$iterator":Ljava/util/Iterator;
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetWindowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 279
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    if-eqz v2, :cond_9

    .line 240
    :cond_8
    :goto_1
    return-void

    .line 280
    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitingAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 278
    if-eqz v2, :cond_8

    .line 281
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->executeScreenFreezeAniamtion()V

    goto :goto_1
.end method

.method public stepAnimationLocked(J)Z
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_1

    .line 417
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 420
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    if-nez v1, :cond_2

    .line 421
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    .line 422
    iput-wide p1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mStartTime:J

    .line 423
    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 427
    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 428
    .local v0, "moreAnim":Z
    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->setAnimationTransform(Landroid/view/animation/Transformation;)V

    .line 430
    return v0
.end method

.method public timeout()V
    .locals 3

    .prologue
    .line 286
    const-string v0, "ScreenFreezeAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout, mFreezeSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->executeScreenFreezeAniamtion()V

    .line 285
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezAnimation()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    const-string v0, "ScreenFreezeSurface"

    return-object v0
.end method
