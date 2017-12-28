.class public Lcom/android/launcher3/home/HomeContainer;
.super Landroid/widget/FrameLayout;
.source "HomeContainer.java"


# static fields
.field private static final FACTOR_INTERVAL:I = 0x2

.field private static final FACTOR_VALID_DECIMAL_PLACE:I = 0x2

.field private static final SFINDER_CLS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

.field private static final SFINDER_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder"

.field private static final TAG:Ljava/lang/String; = "HomeContainer"

.field private static final TOUCH_STATE_CONSUME:I = 0x1

.field private static final TOUCH_STATE_REST:I


# instance fields
.field private mActivateTouchSFinder:Z

.field private mController:Lcom/android/launcher3/home/HomeController;

.field private mDownwardFadeOutEnd:I

.field private mDownwardFadeOutStart:I

.field private mExternalPageIndicator:Landroid/view/View;

.field private mFadeOutRange:F

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mHomeAlphaRatio:F

.field private mHomeShrinkFactor:F

.field private mIsInstalledSFinder:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMultiTouch:Z

.field private mOverlayEnd:I

.field private mOverlayStart:I

.field private mPageIndicatorScaleRatio:F

.field private mPageIndicatorShrinkFactor:F

.field private mPinchDelta:I

.field mScreenDivision:Lcom/android/launcher3/util/event/ScreenDivision;

.field private mStartedSFinder:Z

.field private mTouchPointDistance:I

.field private mTouchState:I

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

.field private mUpwardFadeOutEnd:I

.field private mUpwardFadeOutStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/HomeContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    .line 52
    iput v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchPointDistance:I

    .line 53
    iput v2, p0, Lcom/android/launcher3/home/HomeContainer;->mPinchDelta:I

    .line 69
    iput v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    .line 71
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeContainer;->mIsInstalledSFinder:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    .line 73
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeContainer;->mActivateTouchSFinder:Z

    .line 74
    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownY:F

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownX:F

    move-object v1, p1

    .line 95
    check-cast v1, Lcom/android/launcher3/Launcher;

    iput-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f100009

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeShrinkFactor:F

    .line 99
    const v1, 0x7f100006

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeAlphaRatio:F

    .line 100
    const v1, 0x7f100008

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorShrinkFactor:F

    .line 101
    const v1, 0x7f100007

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorScaleRatio:F

    .line 102
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "com.samsung.android.app.galaxyfinder"

    invoke-static {p1, v1}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeContainer;->mIsInstalledSFinder:Z

    .line 105
    :cond_0
    const v1, 0x7f0a01a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    .line 106
    iput v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    .line 107
    return-void
.end method

