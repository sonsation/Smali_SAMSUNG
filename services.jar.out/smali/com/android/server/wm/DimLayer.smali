.class public Lcom/android/server/wm/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimLayer$DimLayerUser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdjustedToMagnificationRect:Landroid/graphics/Rect;

.field private mAlpha:F

.field private mAnimAlpha:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDestroyed:Z

.field private mDimSurface:Landroid/view/SurfaceControl;

.field private final mDisplayId:I

.field private mDuration:J

.field mEffectType:I

.field private mFreeformDimType:I

.field private mIsFreeformDim:Z

.field private final mLastBounds:Landroid/graphics/Rect;

.field private mLayer:I

.field private final mName:Ljava/lang/String;

.field private mRequestDrawRoundedDim:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mShowing:Z

.field private mStartAlpha:F

.field private mStartTime:J

.field private mTargetAlpha:F

.field private final mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "user"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p3, "displayId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v2, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mAdjustedToMagnificationRect:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    .line 76
    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    .line 79
    iput v2, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    .line 82
    iput v2, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 90
    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    .line 95
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/server/wm/DimLayer;->mEffectType:I

    .line 99
    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mRequestDrawRoundedDim:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mIsFreeformDim:Z

    .line 101
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/DimLayer;->mAnimAlpha:F

    .line 102
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mFreeformDimType:I

    .line 124
    iput-object p2, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    .line 125
    iput p3, p0, Lcom/android/server/wm/DimLayer;->mDisplayId:I

    .line 126
    iput-object p1, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 127
    iput-object p4, p0, Lcom/android/server/wm/DimLayer;->mName:Ljava/lang/String;

    .line 128
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ctor: displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    return-void
.end method

.method private adjustAlpha(F)V
    .locals 5
    .param p1, "alpha"    # F

    .prologue
    const/4 v4, 0x0

    .line 216
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAlpha alpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 221
    :cond_1
    cmpl-float v1, p1, v4

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v1, :cond_4

    .line 222
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAlpha hiding"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    .line 215
    :cond_3
    :goto_0
    return-void

    .line 227
    :cond_4
    cmpl-float v1, p1, v4

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-nez v1, :cond_3

    .line 228
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAlpha showing"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 231
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failure setting alpha immediately"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private adjustBounds()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-interface {v0}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mAdjustedToMagnificationRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mAdjustedToMagnificationRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->adjustBoundsToMagnificationSpec(Landroid/graphics/Rect;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-interface {v0}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    :cond_1
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_7

    .line 262
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mIsFreeformDim:Z

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 267
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mIsFreeformDim:Z

    if-eqz v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 270
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mRequestDrawRoundedDim:Z

    .line 279
    :cond_4
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adjustBounds user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-interface {v2}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 242
    return-void

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mAdjustedToMagnificationRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mAdjustedToMagnificationRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mAdjustedToMagnificationRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mAdjustedToMagnificationRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mAdjustedToMagnificationRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mAdjustedToMagnificationRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    goto :goto_0

    .line 274
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    goto/16 :goto_0
.end method

.method private adjustLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 197
    :cond_0
    return-void
.end method

