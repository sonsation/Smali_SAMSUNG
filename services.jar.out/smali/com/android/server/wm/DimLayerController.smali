.class Lcom/android/server/wm/DimLayerController;
.super Ljava/lang/Object;
.source "DimLayerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimLayerController$DimLayerState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIM_AMOUNT_DEAD_WINDOW:F = 0.5f

.field private static final DEFAULT_DIM_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_LOCAL:Ljava/lang/String; = "DimLayerController"


# instance fields
.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

.field private mState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/wm/DimLayer$DimLayerUser;",
            "Lcom/android/server/wm/DimLayerController$DimLayerState;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    .line 61
    iput-object p1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 60
    return-void
.end method

.method private animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z
    .locals 14
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 267
    iget-object v10, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v10, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 268
    .local v8, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "animateDimLayers, dimLayerUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 269
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v12

    .line 268
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 270
    const-string/jumbo v12, " state.animator="

    .line 268
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 270
    iget-object v12, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 268
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 271
    const-string/jumbo v12, " state.continueDimming="

    .line 268
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 271
    iget-boolean v12, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 268
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v10, :cond_4

    .line 275
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v10}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v5

    .line 276
    .local v5, "dimLayer":I
    const/4 v4, 0x0

    .line 295
    .local v4, "dimAmount":F
    :goto_0
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v10}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    move-result v9

    .line 296
    .local v9, "targetAlpha":F
    cmpl-float v10, v9, v4

    if-eqz v10, :cond_c

    .line 297
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v10, :cond_8

    .line 298
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v12, v13}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 314
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 315
    .local v0, "animating":Z
    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v10, :cond_2

    .line 316
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v10, :cond_2

    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 322
    .end local v0    # "animating":Z
    :cond_2
    :goto_2
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v10}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 323
    iget-object v10, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v10

    if-nez v10, :cond_e

    .line 325
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v10}, Lcom/android/server/wm/DimLayer;->show()V

    .line 332
    :cond_3
    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v10, :cond_f

    .line 333
    return v0

    .line 278
    .end local v4    # "dimAmount":F
    .end local v5    # "dimLayer":I
    .end local v9    # "targetAlpha":F
    :cond_4
    iget-boolean v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimAbove:Z

    if-eqz v10, :cond_5

    .line 279
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v5, v10, 0x1

    .line 280
    .restart local v5    # "dimLayer":I
    const/high16 v4, 0x3f000000    # 0.5f

    .restart local v4    # "dimAmount":F
    goto :goto_0

    .line 282
    .end local v4    # "dimAmount":F
    .end local v5    # "dimLayer":I
    :cond_5
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 285
    .local v1, "baseLayer":I
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cw$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 286
    .local v2, "cw":Lcom/android/server/wm/WindowState;
    iget v10, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v10, :cond_6

    iget v10, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v10, v1, :cond_6

    .line 287
    iget v1, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_3

    .line 291
    .end local v2    # "cw":Lcom/android/server/wm/WindowState;
    :cond_7
    add-int/lit8 v5, v1, -0x1

    .line 292
    .restart local v5    # "dimLayer":I
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .restart local v4    # "dimAmount":F
    goto :goto_0

    .line 300
    .end local v1    # "baseLayer":I
    .end local v3    # "cw$iterator":Ljava/util/Iterator;
    .restart local v9    # "targetAlpha":F
    :cond_8
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v10, v10, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_b

    .line 301
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v10, :cond_a

    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v10, :cond_a

    .line 302
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v6

    .line 304
    .local v6, "duration":J
    :goto_4
    cmpl-float v10, v9, v4

    if-lez v10, :cond_9

    .line 305
    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/DimLayerController;->getDimLayerFadeDuration(J)J

    move-result-wide v6

    .line 307
    :cond_9
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v10, v5, v4, v6, v7}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    goto/16 :goto_1

    .line 302
    .end local v6    # "duration":J
    :cond_a
    const-wide/16 v6, 0xc8

    .restart local v6    # "duration":J
    goto :goto_4

    .line 303
    .end local v6    # "duration":J
    :cond_b
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v10, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .restart local v6    # "duration":J
    goto :goto_4

    .line 309
    .end local v6    # "duration":J
    :cond_c
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v10}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v10

    if-eq v10, v5, :cond_1

    .line 310
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v10, v5}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    goto/16 :goto_1

    .line 317
    .restart local v0    # "animating":Z
    :cond_d
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v10, v8}, Lcom/android/server/wm/DimLayer;->animateDimLayer(Lcom/android/server/wm/DimLayerController$DimLayerState;)Z

    move-result v0

    .local v0, "animating":Z
    goto/16 :goto_2

    .line 327
    .end local v0    # "animating":Z
    :cond_e
    iget-object v10, v8, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v10}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    move-result v10

    return v10

    .line 336
    :cond_f
    const/4 v10, 0x0

    return v10
