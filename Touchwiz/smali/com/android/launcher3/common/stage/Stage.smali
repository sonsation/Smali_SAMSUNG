.class public abstract Lcom/android/launcher3/common/stage/Stage;
.super Ljava/lang/Object;
.source "Stage.java"


# static fields
.field private static final BACKGROUND_ANIMATION_MIN_DURATION:I = 0x46

.field public static final BUILD_AND_SET_LAYER:I = 0x1

.field public static final BUILD_LAYER:I = 0x0

.field public static final STAGE_MODE_APPS:I = 0x2

.field public static final STAGE_MODE_APPSPICKER:I = 0x6

.field public static final STAGE_MODE_FOLDER:I = 0x5

.field public static final STAGE_MODE_HOME:I = 0x1

.field public static final STAGE_MODE_NONE:I = 0x0

.field public static final STAGE_MODE_WIDGETFOLDER:I = 0x4

.field public static final STAGE_MODE_WIDGETS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Stage"


# instance fields
.field private mBackgroundDimAnim:Landroid/animation/Animator;

.field private mBackgroundDimFinalAlpha:F

.field private mCurrentHeightDp:I

.field private mCurrentMobileKeyboard:I

.field private mCurrentOrientation:I

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field private mMode:I

.field private mStateSwitchAnim:Landroid/animation/AnimatorSet;

