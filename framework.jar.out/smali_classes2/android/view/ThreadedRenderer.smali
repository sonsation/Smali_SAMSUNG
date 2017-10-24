.class public final Landroid/view/ThreadedRenderer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;,
        Landroid/view/ThreadedRenderer$ProcessInitializer;
    }
.end annotation


# static fields
.field private static final CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field public static final DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field public static final DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY:Ljava/lang/String; = "debug.hwui.show_non_rect_clip"

.field private static final FLAG_DUMP_FRAMESTATS:I = 0x1

.field private static final FLAG_DUMP_RESET:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ThreadedRenderer"

.field public static final OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field static final PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field static final PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field public static final PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final PROFILE_PROPERTY_VISUALIZE_BARS:Ljava/lang/String; = "visual_bars"

.field static final RENDER_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.render_dirty_regions"

.field private static final SYNC_CONTEXT_IS_STOPPED:I = 0x4

.field private static final SYNC_INVALIDATE_REQUIRED:I = 0x1

.field private static final SYNC_LOST_SURFACE_REWARD_IF_FOUND:I = 0x2

.field private static final SYNC_OK:I

.field private static final VISUALIZERS:[Ljava/lang/String;

.field public static sRendererDisabled:Z

.field public static sSystemRendererDisabled:Z

.field public static sTrimForeground:Z


# instance fields
.field private final mAmbientShadowAlpha:I

.field private mChoreographer:Landroid/view/Choreographer;

.field private mDemoted:Z

.field private mEnabled:Z

.field private mHasInsets:Z

.field private mHeight:I

.field private mInitialized:Z

.field private mInsetLeft:I

.field private mInsetTop:I

.field private final mLightRadius:F

.field private final mLightY:F

.field private final mLightZ:F

.field private mNativeProxy:J

.field private mRequested:Z

.field private mRootNode:Landroid/view/RenderNode;

.field private mRootNodeNeedsUpdate:Z

.field private final mSpotShadowAlpha:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mWidth:I


# direct methods
.method static synthetic -wrap0(J)I
    .locals 2
    .param p0, "nativeProxy"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nGetRenderThreadTid(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(JLandroid/view/GraphicBuffer;[J)V
    .locals 0
    .param p0, "nativeProxy"    # J
    .param p2, "buffer"    # Landroid/view/GraphicBuffer;
    .param p3, "map"    # [J

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/view/ThreadedRenderer;->nSetAtlas(JLandroid/view/GraphicBuffer;[J)V

    return-void
.end method

.method static synthetic -wrap2(JI)V
    .locals 0
    .param p0, "nativeProxy"    # J
    .param p2, "fd"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nSetProcessStatsBuffer(JI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    sput-boolean v2, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    .line 209
    sput-boolean v2, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    .line 223
    sput-boolean v2, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    .line 326
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 327
    const-string/jumbo v1, "visual_bars"

    aput-object v1, v0, v2

    .line 326
    sput-object v0, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    .line 71
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ThreadedRenderer;-><init>(Landroid/content/Context;ZZ)V

    .line 370
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z
    .param p3, "demoted"    # Z

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-boolean v5, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 365
    iput-boolean v9, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    .line 368
    iput-boolean v5, p0, Landroid/view/ThreadedRenderer;->mDemoted:Z

    .line 376
    sget-object v1, Lcom/android/internal/R$styleable;->Lighting:[I

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 377
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    .line 378
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    .line 379
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    .line 381
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    float-to-int v1, v1

    .line 380
    iput v1, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    .line 382
    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    .line 383
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 385
    invoke-static {}, Landroid/view/ThreadedRenderer;->nCreateRootRenderNode()J

    move-result-wide v2

    .line 386
    .local v2, "rootNodePtr":J
    invoke-static {v2, v3}, Landroid/view/RenderNode;->adopt(J)Landroid/view/RenderNode;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 387
    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v5}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 390
    iput-boolean p3, p0, Landroid/view/ThreadedRenderer;->mDemoted:Z

    .line 391
    iget-boolean v1, p0, Landroid/view/ThreadedRenderer;->mDemoted:Z

    invoke-static {p2, v2, v3, v1}, Landroid/view/ThreadedRenderer;->nCreateProxy(ZJZ)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 393
    iget-boolean v1, p0, Landroid/view/ThreadedRenderer;->mDemoted:Z

    if-eqz v1, :cond_0

    .line 394
    const-string/jumbo v1, "ThreadedRenderer"

    const-string/jumbo v4, "ThreadedRenderer created in DEMOTED mode"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    sget-object v1, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    iget-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {v1, p1, v4, v5}, Landroid/view/ThreadedRenderer$ProcessInitializer;->init(Landroid/content/Context;J)V

    .line 400
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->loadSystemProperties()Z

    .line 375
    return-void
.end method

.method public static copySurfaceInto(Landroid/view/Surface;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 925
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nCopySurfaceInto(Landroid/view/Surface;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;Z)Landroid/view/ThreadedRenderer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "translucent"    # Z

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;ZZ)Landroid/view/ThreadedRenderer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ZZ)Landroid/view/ThreadedRenderer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "translucent"    # Z
    .param p2, "demoted"    # Z

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "renderer":Landroid/view/ThreadedRenderer;
    invoke-static {}, Landroid/view/DisplayListCanvas;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    new-instance v0, Landroid/view/ThreadedRenderer;

    .end local v0    # "renderer":Landroid/view/ThreadedRenderer;
    invoke-direct {v0, p0, p1, p2}, Landroid/view/ThreadedRenderer;-><init>(Landroid/content/Context;ZZ)V

    .line 275
    :cond_0
    return-object v0
.end method

.method private static destroyResources(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 546
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 547
    check-cast v1, Landroid/view/ViewGroup;

    .line 549
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 550
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 551
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static disable(Z)V
    .locals 1
    .param p0, "system"    # Z

    .prologue
    const/4 v0, 0x1

    .line 217
    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    .line 218
    if-eqz p0, :cond_0

    .line 219
    sput-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    .line 216
    :cond_0
    return-void
.end method

.method public static dumpProfileData([BLjava/io/FileDescriptor;)V
    .locals 0
    .param p0, "data"    # [B
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 299
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nDumpProfileData([BLjava/io/FileDescriptor;)V

    .line 298
    return-void
.end method

.method public static enableForegroundTrimming()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    .line 231
    return-void
.end method

.method static invokeFunctor(JZ)V
    .locals 0
    .param p0, "functor"    # J
    .param p2, "waitForCompletion"    # Z

    .prologue
    .line 839
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nInvokeFunctor(JZ)V

    .line 838
    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Landroid/view/DisplayListCanvas;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private static native nAddFrameMetricsObserver(JLandroid/view/FrameMetricsObserver;)J
.end method

.method private static native nAddRenderNode(JJZ)V
.end method

.method private static native nBuildLayer(JJ)V
.end method

.method private static native nCancelLayerUpdate(JJ)V
.end method

.method private static native nCopyLayerInto(JJLandroid/graphics/Bitmap;)Z
.end method

.method private static native nCopySurfaceInto(Landroid/view/Surface;Landroid/graphics/Bitmap;)I
.end method

.method private static native nCreateProxy(ZJZ)J
.end method

.method private static native nCreateRootRenderNode()J
.end method

.method private static native nCreateTextureLayer(J)J
.end method

.method private static native nDeleteProxy(J)V
.end method

.method private static native nDestroy(JJ)V
.end method

.method private static native nDestroyHardwareResources(J)V
.end method

.method private static native nDetachSurfaceTexture(JJ)V
.end method

.method private static native nDrawRenderNode(JJ)V
.end method

.method private static native nDumpProfileData([BLjava/io/FileDescriptor;)V
.end method

.method private static native nDumpProfileInfo(JLjava/io/FileDescriptor;I)V
.end method

.method private static native nFence(J)V
.end method

.method private static native nGetRenderThreadTid(J)I
.end method

.method private static native nInitialize(JLandroid/view/Surface;)V
.end method

.method private static native nInvokeFunctor(JZ)V
.end method

.method private static native nLoadSystemProperties(J)Z
.end method

.method private static native nNotifyFramePending(J)V
.end method

.method private static native nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nPauseSurface(JLandroid/view/Surface;)Z
.end method

.method private static native nPushLayerUpdate(JJ)V
.end method

.method private static native nRegisterAnimatingRenderNode(JJ)V
.end method

.method private static native nRemoveFrameMetricsObserver(JJ)V
.end method

.method private static native nRemoveRenderNode(JJ)V
.end method

.method private static native nSerializeDisplayListTree(J)V
.end method

.method private static native nSetAtlas(JLandroid/view/GraphicBuffer;[J)V
.end method

.method private static native nSetContentDrawBounds(JIIII)V
.end method

.method private static native nSetLightCenter(JFFF)V
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetOpaque(JZ)V
.end method

.method private static native nSetProcessStatsBuffer(JI)V
.end method

.method private static native nSetStopped(JZ)V
.end method

.method private static native nSetup(JIIFII)V
.end method

.method private static native nStopDrawing(J)V
.end method

.method private static native nSyncAndDrawFrame(J[JI)I
.end method

.method private static native nTrimMemory(I)V
.end method

.method private static native nUpdateHwuiCacheSize(II)V
.end method

.method private static native nUpdateSurface(JLandroid/view/Surface;)V
.end method

.method public static overrideProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 292
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name and value must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_1
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 255
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ThreadedRenderer;->setupShadersDiskCache(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method static native setupShadersDiskCache(Ljava/lang/String;)V
.end method

.method public static trimMemory(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 288
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nTrimMemory(I)V

    .line 287
    return-void
.end method

.method private updateEnabledState(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 451
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 450
    :goto_0
    return-void

    .line 452
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static updateHwuiCacheSize(II)V
    .locals 0
    .param p0, "cacheType"    # I
    .param p1, "value"    # I

    .prologue
    .line 309
    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nUpdateHwuiCacheSize(II)V

    .line 308
    return-void
.end method

.method private updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callbacks"    # Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;

    .prologue
    const-wide/16 v6, 0x8

    .line 697
    const-string/jumbo v2, "Record View#draw()"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 698
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateViewTreeDisplayList(Landroid/view/View;)V

    .line 700
    iget-boolean v2, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v2}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 696
    return-void

    .line 701
    :cond_0
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v0

    .line 703
    .local v0, "canvas":Landroid/view/DisplayListCanvas;
    :try_start_0
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->save()I

    move-result v1

    .line 704
    .local v1, "saveCount":I
    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    int-to-float v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 705
    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/view/DisplayListCanvas;)V

    .line 707
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertReorderBarrier()V

    .line 708
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 709
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertInorderBarrier()V

    .line 711
    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/DisplayListCanvas;)V

    .line 712
    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->restoreToCount(I)V

    .line 713
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    goto :goto_0

    .line 714
    .end local v1    # "saveCount":I
    :catchall_0
    move-exception v2

    .line 715
    iget-object v3, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v3, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 714
    throw v2
.end method

.method private updateViewTreeDisplayList(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    .line 688
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 689
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 691
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 692
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    .line 693
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 687
    return-void

    :cond_0
    move v0, v1

    .line 689
    goto :goto_0
.end method


# virtual methods
.method addFrameMetricsObserver(Landroid/view/FrameMetricsObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/view/FrameMetricsObserver;

    .prologue
    .line 1014
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3, p1}, Landroid/view/ThreadedRenderer;->nAddFrameMetricsObserver(JLandroid/view/FrameMetricsObserver;)J

    move-result-wide v0

    .line 1015
    .local v0, "nativeObserver":J
    new-instance v2, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v2, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1013
    return-void
.end method

.method public addRenderNode(Landroid/view/RenderNode;Z)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;
    .param p2, "placeFront"    # Z

    .prologue
    .line 729
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/ThreadedRenderer;->nAddRenderNode(JJZ)V

    .line 728
    return-void
.end method

.method buildLayer(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;

    .prologue
    .line 855
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nBuildLayer(JJ)V

    .line 854
    return-void
.end method

.method copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "layer"    # Landroid/view/HardwareLayer;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 860
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 861
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    .line 860
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/ThreadedRenderer;->nCopyLayerInto(JJLandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method createTextureLayer()Landroid/view/HardwareLayer;
    .locals 4

    .prologue
    .line 849
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->nCreateTextureLayer(J)J

    move-result-wide v0

    .line 850
    .local v0, "layer":J
    invoke-static {p0, v0, v1}, Landroid/view/HardwareLayer;->adoptTextureLayer(Landroid/view/ThreadedRenderer;J)Landroid/view/HardwareLayer;

    move-result-object v2

    return-object v2
.end method

.method destroy()V
    .locals 4

    .prologue
    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 409
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v2, v2, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nDestroy(JJ)V

    .line 406
    return-void
.end method

.method destroyHardwareResources(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 539
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    .line 540
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDestroyHardwareResources(J)V

    .line 538
    return-void
.end method

.method detachSurfaceTexture(J)V
    .locals 3
    .param p1, "hardwareLayer"    # J

    .prologue
    .line 571
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/ThreadedRenderer;->nDetachSurfaceTexture(JJ)V

    .line 570
    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "callbacks"    # Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 801
    const/4 v5, 0x1

    iput-boolean v5, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 803
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v5, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 804
    .local v0, "choreographer":Landroid/view/Choreographer;
    iget-object v5, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v5}, Landroid/view/FrameInfo;->markDrawStart()V

    .line 806
    invoke-direct {p0, p1, p3}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$HardwareDrawCallbacks;)V

    .line 808
    iput-boolean v8, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 812
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 813
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 814
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 816
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/RenderNode;

    .line 815
    invoke-virtual {p0, v5}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 814
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 818
    :cond_0
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 821
    iput-object v6, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 824
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_1
    iget-object v5, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    iget-object v2, v5, Landroid/view/FrameInfo;->mFrameInfo:[J

    .line 825
    .local v2, "frameInfo":[J
    iget-wide v6, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    array-length v5, v2

    invoke-static {v6, v7, v2, v5}, Landroid/view/ThreadedRenderer;->nSyncAndDrawFrame(J[JI)I

    move-result v4

    .line 826
    .local v4, "syncResult":I
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_2

    .line 827
    invoke-virtual {p0, v8}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 828
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    .line 831
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 833
    :cond_2
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_3

    .line 834
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 800
    :cond_3
    return-void
.end method

.method public drawRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;

    .prologue
    .line 746
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nDrawRenderNode(JJ)V

    .line 745
    return-void
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 657
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, "flags":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_2

    .line 660
    aget-object v2, p3, v1

    const-string/jumbo v3, "framestats"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 662
    or-int/lit8 v0, v0, 0x1

    .line 659
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    :cond_1
    const-string/jumbo v3, "reset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    or-int/lit8 v0, v0, 0x2

    .line 666
    goto :goto_1

    .line 669
    :cond_2
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3, p2, v0}, Landroid/view/ThreadedRenderer;->nDumpProfileInfo(JLjava/io/FileDescriptor;I)V

    .line 656
    return-void
.end method

.method fence()V
    .locals 2

    .prologue
    .line 895
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nFence(J)V

    .line 894
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 931
    :try_start_0
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDeleteProxy(J)V

    .line 932
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 929
    return-void

    .line 933
    :catchall_0
    move-exception v0

    .line 934
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 933
    throw v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    return v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    return v0
.end method

.method initialize(Landroid/view/Surface;)Z
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 466
    iget-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 467
    .local v0, "status":Z
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 468
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 469
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3, p1}, Landroid/view/ThreadedRenderer;->nInitialize(JLandroid/view/Surface;)V

    .line 470
    return v0

    .line 466
    .end local v0    # "status":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "status":Z
    goto :goto_0
.end method

.method initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p4, "surface"    # Landroid/view/Surface;
    .param p5, "surfaceInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p0, p4}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 496
    const/4 v0, 0x1

    return v0

    .line 500
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method invalidate(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V

    .line 562
    return-void
.end method

.method invalidateRoot()V
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    .line 789
    return-void
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    return v0
.end method

.method isRequested()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    return v0
.end method

.method loadSystemProperties()Z
    .locals 4

    .prologue
    .line 680
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->nLoadSystemProperties(J)Z

    move-result v0

    .line 681
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 684
    :cond_0
    return v0
.end method

.method public notifyFramePending()V
    .locals 2

    .prologue
    .line 912
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nNotifyFramePending(J)V

    .line 911
    return-void
.end method

.method onLayerDestroyed(Landroid/view/HardwareLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 879
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nCancelLayerUpdate(JJ)V

    .line 878
    return-void
.end method

.method pauseSurface(Landroid/view/Surface;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 521
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nPauseSurface(JLandroid/view/Surface;)Z

    move-result v0

    return v0
.end method

.method pushLayerUpdate(Landroid/view/HardwareLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 871
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nPushLayerUpdate(JJ)V

    .line 870
    return-void
.end method

.method registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "animator"    # Landroid/view/RenderNode;

    .prologue
    .line 917
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRegisterAnimatingRenderNode(JJ)V

    .line 916
    return-void
.end method

.method removeFrameMetricsObserver(Landroid/view/FrameMetricsObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/view/FrameMetricsObserver;

    .prologue
    .line 1019
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-object v2, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRemoveFrameMetricsObserver(JJ)V

    .line 1020
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1018
    return-void
.end method

.method public removeRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;

    .prologue
    .line 737
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRemoveRenderNode(JJ)V

    .line 736
    return-void
.end method

.method public serializeDisplayListTree()V
    .locals 2

    .prologue
    .line 921
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nSerializeDisplayListTree(J)V

    .line 920
    return-void
.end method

.method public setContentDrawBounds(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 759
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ThreadedRenderer;->nSetContentDrawBounds(JIIII)V

    .line 758
    return-void
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 427
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    .line 426
    return-void
.end method

.method setLightCenter(Landroid/view/View$AttachInfo;)V
    .locals 6
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;

    .prologue
    .line 618
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 619
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v3, p1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 620
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 621
    .local v1, "lightX":F
    iget v3, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v4, v4

    sub-float v2, v3, v4

    .line 623
    .local v2, "lightY":F
    iget-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget v3, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    invoke-static {v4, v5, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nSetLightCenter(JFFF)V

    .line 616
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 888
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetName(JLjava/lang/String;)V

    .line 887
    return-void
.end method

.method setOpaque(Z)V
    .locals 4
    .param p1, "opaque"    # Z

    .prologue
    const/4 v0, 0x0

    .line 630
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v2, v3, v0}, Landroid/view/ThreadedRenderer;->nSetOpaque(JZ)V

    .line 629
    return-void

    .line 630
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setRequested(Z)V
    .locals 0
    .param p1, "requested"    # Z

    .prologue
    .line 447
    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    .line 446
    return-void
.end method

.method setStopped(Z)V
    .locals 2
    .param p1, "stopped"    # Z

    .prologue
    .line 529
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetStopped(JZ)V

    .line 528
    return-void
.end method

.method setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p4, "surfaceInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 583
    iput p1, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    .line 584
    iput p2, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    .line 586
    if-eqz p4, :cond_2

    iget v0, p4, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_0

    iget v0, p4, Landroid/graphics/Rect;->right:I

    if-eqz v0, :cond_1

    .line 588
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    .line 589
    iget v0, p4, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 590
    iget v0, p4, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 591
    iget v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    add-int/2addr v0, p1

    iget v1, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 592
    iget v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    add-int/2addr v0, p2

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 595
    invoke-virtual {p0, v2}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    .line 604
    :goto_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 605
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget v2, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    .line 606
    iget v5, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    iget v6, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    .line 605
    invoke-static/range {v0 .. v6}, Landroid/view/ThreadedRenderer;->nSetup(JIIFII)V

    .line 608
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    .line 582
    return-void

    .line 587
    :cond_1
    iget v0, p4, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_0

    .line 597
    :cond_2
    iput-boolean v2, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    .line 598
    iput v2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 599
    iput v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 600
    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 601
    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    goto :goto_0
.end method

.method stopDrawing()V
    .locals 2

    .prologue
    .line 905
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nStopDrawing(J)V

    .line 904
    return-void
.end method

.method updateSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 510
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nUpdateSurface(JLandroid/view/Surface;)V

    .line 508
    return-void
.end method