.method private launchSfinder(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "isSwipeUp"    # Z

    .prologue
    const/4 v7, 0x1

    .line 367
    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;)V

    .line 368
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    .line 372
    if-eqz p2, :cond_0

    .line 373
    const v4, 0x7f050007

    .line 374
    .local v4, "swipeEnterAnimResId":I
    const v5, 0x7f050009

    .line 380
    .local v5, "swipeExitAnimResId":I
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.galaxyfinder"

    const-string v7, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .local v0, "compName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 383
    const-string v6, "launch_mode"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const v6, 0x10008000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 386
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 389
    .local v3, "optBundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 398
    :goto_1
    return-void

    .line 376
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "optBundle":Landroid/os/Bundle;
    .end local v4    # "swipeEnterAnimResId":I
    .end local v5    # "swipeExitAnimResId":I
    :cond_0
    const v4, 0x7f050006

    .line 377
    .restart local v4    # "swipeEnterAnimResId":I
    const v5, 0x7f050008

    .restart local v5    # "swipeExitAnimResId":I
    goto :goto_0

    .line 390
    .restart local v0    # "compName":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "optBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "HomeContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to launch. tag= intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 392
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 393
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "HomeContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launcher does not have the permission to launch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "or use the exported attribute for this activity. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setScreenDivision()V
    .locals 15

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 409
    const/16 v10, 0xa

    .line 410
    .local v10, "numSections":I
    const/4 v6, 0x1

    .line 411
    .local v6, "direction":I
    const/4 v12, 0x0

    .line 412
    .local v12, "typeOfDivision":I
    const/4 v11, 0x1

    .line 414
    .local v11, "reverseCount":Z
    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mScreenDivision:Lcom/android/launcher3/util/event/ScreenDivision;

    if-nez v0, :cond_0

    .line 415
    const v0, 0x7f11000d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeContainer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 416
    .local v8, "hotseat":Landroid/view/View;
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 417
    .local v9, "location":[I
    invoke-virtual {p0, v9}, Lcom/android/launcher3/home/HomeContainer;->getLocationOnScreen([I)V

    .line 418
    new-instance v4, Landroid/graphics/Rect;

    aget v0, v9, v2

    aget v1, v9, v3

    aget v5, v9, v2

    .line 419
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getWidth()I

    move-result v13

    add-int/2addr v5, v13

    aget v13, v9, v3

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v4, v0, v1, v5, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 420
    .local v4, "homeContainer":Landroid/graphics/Rect;
    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 421
    new-instance v7, Landroid/graphics/Rect;

    aget v0, v9, v2

    aget v1, v9, v3

    aget v5, v9, v2

    .line 422
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v5, v13

    aget v13, v9, v3

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v7, v0, v1, v5, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 423
    .local v7, "hot":Landroid/graphics/Rect;
    new-instance v0, Lcom/android/launcher3/util/event/ScreenDivision;

    const/16 v1, 0xa

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/event/ScreenDivision;-><init>(IIILandroid/graphics/Rect;Z)V

    .line 425
    invoke-virtual {v0, v2, v7}, Lcom/android/launcher3/util/event/ScreenDivision;->customPatition(ILandroid/graphics/Rect;)Lcom/android/launcher3/util/event/ScreenDivision;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/ScreenDivision;->builder()Lcom/android/launcher3/util/event/ScreenDivision;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mScreenDivision:Lcom/android/launcher3/util/event/ScreenDivision;

    .line 427
    .end local v4    # "homeContainer":Landroid/graphics/Rect;
    .end local v7    # "hot":Landroid/graphics/Rect;
    .end local v8    # "hotseat":Landroid/view/View;
    .end local v9    # "location":[I
    :cond_0
    return-void
.end method

.method private updateScaleAndAlphaByTranslationY(F)V
    .locals 12
    .param p1, "translationY"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 328
    cmpl-float v6, p1, v11

    if-lez v6, :cond_3

    .line 329
    iget v6, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutStart:I

    int-to-float v6, v6

    cmpg-float v6, p1, v6

    if-gez v6, :cond_1

    .line 330
    const/high16 v2, 0x3f800000    # 1.0f

    .line 347
    .local v2, "factor":F
    :goto_0
    invoke-static {v2, v8, v8}, Lcom/android/launcher3/Utilities;->simplifyDecimalFraction(FII)F

    .line 349
    sub-float v6, v10, v2

    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeAlphaRatio:F

    mul-float/2addr v6, v7

    sub-float v6, v10, v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 350
    .local v0, "alpha":F
    iget v6, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeShrinkFactor:F

    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeShrinkFactor:F

    sub-float v7, v10, v7

    mul-float/2addr v7, v2

    add-float v5, v6, v7

    .line 351
    .local v5, "scale":F
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeContainer;->setAlpha(F)V

    .line 352
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeContainer;->setScaleX(F)V

    .line 353
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeContainer;->setScaleY(F)V

    .line 354
    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 355
    iget v6, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorShrinkFactor:F

    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorShrinkFactor:F

    sub-float v7, v10, v7

    sub-float v8, v10, v2

    iget v9, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorScaleRatio:F

    mul-float/2addr v8, v9

    sub-float v8, v10, v8

    .line 356
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 357
    .local v4, "indicatorScale":F
    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleX(F)V

    .line 358
    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleY(F)V

    .line 360
    .end local v4    # "indicatorScale":F
    :cond_0
    return-void

    .line 331
    .end local v0    # "alpha":F
    .end local v2    # "factor":F
    .end local v5    # "scale":F
    :cond_1
    iget v6, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutEnd:I

    int-to-float v6, v6

    cmpg-float v6, p1, v6

    if-gez v6, :cond_2

    .line 332
    iget v6, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutEnd:I

    int-to-float v6, v6

    sub-float/2addr v6, p1

    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mFadeOutRange:F

    div-float/2addr v6, v7

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .restart local v2    # "factor":F
    goto :goto_0

    .line 334
    .end local v2    # "factor":F
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "factor":F
    goto :goto_0

    .line 337
    .end local v2    # "factor":F
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v3

    .line 338
    .local v3, "height":I
    int-to-float v6, v3

    add-float v1, p1, v6

    .line 339
    .local v1, "bottomOfHome":F
    iget v6, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_4

    .line 340
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "factor":F
    goto :goto_0

    .line 341
    .end local v2    # "factor":F
    :cond_4
    iget v6, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_5

    .line 342
    iget v6, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    int-to-float v6, v6

    sub-float v6, v1, v6

    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mFadeOutRange:F

    div-float/2addr v6, v7

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .restart local v2    # "factor":F
    goto :goto_0

    .line 344
    .end local v2    # "factor":F
    :cond_5
    cmpl-float v6, p1, v11

    if-nez v6, :cond_6

    const/4 v6, 0x1

    :goto_1
    int-to-float v2, v6

    .restart local v2    # "factor":F
    goto/16 :goto_0

    .end local v2    # "factor":F
    :cond_6
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;

    .prologue
    .line 158
    instance-of v0, p1, Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    .line 159
    check-cast p1, Lcom/android/launcher3/home/HomeController;

    .end local p1    # "controller":Lcom/android/launcher3/common/base/controller/ControllerBase;
    iput-object p1, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    .line 161
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 169
    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 170
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 171
    invoke-virtual {v2}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v1

    .line 176
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 177
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 187
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 179
    :pswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    goto :goto_1

    .line 184
    :pswitch_2
    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    goto :goto_1

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method getPinchDelta()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/android/launcher3/home/HomeContainer;->mPinchDelta:I

    return v0
.end method

.method hasStartedSFinder()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    return v0
.end method

.method isMultiTouch()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v6, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    if-ne v6, v5, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    .line 223
    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->canMoveHometray()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v6, :cond_1

    .line 225
    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5, v6, p1}, Lcom/android/launcher3/common/tray/TrayManager;->onInterceptTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z

    move-result v5

    .line 260
    :goto_1
    return v5

    .line 194
    :pswitch_1
    iput-boolean v10, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    goto :goto_0

    .line 198
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v5, :cond_0

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 200
    .local v2, "dy":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v1, v6

    .line 201
    .local v1, "dx":I
    iget v6, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchPointDistance:I

    mul-int v7, v2, v2

    mul-int v8, v1, v1

    add-int/2addr v7, v8

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v7, v8

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/launcher3/home/HomeContainer;->mPinchDelta:I

    goto :goto_0

    .line 208
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    :pswitch_3
    iput-boolean v10, p0, Lcom/android/launcher3/home/HomeContainer;->mActivateTouchSFinder:Z

    .line 209
    iput-boolean v10, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    goto :goto_0

    .line 213
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 215
    .restart local v2    # "dy":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v1, v6

    .line 216
    .restart local v1    # "dx":I
    mul-int v6, v2, v2

    mul-int v7, v1, v1

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchPointDistance:I

    .line 217
    iput-boolean v5, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    goto/16 :goto_0

    .line 226
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 228
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 229
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_1

    .line 260
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_2
    :goto_2
    :pswitch_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_1

    .line 231
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :pswitch_6
    iput-boolean v5, p0, Lcom/android/launcher3/home/HomeContainer;->mActivateTouchSFinder:Z

    .line 232
    iput v3, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownX:F

    .line 233
    iput v4, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownY:F

    .line 234
    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5, v3, v4}, Lcom/android/launcher3/home/HomeController;->setScrollBlockArea(FF)V

    .line 235
    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->setScrollTalkBackEnabled()V

    goto :goto_2

    .line 238
    :pswitch_7
    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->canMoveVertically()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/launcher3/home/HomeContainer;->mActivateTouchSFinder:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    .line 240
    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->isMovingOnBlock()Z

    move-result v6

    if-nez v6, :cond_2

    .line 241
    new-instance v6, Lcom/android/launcher3/util/DvfsUtil;

    iget-object v7, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v6, v7}, Lcom/android/launcher3/util/DvfsUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/android/launcher3/util/DvfsUtil;->boostUpForSupportedModel()V

    .line 242
    iget v6, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownY:F

    sub-float v6, v4, v6

    float-to-int v0, v6

    .line 243
    .local v0, "direction":I
    if-gez v0, :cond_3

    iget-boolean v6, p0, Lcom/android/launcher3/home/HomeContainer;->mIsInstalledSFinder:Z

    if-eqz v6, :cond_3

    .line 244
    const-string v6, "swype_up"

    invoke-direct {p0, v6, v5}, Lcom/android/launcher3/home/HomeContainer;->launchSfinder(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 246
    :cond_3
    if-lez v0, :cond_2

    .line 247
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getNotificationPanelExpansionEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 248
    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->expandNotificationsPanel(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 250
    :cond_4
    iget-boolean v6, p0, Lcom/android/launcher3/home/HomeContainer;->mIsInstalledSFinder:Z

    if-eqz v6, :cond_2

    .line 251
    const-string v6, "swype_down"

    invoke-direct {p0, v6, v10}, Lcom/android/launcher3/home/HomeContainer;->launchSfinder(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 229
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 305
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    .line 307
    iget v0, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    sub-int v1, p5, p3

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 308
    const-string v0, "HomeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height is change !! mUpwardFadeOutStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOverlayStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sub-int v0, p5, p3

    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    .line 311
    sub-int v0, p5, p3

    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    .line 312
    iget v0, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/home/HomeContainer;->mFadeOutRange:F

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeContainer;->setScreenDivision()V

    .line 316
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 113
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    .line 115
    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutStart:I

    .line 116
    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutEnd:I

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    .line 119
    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mFadeOutRange:F

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getHomePageIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "pageIndicator":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iput-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    .line 128
    .end local v0    # "pageIndicator":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->canMoveHometray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/tray/TrayManager;->onTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 269
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method resetStartedSFinder()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    .line 406
    return-void
.end method

.method resetTouchState()V
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    .line 364
    return-void
.end method

.method public setAlpha(F)V
    .locals 5
    .param p1, "alpha"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 148
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 149
    const-string v1, "HomeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlpha : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 152
    const/4 v1, 0x0

    sub-float v2, v4, p1

    iget v3, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorScaleRatio:F

    mul-float/2addr v2, v3

    sub-float v2, v4, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 153
    .local v0, "indicatorAlpha":F
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 155
    .end local v0    # "indicatorAlpha":F
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 8
    .param p1, "translationY"    # F

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 276
    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    .line 277
    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->isRunningStateChangeAnimation()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    if-eqz v5, :cond_2

    .line 282
    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, p1, v7}, Lcom/android/launcher3/common/tray/TrayManager;->onChangeTrayTranslationY(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;FI)V

    .line 286
    :cond_2
    const/4 v0, 0x0

    .line 287
    .local v0, "isMoveAndAnimated":Z
    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v5, :cond_5

    .line 288
    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v1

    .line 289
    .local v1, "range":I
    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/tray/TrayManager;->isMoveAndAnimated()Z

    move-result v0

    .line 293
    :goto_1
    neg-int v4, v1

    .line 294
    .local v4, "visibleTopLimit":I
    move v3, v1

    .line 295
    .local v3, "visibleBottomLimit":I
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_6

    int-to-float v5, v4

    cmpg-float v5, p1, v5

    if-lez v5, :cond_3

    int-to-float v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_6

    :cond_3
    const/16 v2, 0x8

    .line 297
    .local v2, "visible":I
    :goto_2
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_4

    .line 298
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeContainer;->setVisibility(I)V

    .line 300
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeContainer;->updateScaleAndAlphaByTranslationY(F)V

    goto :goto_0

    .line 291
    .end local v1    # "range":I
    .end local v2    # "visible":I
    .end local v3    # "visibleBottomLimit":I
    .end local v4    # "visibleTopLimit":I
    :cond_5
    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v1

    .restart local v1    # "range":I
    goto :goto_1

    .line 295
    .restart local v3    # "visibleBottomLimit":I
    .restart local v4    # "visibleTopLimit":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method

.method setTrayManager(Lcom/android/launcher3/common/tray/TrayManager;)V
    .locals 0
    .param p1, "trayManager"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 165
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 133
    const-string v1, "HomeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisibility : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getHomePageIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "pageIndicator":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    iput-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    .line 139
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .end local v0    # "pageIndicator":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