.end method

.method private getContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z
    .locals 2
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 157
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDimLayerFadeDuration(J)J
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 345
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 346
    .local v0, "tv":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 347
    const/high16 v2, 0x1130000

    const/4 v3, 0x1

    .line 346
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 348
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 349
    long-to-float v1, p1

    long-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-long p1, v1

    .line 353
    :cond_0
    :goto_0
    return-wide p1

    .line 350
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 351
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long p1, v1

    goto :goto_0
.end method

.method private static getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;
    .locals 2
    .param p0, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DimLayerController/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;
    .locals 4
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 110
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getOrCreateDimLayerState, dimLayerUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 113
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-nez v0, :cond_1

    .line 114
    new-instance v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .end local v0    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    invoke-direct {v0}, Lcom/android/server/wm/DimLayerController$DimLayerState;-><init>()V

    .line 115
    .restart local v0    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_1
    return-object v0
.end method

.method private setContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 4
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 122
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-nez v0, :cond_1

    .line 123
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setContinueDimming, no state for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 124
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    return-void

    .line 127
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 120
    return-void
.end method

.method private stopDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 6
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    const/4 v5, 0x0

    .line 200
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 201
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopDimmingIfNeeded, dimLayerUser="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 202
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 203
    const-string/jumbo v4, " state.continueDimming="

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 203
    iget-boolean v4, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    const-string/jumbo v4, " state.dimLayer.isDimming="

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    iget-object v4, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v4

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v2, :cond_1

    .line 207
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_4

    .line 208
    iget-object v2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 209
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v2, :cond_3

    .line 218
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iput-object v5, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 220
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v2}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 221
    iget-object v2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v3, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 198
    :cond_2
    return-void

    .line 210
    .restart local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    return-void

    .line 213
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    return-void
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 226
    const/4 v1, -0x1

    .line 227
    .local v1, "fullScreen":I
    const/4 v2, -0x1

    .line 228
    .local v2, "fullScreenAndDimming":I
    const/4 v4, 0x0

    .line 229
    .local v4, "result":Z
    const/4 v0, -0x1

    .line 231
    .local v0, "dimmingLayer":I
    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .end local v4    # "result":Z
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 232
    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DimLayer$DimLayerUser;

    .line 233
    .local v6, "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 238
    .local v5, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    invoke-interface {v6}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v8, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-ne v7, v8, :cond_1

    .line 239
    move v1, v3

    .line 240
    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DimLayerController$DimLayerState;

    iget-boolean v7, v7, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    if-eqz v7, :cond_0

    .line 242
    iget-object v7, v5, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v7, :cond_0

    iget-object v7, v5, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-gt v0, v7, :cond_0

    .line 243
    iget-object v7, v5, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 245
    move v2, v3

    .line 231
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 251
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v7

    or-int/2addr v4, v7

    .local v4, "result":Z
    goto :goto_1

    .line 256
    .end local v4    # "result":Z
    .end local v5    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    .end local v6    # "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_2
    if-eq v2, v9, :cond_4

    .line 257
    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-direct {p0, v7}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v7

    or-int/2addr v4, v7

    .line 263
    :cond_3
    :goto_2
    return v4

    .line 258
    :cond_4
    if-eq v1, v9, :cond_3

    .line 261
    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-direct {p0, v7}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v7

    or-int/2addr v4, v7

    .restart local v4    # "result":Z
    goto :goto_2
.end method

.method applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V
    .locals 3
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "aboveApp"    # Z

    .prologue
    .line 403
    if-nez p1, :cond_0

    .line 404
    sget-object v0, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to apply dim layer for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 405
    const-string/jumbo v2, ", but no dim layer user found."

    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void

    .line 409
    :cond_0
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    sget-object v0, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to apply dim layer for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 411
    const-string/jumbo v2, ", but dim layer user is invalid."

    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void

    .line 417
    :cond_1
    iget-object v0, p2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    .line 418
    return-void

    .line 422
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 423
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->setContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DimLayerController;->isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 425
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Win "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start dimming."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DimLayerController;->startDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 402
    :cond_4
    return-void
.end method