.method private constructSurface(Lcom/android/server/wm/WindowManagerService;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 132
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 134
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_2

    .line 135
    new-instance v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 136
    const-string/jumbo v2, "DimSurface"

    .line 138
    iget v3, p0, Lcom/android/server/wm/DimLayer;->mEffectType:I

    or-int/lit8 v6, v3, 0x4

    .line 137
    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    .line 135
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    .line 161
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  DIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": CREATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 165
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V

    .line 166
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->adjustAlpha(F)V

    .line 167
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->adjustLayer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 131
    :goto_1
    return-void

    .line 141
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    instance-of v0, v0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_3

    .line 143
    iget-object v8, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    check-cast v8, Lcom/android/server/wm/Task;

    .line 144
    .local v8, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mIsFreeformDim:Z

    .line 145
    iget-boolean v0, v8, Lcom/android/server/wm/Task;->mUseFreeformBorder:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput v0, p0, Lcom/android/server/wm/DimLayer;->mFreeformDimType:I

    .line 149
    .end local v8    # "task":Lcom/android/server/wm/Task;
    :cond_3
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_5

    .line 150
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mIsFreeformDim:Z

    .line 149
    if-eqz v0, :cond_5

    .line 151
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Freeform"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DimLayer;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x2

    .line 153
    const/4 v6, 0x4

    .line 151
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 168
    :catch_0
    move-exception v7

    .line 169
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1

    .line 145
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "task":Lcom/android/server/wm/Task;
    :cond_4
    const/4 v0, 0x2

    goto :goto_2

    .line 156
    .end local v8    # "task":Lcom/android/server/wm/Task;
    :cond_5
    :try_start_3
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mName:Ljava/lang/String;

    .line 158
    iget v3, p0, Lcom/android/server/wm/DimLayer;->mEffectType:I

    or-int/lit8 v6, v3, 0x4

    .line 157
    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    .line 156
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 170
    throw v0
.end method

.method private durationEndsEarlier(J)Z
    .locals 7
    .param p1, "duration"    # J

    .prologue
    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    iget-wide v4, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

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

.method private getBoundsForFullscreen(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    .line 290
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-interface {v5}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 293
    .local v2, "info":Landroid/view/DisplayInfo;
    iget v5, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-double v6, v5

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 294
    .local v1, "dw":I
    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-double v6, v5

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 296
    .local v0, "dh":I
    mul-int/lit8 v5, v1, -0x1

    div-int/lit8 v5, v5, 0x6

    int-to-float v3, v5

    .line 297
    .local v3, "xPos":F
    mul-int/lit8 v5, v0, -0x1

    div-int/lit8 v5, v5, 0x6

    int-to-float v4, v5

    .line 298
    .local v4, "yPos":F
    float-to-int v5, v3

    float-to-int v6, v4

    float-to-int v7, v3

    add-int/2addr v7, v1

    float-to-int v8, v4

    add-int/2addr v8, v0

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 286
    return-void
.end method

.method private setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 208
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    .line 212
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayer;->adjustAlpha(F)V

    .line 207
    return-void
.end method


# virtual methods
.method animateDimLayer(Lcom/android/server/wm/DimLayerController$DimLayerState;)Z
    .locals 2
    .param p1, "state"    # Lcom/android/server/wm/DimLayerController$DimLayerState;

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mIsFreeformDim:Z

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-interface {v0, v1, p1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->animateFreeformDimLayerLocked(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/DimLayerController$DimLayerState;)Z

    move-result v0

    return v0

    .line 496
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method animateFreeformDimLayer([FF)V
    .locals 5
    .param p1, "tmpFloats"    # [F
    .param p2, "animAlpha"    # F

    .prologue
    .line 500
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 502
    iput p2, p0, Lcom/android/server/wm/DimLayer;->mAnimAlpha:F

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x5

    aget v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    .line 505
    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x4

    aget v4, p1, v4

    .line 504
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 509
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "animateFreeformDimLayer animAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DimLayer;->mAnimAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    return-void

    .line 507
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/DimLayer;->mAnimAlpha:F

    goto :goto_0
.end method

.method destroySurface()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 468
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "destroySurface."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 471
    iput-object v2, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    .line 467
    return-void
.end method

.method drawFreeformRoundedDim()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 514
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_2

    .line 515
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    instance-of v1, v1, Lcom/android/server/wm/Task;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    check-cast v1, Lcom/android/server/wm/Task;

    move-object v0, v1

    .line 516
    .local v0, "task":Lcom/android/server/wm/Task;
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mRequestDrawRoundedDim:Z

    if-nez v1, :cond_1

    .line 518
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mFreeformDimType:I

    packed-switch v1, :pswitch_data_0

    .line 528
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mRequestDrawRoundedDim:Z

    if-eqz v1, :cond_2

    .line 529
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mUseFreeformBorder:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mFreeformDimType:I

    .line 530
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mFreeformDimType:I

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->drawFreeformRoundedDim(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)V

    .line 531
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mRequestDrawRoundedDim:Z

    .line 513
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_2
    return-void

    .line 520
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :pswitch_0
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mUseFreeformBorder:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/android/server/wm/DimLayer;->mRequestDrawRoundedDim:Z

    goto :goto_0

    .line 523
    :pswitch_1
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mUseFreeformBorder:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/server/wm/DimLayer;->mRequestDrawRoundedDim:Z

    goto :goto_0

    .line 529
    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    .line 518
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getLayer()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    return v0
.end method

.method getTargetAlpha()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    return v0
.end method

.method getUser()Lcom/android/server/wm/DimLayer$DimLayerUser;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    return-object v0
.end method

.method hide()V
    .locals 2

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_1

    .line 404
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hide: immediate"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 402
    :cond_1
    return-void
.end method

.method hide(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    const/4 v3, 0x0

    .line 416
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide: duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_1
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mEffectType:I

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_2

    .line 419
    const-wide/16 p1, 0x0

    .line 422
    :cond_2
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_3

    .line 423
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mIsFreeformDim:Z

    if-eqz v0, :cond_3

    .line 424
    iput v3, p0, Lcom/android/server/wm/DimLayer;->mAnimAlpha:F

    .line 428
    :cond_3
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p0, v0, v3, p1, p2}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 415
    :cond_4
    return-void
.end method

.method isAnimating()Z
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDimming()Z
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

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
    .line 478
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 479
    const-string/jumbo v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 480
    const-string/jumbo v0, " mAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 481
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 482
    const-string/jumbo v0, " mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Last animation: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v0, " mDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 485
    const-string/jumbo v0, " mStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 486
    const-string/jumbo v0, " curTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 487
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mStartAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 488
    const-string/jumbo v0, " mTargetAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 477
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 317
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 318
    .local v1, "tmpRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mUser:Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-interface {v2}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mAdjustedToMagnificationRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    :cond_0
    :goto_1
    return-void

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 320
    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v2, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->adjustBoundsToMagnificationSpec(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 327
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 328
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v2, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failure setting size"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1

    .line 331
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    .line 332
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 331
    throw v2
.end method

.method setBoundsForFullscreen()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->getBoundsForFullscreen(Landroid/graphics/Rect;)V

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 307
    return-void
.end method

.method public setEffectType(I)V
    .locals 8
    .param p1, "effectType"    # I

    .prologue
    .line 541
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mEffectType:I

    if-eq v0, p1, :cond_1

    .line 542
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mEffectType:I

    .line 543
    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_2

    const-string/jumbo v2, "DimSurface"

    .line 544
    .local v2, "surfaceName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 545
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 546
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_3

    .line 547
    new-instance v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 550
    or-int/lit8 v6, p1, 0x4

    .line 549
    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    .line 547
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    .line 557
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    .line 558
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 562
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 563
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEffectType("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .end local v2    # "surfaceName":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 543
    :cond_2
    const-string/jumbo v2, "BlurSurface"

    .restart local v2    # "surfaceName":Ljava/lang/String;
    goto :goto_0

    .line 552
    :cond_3
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 555
    or-int/lit8 v6, p1, 0x4

    .line 554
    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    .line 552
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 565
    .end local v2    # "surfaceName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 566
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Exception creating Dim surface in setEffectType"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 190
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    if-ne v0, p1, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayer;->adjustLayer(I)V

    .line 189
    return-void
.end method

.method show()V
    .locals 4

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show: immediate"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 347
    :cond_1
    return-void
.end method

.method show(IFJ)V
    .locals 9
    .param p1, "layer"    # I
    .param p2, "alpha"    # F
    .param p3, "duration"    # J

    .prologue
    const/4 v6, 0x0

    .line 363
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show: layer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 364
    const-string/jumbo v5, " duration="

    .line 363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 364
    const-string/jumbo v5, ", mDestroyed="

    .line 363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 364
    iget-boolean v5, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    .line 363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 366
    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "show: no Surface"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput v6, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v6, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 369
    return-void

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, v1}, Lcom/android/server/wm/DimLayer;->constructSurface(Lcom/android/server/wm/WindowManagerService;)V

    .line 376
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 377
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V

    .line 379
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 382
    .local v2, "curTime":J
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v0

    .line 383
    .local v0, "animating":Z
    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_5

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v1

    if-nez v1, :cond_5

    .line 384
    :cond_4
    if-nez v0, :cond_6

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_6

    .line 385
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-gtz v1, :cond_8

    .line 387
    invoke-direct {p0, p2}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    .line 395
    :cond_6
    :goto_0
    iput p2, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 396
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show: mStartAlpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mStartTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 397
    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    .line 396
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 397
    const-string/jumbo v5, " mTargetAlpha="

    .line 396
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 397
    iget v5, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 396
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_7
    return-void

    .line 390
    :cond_8
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    .line 391
    iput-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    .line 392
    iput-wide p3, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    goto :goto_0
.end method

.method stepAnimation()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 439
    iget-boolean v4, p0, Lcom/android/server/wm/DimLayer;->mDestroyed:Z

    if-eqz v4, :cond_0

    .line 440
    sget-object v4, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stepAnimation: surface destroyed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iput v8, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v8, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 443
    const/4 v4, 0x0

    return v4

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 447
    .local v2, "curTime":J
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v5, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    sub-float v1, v4, v5

    .line 448
    .local v1, "alphaDelta":F
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    sub-long v6, v2, v6

    long-to-float v5, v6

    mul-float/2addr v5, v1

    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    add-float v0, v4, v5

    .line 450
    .local v0, "alpha":F
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_1

    .line 451
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mAnimAlpha:F

    mul-float/2addr v0, v4

    .line 454
    :cond_1
    cmpl-float v4, v1, v8

    if-lez v4, :cond_5

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    .line 457
    :goto_0
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 459
    :cond_2
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stepAnimation: curTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " alpha="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    .line 463
    .end local v0    # "alpha":F
    .end local v1    # "alphaDelta":F
    .end local v2    # "curTime":J
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    return v4

    .line 455
    .restart local v0    # "alpha":F
    .restart local v1    # "alphaDelta":F
    .restart local v2    # "curTime":J
    :cond_5
    cmpg-float v4, v1, v8

    if-gez v4, :cond_2

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_2

    goto :goto_0
.end method
