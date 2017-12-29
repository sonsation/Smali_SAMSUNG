.class public Lcom/android/server/wm/MultiWindowStackColorLayer;
.super Ljava/lang/Object;
.source "MultiWindowStackColorLayer.java"

# interfaces
.implements Lcom/android/server/wm/IMultiWindowStackColorLayer;


# static fields
.field private static DEBUG_STACK_COLOR_LAYER:Z = false

.field private static final FOCUSED_TINT_COLOR:I = -0x272728

.field private static SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlpha:F

.field private mAnimatingForMinimizedDockedStack:Z

.field private final mBounds:Landroid/graphics/Rect;

.field private mColor:I

.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mDestroyed:Z

.field private mDisplayId:I

.field private mDuration:J

.field private mEffectType:I

.field private mHasColorChanged:Z

.field private mHasColorDrawn:Z

.field private mHasSurfaceSizeChanged:Z

.field private final mLastBounds:Landroid/graphics/Rect;

.field private mLastLayer:I

.field private final mLastSurfaceBounds:Landroid/graphics/Rect;

.field private mLayer:I

.field private mName:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mShowing:Z

.field private mStack:Lcom/android/server/wm/TaskStack;

.field private mStartAlpha:F

.field private mStartTime:J

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceBounds:Landroid/graphics/Rect;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mTargetAlpha:F

.field private final mTmpBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    .line 52
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    .line 53
    const-string v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 58
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurface:Landroid/view/Surface;

    .line 61
    iput v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    .line 64
    iput v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    .line 66
    iput v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastLayer:I

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastSurfaceBounds:Landroid/graphics/Rect;

    .line 75
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAnimatingForMinimizedDockedStack:Z

    .line 80
    iput v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartAlpha:F

    .line 83
    iput v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    .line 91
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDestroyed:Z

    .line 93
    iput v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDisplayId:I

    .line 95
    iput v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mColor:I

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastBounds:Landroid/graphics/Rect;

    .line 103
    iput v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mEffectType:I

    .line 104
    iput-object v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    .line 106
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasSurfaceSizeChanged:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorChanged:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorDrawn:Z

    .line 109
    iput-object v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mName:Ljava/lang/String;

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mPaint:Landroid/graphics/Paint;

    .line 115
    return-void
.end method

.method private adjustAlpha(F)V
    .locals 5
    .param p1, "alpha"    # F

    .prologue
    const/4 v4, 0x0

    .line 248
    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlpha alpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 252
    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustAlpha: alpha = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    cmpl-float v1, p1, v4

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    if-eqz v1, :cond_5

    .line 255
    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string v2, "setAlpha hiding"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_4

    .line 257
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    .line 258
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    .line 259
    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v1, :cond_4

    :cond_3
    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string v2, "adjustAlpha: mShowing = false"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_4
    :goto_0
    return-void

    .line 261
    :cond_5
    cmpl-float v1, p1, v4

    if-lez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    if-nez v1, :cond_4

    .line 262
    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string v2, "setAlpha showing"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_4

    .line 264
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 265
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    .line 266
    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v1, :cond_4

    :cond_7
    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustAlpha: mShowing, alpha = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string v2, "Failure setting alpha immediately"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private alignSurfaceToBounds()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    .line 279
    const/4 v3, 0x0

    .line 281
    .local v3, "spec":Landroid/view/MagnificationSpec;
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v7, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDisplayId:I

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v3

    .line 286
    .local v3, "spec":Landroid/view/MagnificationSpec;
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_4

    iget v6, v3, Landroid/view/MagnificationSpec;->scale:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_4

    .line 287
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v4, v6

    .line 288
    .local v4, "xPos":F
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v5, v6

    .line 290
    .local v5, "yPos":F
    if-eqz v3, :cond_1

    iget v6, v3, Landroid/view/MagnificationSpec;->scale:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_1

    .line 291
    iget v6, v3, Landroid/view/MagnificationSpec;->offsetX:F

    iget v7, v3, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v7, v4

    add-float v4, v6, v7

    .line 292
    iget v6, v3, Landroid/view/MagnificationSpec;->offsetY:F

    iget v7, v3, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v7, v5

    add-float v5, v6, v7

    .line 307
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_3

    .line 308
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 309
    sget-boolean v6, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alignSurfaceToBounds: mSurfaceControl xPos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", yPos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastSurfaceBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 274
    :cond_3
    return-void

    .line 297
    .end local v4    # "xPos":F
    .end local v5    # "yPos":F
    :cond_4
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 300
    .local v2, "info":Landroid/view/DisplayInfo;
    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 301
    .local v1, "dw":I
    iget v6, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 303
    .local v0, "dh":I
    mul-int/lit8 v6, v1, -0x1

    div-int/lit8 v6, v6, 0x6

    int-to-float v4, v6

    .line 304
    .restart local v4    # "xPos":F
    mul-int/lit8 v6, v0, -0x1

    div-int/lit8 v6, v6, 0x6

    int-to-float v5, v6

    .restart local v5    # "yPos":F
    goto :goto_0