.method applyDimAbove(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DimLayerController;->applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 397
    return-void
.end method

.method applyDimBehind(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DimLayerController;->applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 393
    return-void
.end method

.method close()V
    .locals 3

    .prologue
    .line 357
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 358
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 359
    .local v1, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 357
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 361
    .end local v1    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 362
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 356
    return-void
.end method

.method drawFreeformRoundedDimIfNeeded()V
    .locals 5

    .prologue
    .line 459
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 460
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DimLayer$DimLayerUser;

    .line 461
    .local v3, "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 463
    .local v1, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/android/server/wm/Task;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 464
    check-cast v2, Lcom/android/server/wm/Task;

    .line 465
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 466
    iget-object v4, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->drawFreeformRoundedDim()V

    .line 459
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 458
    .end local v1    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    .end local v3    # "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_1
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "DimLayerController"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v0, "  "

    .line 444
    .local v0, "doubleSpace":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "prefixPlusDoubleSpace":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-interface {v5}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 449
    .local v4, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "dimLayer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 450
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-ne v5, v7, :cond_1

    const-string/jumbo v5, "shared"

    .line 449
    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 451
    const-string/jumbo v6, ", animator="

    .line 449
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 451
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 449
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 451
    const-string/jumbo v6, ", continueDimming="

    .line 449
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 451
    iget-boolean v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 449
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v5, :cond_0

    .line 453
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 446
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 450
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    goto :goto_1

    .line 441
    .end local v4    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_2
    return-void
.end method

.method isDimming()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 132
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 133
    .local v1, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const/4 v2, 0x1

    return v2

    .line 131
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 137
    .end local v1    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_1
    return v3
.end method

.method isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 2
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 341
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v1, p2, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 8
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    const/4 v7, 0x0

    .line 366
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 367
    .local v3, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v3, :cond_3

    .line 369
    iget-object v5, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-eq v5, v6, :cond_0

    .line 370
    iget-object v5, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 375
    .local v2, "localSharedFullScreenDimLayer":Lcom/android/server/wm/DimLayer;
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    move-result-object v5

    if-ne p1, v5, :cond_2

    .line 376
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 377
    iput-object v7, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 378
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 379
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 380
    .local v0, "dimLayerState":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DimLayer$DimLayerUser;

    .line 381
    .local v4, "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    if-eq v3, v0, :cond_1

    .line 382
    iget-object v5, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-ne v5, v2, :cond_1

    .line 383
    iput-object v7, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    .line 384
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 378
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 389
    .end local v0    # "dimLayerState":Lcom/android/server/wm/DimLayerController$DimLayerState;
    .end local v1    # "i":I
    .end local v4    # "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .end local v2    # "localSharedFullScreenDimLayer":Lcom/android/server/wm/DimLayer;
    :cond_3
    return-void
.end method

.method resetDimming()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 142
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DimLayerController$DimLayerState;

    iput-boolean v3, v2, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 145
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/wm/Task;

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 148
    .local v1, "task":Lcom/android/server/wm/Task;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/Task;->mUseFreeformBorder:Z

    .line 141
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method

.method startDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V
    .locals 4
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "newWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "aboveApp"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;

    move-result-object v0

    .line 166
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iput-boolean p3, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimAbove:Z

    .line 167
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startDimmingIfNeeded, dimLayerUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 168
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 169
    const-string/jumbo v3, " newWinAnimator="

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 170
    const-string/jumbo v3, " state.animator="

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 170
    iget-object v3, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v2, p2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-gt v1, v2, :cond_2

    .line 174
    :cond_1
    iput-object p2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 180
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 186
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 161
    :cond_2
    return-void

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method stopDimmingIfNeeded()V
    .locals 5

    .prologue
    .line 191
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopDimmingIfNeeded, mState.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 193
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayer$DimLayerUser;

    .line 194
    .local v0, "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayerController;->stopDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 192
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 190
    .end local v0    # "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_1
    return-void
.end method

.method updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 6
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;

    move-result-object v3

    .line 67
    .local v3, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_1

    .line 68
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    .line 70
    .local v2, "previousFullscreen":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 71
    .local v0, "displayId":I
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 72
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_2

    .line 74
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->setBoundsForFullscreen()V

    .line 75
    return-void

    .line 68
    .end local v0    # "displayId":I
    .end local v2    # "previousFullscreen":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "previousFullscreen":Z
    goto :goto_0

    .line 67
    .end local v2    # "previousFullscreen":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "previousFullscreen":Z
    goto :goto_0

    .line 78
    .restart local v0    # "displayId":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 79
    .local v1, "newDimLayer":Lcom/android/server/wm/DimLayer;
    if-nez v1, :cond_5

    .line 80
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_4

    .line 82
    iget-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    .line 88
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v4}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 89
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    iput-object v1, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 102
    :cond_3
    :goto_2
    iput-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    .line 65
    return-void

    .line 85
    :cond_4
    new-instance v1, Lcom/android/server/wm/DimLayer;

    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 86
    invoke-static {p1}, Lcom/android/server/wm/DimLayerController;->getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-direct {v1, v4, p1, v0, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    goto :goto_1

    .line 91
    :cond_5
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_3

    .line 92
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    goto :goto_2

    .line 95
    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :cond_6
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_7

    if-eqz v2, :cond_8

    .line 96
    :cond_7
    new-instance v1, Lcom/android/server/wm/DimLayer;

    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 97
    invoke-static {p1}, Lcom/android/server/wm/DimLayerController;->getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-direct {v1, v4, p1, v0, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    .line 99
    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v4}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 100
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 98
    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :cond_8
    iget-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    goto :goto_3
.end method