.field protected mViewInitiated:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lcom/android/launcher3/common/stage/Stage;->mMode:I

    .line 76
    iput-boolean v0, p0, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/Stage;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/launcher3/common/stage/Stage;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/Stage;
    .param p1, "x1"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimFinalAlpha:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/stage/Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/Stage;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;->cleanupSwitchAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/Stage;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/stage/Stage;->transitAnimEnd(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/stage/Stage;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/Stage;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/Stage;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/stage/Stage;->transitAnimStart(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method private cancelStateSwitchAnimation()V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 325
    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    .line 328
    :cond_0
    return-void
.end method

.method private cleanupSwitchAnimation()V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    .line 332
    return-void
.end method

.method private playStateTransitAnim(Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 11
    .param p1, "switchAnim"    # Landroid/animation/Animator;
    .param p2, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 343
    const-string v8, "Stage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playStateTransitAnim : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v8

    if-ne v8, v1, :cond_0

    move v5, v1

    .line 345
    .local v5, "toWorkSpace":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 346
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 347
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 348
    iput-object v4, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    .line 349
    invoke-direct {p0, v1, v5, p2}, Lcom/android/launcher3/common/stage/Stage;->transitAnimPrepare(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 351
    new-instance v1, Lcom/android/launcher3/common/stage/Stage$2;

    invoke-direct {v1, p0, v5, p2}, Lcom/android/launcher3/common/stage/Stage$2;-><init>(Lcom/android/launcher3/common/stage/Stage;ZLcom/android/launcher3/common/stage/StageEntry;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 373
    .local v2, "time":J
    new-instance v0, Lcom/android/launcher3/common/stage/Stage$3;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/stage/Stage$3;-><init>(Lcom/android/launcher3/common/stage/Stage;JLandroid/animation/AnimatorSet;ZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 397
    .local v0, "startAnimRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v7

    .line 398
    .local v7, "postView":Landroid/view/View;
    if-nez v7, :cond_1

    .line 399
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : there is no containerview"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v2    # "time":J
    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v5    # "toWorkSpace":Z
    .end local v7    # "postView":Landroid/view/View;
    :cond_0
    move v5, v6

    .line 344
    goto :goto_0

    .line 401
    .restart local v0    # "startAnimRunnable":Ljava/lang/Runnable;
    .restart local v2    # "time":J
    .restart local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v5    # "toWorkSpace":Z
    .restart local v7    # "postView":Landroid/view/View;
    :cond_1
    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 410
    .end local v0    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v2    # "time":J
    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v7    # "postView":Landroid/view/View;
    :goto_1
    return-void

    .line 403
    :cond_2
    invoke-direct {p0, v6, v5, p2}, Lcom/android/launcher3/common/stage/Stage;->transitAnimPrepare(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 404
    invoke-direct {p0, v6, v5, p2}, Lcom/android/launcher3/common/stage/Stage;->transitAnimStart(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 405
    invoke-direct {p0, v6, v5, p2}, Lcom/android/launcher3/common/stage/Stage;->transitAnimEnd(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 408
    invoke-virtual {p2}, Lcom/android/launcher3/common/stage/StageEntry;->notifyOnCompleteRunnables()V

    goto :goto_1
.end method

.method private transitAnimEnd(ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2
    .param p1, "animated"    # Z
    .param p2, "toWorkspace"    # Z
    .param p3, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    .line 428
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v1, :cond_0

    .line 429
    check-cast v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    .end local v0    # "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 431
    :cond_0
    return-void
.end method

.method private transitAnimPrepare(ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2
    .param p1, "animated"    # Z
    .param p2, "toWorkspace"    # Z
    .param p3, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v1, :cond_0

    .line 415
    check-cast v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    .end local v0    # "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 417
    :cond_0
    return-void
.end method

.method private transitAnimStart(ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2
    .param p1, "animated"    # Z
    .param p2, "toWorkspace"    # Z
    .param p3, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    .line 421
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v1, :cond_0

    .line 422
    check-cast v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    .end local v0    # "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 424
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public finishOnTouchOutSide()Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getBackgroundBlurAmountForState(I)F
.end method

.method protected abstract getBackgroundDimAlphaForState(I)F
.end method

.method protected abstract getBackgroundImageAlphaForState(I)F
.end method

.method public getChildViewAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getContainerView()Landroid/view/View;
.end method

.method public getDragSourceForLongKey()Lcom/android/launcher3/common/drag/DragSource;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getInternalState()I
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/launcher3/common/stage/Stage;->mMode:I

    return v0
.end method

.method protected getStageManager()Lcom/android/launcher3/common/stage/StageManager;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSupportSoftInputParam(Landroid/view/Window;)I
    .locals 2
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 251
    .local v0, "softInputParam":I
    or-int/lit8 v1, v0, 0x10

    return v1
.end method

.method protected initStageView()V
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "initStageView was called duplicately"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    .line 100
    return-void
.end method

.method public initialize(Lcom/android/launcher3/Launcher;I)V
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/Launcher;
    .param p2, "mode"    # I

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 87
    iput p2, p0, Lcom/android/launcher3/common/stage/Stage;->mMode:I

    .line 89
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 90
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentOrientation:I

    .line 91
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentMobileKeyboard:I

    .line 92
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentHeightDp:I

    .line 93
    return-void

    .line 91
    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    goto :goto_0
.end method

.method protected isRestorable()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public final isRunningStateChangeAnimation()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isViewInitiated()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    return v0
.end method

.method protected keepInstance()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 217
    return-void
.end method

.method protected onBackPressed()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeColorForBg(Z)V
    .locals 0
    .param p1, "whiteBg"    # Z

    .prologue
    .line 178
    return-void
.end method

.method public onChangeGrid()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isChecked"    # Z

    .prologue
    .line 181
    return-void
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid onClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 163
    iget v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentMobileKeyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_1

    .line 166
    :cond_0
    iget v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    .line 167
    .local v0, "changedOrientation":Z
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentMobileKeyboard:I

    .line 168
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentOrientation:I

    .line 169
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentHeightDp:I

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/Stage;->onConfigurationChangedIfNeeded(Z)V

    .line 172
    .end local v0    # "changedOrientation":Z
    :cond_1
    return-void

    .line 166
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 0
    .param p1, "changedOrientation"    # Z

    .prologue
    .line 175
    return-void
.end method

.method public onDestroyActivity()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onPauseActivity()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 157
    return-void
.end method

.method public onResumeActivity()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    return-void
.end method

.method protected abstract onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end method

.method protected abstract onStageEnterByTray()Landroid/animation/Animator;
.end method

.method protected abstract onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end method

.method protected abstract onStageExitByTray()Landroid/animation/Animator;
.end method

.method protected onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 133
    return-void
.end method

.method public onStartActivity()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onStartForResult(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 213
    return-void
.end method

.method public onStopActivity()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "isOnTop"    # Z

    .prologue
    .line 160
    return-void
.end method

.method public abstract searchBarHasFocus()Z
.end method

.method public setDataWithOutStageChange(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 434
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/launcher3/common/stage/Stage;->mMode:I

    .line 69
    return-void
.end method

.method public setup()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method protected abstract supportNavigationBarForState(I)Z
.end method

.method public supportStatusBar()Z
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getInternalState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/Stage;->supportStatusBarForState(I)Z

    move-result v0

    return v0
.end method

.method protected abstract supportStatusBarForState(I)Z
.end method

.method protected switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 1
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final switchState(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 5
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;->cancelStateSwitchAnimation()V

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    .line 111
    .local v3, "switchAnim":Landroid/animation/Animator;
    invoke-static {v3}, Lcom/android/launcher3/Utilities;->getAnimationDuration(Landroid/animation/Animator;)J

    move-result-wide v0

    .line 112
    .local v0, "animDuration":J
    const/4 v2, 0x0

    .line 113
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    if-eqz v3, :cond_0

    .line 114
    instance-of v4, v3, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 115
    check-cast v2, Landroid/animation/AnimatorSet;

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v4

    invoke-virtual {p0, v4, v2, v0, v1}, Lcom/android/launcher3/common/stage/Stage;->updateSystemUIForState(ILandroid/animation/AnimatorSet;J)V

    .line 123
    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/common/stage/Stage;->playStateTransitAnim(Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 124
    return-void

    .line 117
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 118
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0
.end method

.method protected updateSoftInputParam(Landroid/view/Window;I)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "param"    # I

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 256
    .local v0, "softInputParam":I
    if-eq v0, p2, :cond_0

    .line 257
    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 259
    :cond_0
    return-void
.end method

.method protected updateSystemUIForState(ILandroid/animation/AnimatorSet;J)V
    .locals 9
    .param p1, "internalState"    # I
    .param p2, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p3, "animDuration"    # J

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 264
    .local v5, "window":Landroid/view/Window;
    if-eqz v5, :cond_1

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->supportStatusBarForState(I)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-static {v5, v6}, Lcom/android/launcher3/Utilities;->hideStatusBar(Landroid/view/Window;Z)V

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->supportNavigationBarForState(I)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-static {v5, v6}, Lcom/android/launcher3/Utilities;->hideNavigationBar(Landroid/view/Window;Z)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->getBackgroundBlurAmountForState(I)F

    move-result v0

    .line 269
    .local v0, "blurAmount":F
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_0

    .line 270
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_5

    const/4 v3, 0x1

    .line 271
    .local v3, "showBlur":Z
    :goto_2
    if-eqz v3, :cond_6

    .end local v0    # "blurAmount":F
    :goto_3
    invoke-static {v3, v5, v0, p3, p4}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;FJ)V

    .line 274
    .end local v3    # "showBlur":Z
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/stage/Stage;->getSupportSoftInputParam(Landroid/view/Window;)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/launcher3/common/stage/Stage;->updateSoftInputParam(Landroid/view/Window;I)V

    .line 277
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    .line 278
    .local v1, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    if-eqz v1, :cond_2

    .line 279
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundAlpha()F

    move-result v4

    .line 280
    .local v4, "startAlpha":F
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->getBackgroundDimAlphaForState(I)F

    move-result v2

    .line 282
    .local v2, "finalAlpha":F
    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    if-eqz v6, :cond_8

    .line 283
    iget v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimFinalAlpha:F

    cmpl-float v6, v6, v2

    if-nez v6, :cond_7

    .line 316
    .end local v1    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .end local v2    # "finalAlpha":F
    .end local v4    # "startAlpha":F
    .end local v5    # "window":Landroid/view/Window;
    :cond_2
    :goto_4
    return-void

    .line 265
    .restart local v5    # "window":Landroid/view/Window;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 266
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 270
    .restart local v0    # "blurAmount":F
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 271
    .restart local v3    # "showBlur":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 286
    .end local v0    # "blurAmount":F
    .end local v3    # "showBlur":Z
    .restart local v1    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    .restart local v2    # "finalAlpha":F
    .restart local v4    # "startAlpha":F
    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    .line 287
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    .line 291
    :cond_8
    cmpl-float v6, v4, v2

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_2

    .line 292
    iput v2, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimFinalAlpha:F

    .line 293
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gtz v6, :cond_9

    .line 294
    const-wide/16 p3, 0x46

    .line 297
    :cond_9
    const-string v6, "backgroundAlpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-static {v1, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    .line 299
    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    invoke-virtual {v6, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 300
    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    new-instance v7, Lcom/android/launcher3/common/stage/Stage$1;

    invoke-direct {v7, p0}, Lcom/android/launcher3/common/stage/Stage$1;-><init>(Lcom/android/launcher3/common/stage/Stage;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 308
    if-eqz p2, :cond_a

    .line 309
    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    invoke-virtual {p2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_4

    .line 311
    :cond_a
    iget-object v6, p0, Lcom/android/launcher3/common/stage/Stage;->mBackgroundDimAnim:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    goto :goto_4
.end method