.end method

.method private constructSurface(Lcom/android/server/wm/WindowManagerService;)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 128
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 130
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_2

    .line 131
    new-instance v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 132
    const-string v2, "StackColorSurface"

    .line 134
    iget v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mEffectType:I

    or-int/lit8 v6, v3, 0x4

    .line 133
    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x3

    .line 131
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 140
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  MULTIWINDOW_STACKCOLORLAYER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": CREATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 143
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->alignSurfaceToBounds()V

    .line 144
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->adjustAlpha(F)V

    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->adjustLayer()V

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 127
    :goto_1
    return-void

    .line 136
    :cond_2
    :try_start_1
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mName:Ljava/lang/String;

    .line 138
    iget v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mEffectType:I

    or-int/lit8 v6, v3, 0x4

    .line 137
    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x3

    .line 136
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v7

    .line 148
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "WindowManager"

    const-string v1, "Exception creating MultiWindowStackColorLayer surface"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1

    .line 149
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 150
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 149
    throw v0
.end method

.method private drawColor(I)V
    .locals 8
    .param p1, "color"    # I

    .prologue
    const/4 v7, 0x0

    .line 197
    iget-boolean v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasSurfaceSizeChanged:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorChanged:Z

    if-eqz v5, :cond_3

    .line 200
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 201
    .local v4, "tmpRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 202
    .local v1, "c":Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_1

    .line 204
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 210
    .end local v1    # "c":Landroid/graphics/Canvas;
    :cond_1
    :goto_0
    if-nez v1, :cond_4

    .line 211
    sget-boolean v5, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string v6, "drawColor: c == null"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_2
    return-void

    .line 198
    .end local v4    # "tmpRect":Landroid/graphics/Rect;
    :cond_3
    return-void

    .line 215
    .restart local v4    # "tmpRect":Landroid/graphics/Rect;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 220
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 221
    .local v0, "adjustRect":Landroid/graphics/Rect;
    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 224
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v7, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 225
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 227
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasSurfaceSizeChanged:Z

    .line 228
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorChanged:Z

    .line 229
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorDrawn:Z

    .line 231
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 196
    return-void

    .line 205
    .end local v0    # "adjustRect":Landroid/graphics/Rect;
    .restart local v1    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 206
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_0
.end method

.method private durationEndsEarlier(J)Z
    .locals 7
    .param p1, "duration"    # J

    .prologue
    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartTime:J

    iget-wide v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 235
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    iput p1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAnimatingForMinimizedDockedStack:Z

    if-eqz v0, :cond_2

    .line 244
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->adjustAlpha(F)V

    .line 234
    return-void

    .line 240
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    .line 241
    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlpha: mAlpha == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimatingForMinimizedDockedStack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAnimatingForMinimizedDockedStack:Z

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public adjustLayer()V
    .locals 2

    .prologue
    .line 176
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastLayer:I

    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    if-eq v0, v1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 180
    :cond_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastLayer:I

    .line 175
    :cond_1
    return-void
.end method

.method public destroySurface()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 492
    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string v1, "destroySurface."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySurface: DEBUG -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 497
    iput-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 499
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDestroyed:Z

    .line 491
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mColor:I

    return v0
.end method

.method public getDockedSide()I
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    return v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    return v0
.end method

.method public getSurfaceBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTargetAlpha()F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    return v0
.end method

.method public hasSurfacePosChanged()Z
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    if-eqz v0, :cond_1

    .line 443
    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string v1, "hide: immediate"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/MultiWindowStackColorLayer;->hide(J)V

    .line 441
    :cond_1
    return-void
.end method

.method public hide(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    const/4 v3, 0x0

    .line 455
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MultiWindowStackColorLayer;->durationEndsEarlier(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_1
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/wm/MultiWindowStackColorLayer;->show(FJ)V

    .line 454
    :cond_2
    return-void
.end method

.method public initiate(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;IILjava/lang/String;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "user"    # Lcom/android/server/wm/TaskStack;
    .param p3, "displayId"    # I
    .param p4, "color"    # I
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    .line 120
    iput p3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDisplayId:I

    .line 121
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 122
    iput-object p5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mName:Ljava/lang/String;

    .line 123
    iput p4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mColor:I

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowStackColorLayer;->constructSurface(Lcom/android/server/wm/WindowManagerService;)V

    .line 118
    return-void
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBoundsOutOfScreen()Z
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 576
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->hasSurfacePosChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 577
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isMinimizing()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 583
    iget v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->isBoundsOutOfScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 583
    :cond_1
    :goto_0
    return v0

    .line 585
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 586
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    return v0
.end method

.method public isTranslucent()Z
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 503
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurfaceControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 504
    const-string v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 505
    const-string v0, " mAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 506
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSurfaceBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 507
    const-string v0, " mSurfaceBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Last animation: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    const-string v0, " mDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 510
    const-string v0, " mStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 511
    const-string v0, " curTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 512
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mStartAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 513
    const-string v0, " mTargetAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 502
    return-void
.end method

.method public setAnimatingForMinimizedDockedStack(Z)V
    .locals 3
    .param p1, "isMinimizing"    # Z

    .prologue
    .line 602
    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimatingForMinimizedDockedStack: isMinimizing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAnimatingForMinimizedDockedStack:Z

    .line 601
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 318
    return-void
.end method

.method public setColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mColor:I

    if-eq v0, p1, :cond_0

    .line 190
    iput p1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mColor:I

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorChanged:Z

    .line 192
    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColor: color changed to = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    return-void
.end method

.method public setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 169
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    if-ne v0, p1, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    iput p1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    .line 168
    return-void
.end method

.method public setSurfacePosition(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "stackDimBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 526
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 527
    .local v0, "dockedSide":I
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 528
    .local v2, "surfaceWidth":I
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 529
    .local v1, "surfaceHeight":I
    packed-switch v0, :pswitch_data_0

    .line 555
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 525
    return-void

    .line 531
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 532
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 533
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 534
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 537
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 538
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 539
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 540
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 543
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 544
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 545
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 546
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 549
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 550
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 551
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 552
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setupSurface()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAnimatingForMinimizedDockedStack:Z

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->setupSurface(Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setupSurface(Z)Z
    .locals 9
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v8, 0x1

    .line 334
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 335
    .local v0, "adjustRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 339
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v5, v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->adjustBoundsToMagnificationSpec(Landroid/graphics/Rect;)V

    .line 343
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 344
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 345
    .local v2, "dw":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 346
    .local v1, "dh":I
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v5

    .line 347
    .local v3, "xPos":F
    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v5

    .line 350
    .local v4, "yPos":F
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    .line 351
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 352
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v2, v1}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 353
    iput-boolean v8, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasSurfaceSizeChanged:Z

    .line 354
    sget-boolean v5, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v5, :cond_0

    .line 355
    sget-object v5, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupSurface: mSurfaceControl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->alignSurfaceToBounds()V

    .line 358
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 359
    return v8

    .line 362
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "xPos":F
    .end local v4    # "yPos":F
    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method public shouldUpdateSurface()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasSurfaceSizeChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorDrawn:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string v1, "show: immediate"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/MultiWindowStackColorLayer;->show(FJ)V

    .line 375
    :cond_1
    return-void
.end method

.method public show(FJ)V
    .locals 8
    .param p1, "alpha"    # F
    .param p2, "duration"    # J

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 390
    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show: alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 391
    const-string v5, ", mDestroyed="

    .line 390
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 391
    iget-boolean v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDestroyed:Z

    .line 390
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    .line 394
    cmpl-float v1, p1, v6

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->isBoundsOutOfScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show: alpha = 0, isBoundsOutOfScreen, DEBUG -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_1
    cmpl-float v1, p1, v6

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v4, 0x10

    if-ne v1, v4, :cond_2

    .line 398
    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show: alpha = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSurfaceBounds = (16,16), DEBUG -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDestroyed:Z

    if-eqz v1, :cond_3

    .line 403
    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string v4, "show: no Surface"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iput v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    iput v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    .line 406
    return-void

    .line 409
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_4

    .line 410
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiWindowStackColorLayer;->constructSurface(Lcom/android/server/wm/WindowManagerService;)V

    .line 413
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastSurfaceBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorDrawn:Z

    if-eqz v1, :cond_6

    .line 414
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->alignSurfaceToBounds()V

    .line 415
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorDrawn:Z

    .line 418
    :cond_6
    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mColor:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiWindowStackColorLayer;->drawColor(I)V

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 421
    .local v2, "curTime":J
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->isAnimating()Z

    move-result v0

    .line 422
    .local v0, "animating":Z
    if-eqz v0, :cond_7

    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_8

    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/MultiWindowStackColorLayer;->durationEndsEarlier(J)Z

    move-result v1

    if-nez v1, :cond_8

    .line 423
    :cond_7
    if-nez v0, :cond_9

    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_9

    .line 424
    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-gtz v1, :cond_c

    .line 426
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowStackColorLayer;->setAlpha(F)V

    .line 434
    :cond_9
    :goto_0
    iput p1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    .line 435
    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v1, :cond_b

    :cond_a
    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show: mStartAlpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mStartTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 436
    iget-wide v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartTime:J

    .line 435
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 436
    const-string v5, " mTargetAlpha="

    .line 435
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 436
    iget v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    .line 435
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_b
    return-void

    .line 429
    :cond_c
    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    iput v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartAlpha:F

    .line 430
    iput-wide v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartTime:J

    .line 431
    iput-wide p2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDuration:J

    goto :goto_0
.end method

.method public stepAnimation()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 468
    iget-boolean v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDestroyed:Z

    if-eqz v4, :cond_0

    .line 469
    sget-object v4, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string v5, "stepAnimation: surface destroyed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iput v8, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    iput v8, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    .line 472
    const/4 v4, 0x0

    return v4

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 476
    .local v2, "curTime":J
    iget v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    iget v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartAlpha:F

    sub-float v1, v4, v5

    .line 477
    .local v1, "alphaDelta":F
    iget v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartAlpha:F

    iget-wide v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartTime:J

    sub-long v6, v2, v6

    long-to-float v5, v6

    mul-float/2addr v5, v1

    iget-wide v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    add-float v0, v4, v5

    .line 478
    .local v0, "alpha":F
    cmpl-float v4, v1, v8

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4

    .line 481
    :goto_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    .line 483
    :cond_1
    sget-boolean v4, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stepAnimation: curTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " alpha="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->setAlpha(F)V

    .line 487
    .end local v0    # "alpha":F
    .end local v1    # "alphaDelta":F
    .end local v2    # "curTime":J
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->isAnimating()Z

    move-result v4

    return v4

    .line 479
    .restart local v0    # "alpha":F
    .restart local v1    # "alphaDelta":F
    .restart local v2    # "curTime":J
    :cond_4
    cmpg-float v4, v1, v8

    if-gez v4, :cond_1

    iget v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    goto :goto_0
.end method
