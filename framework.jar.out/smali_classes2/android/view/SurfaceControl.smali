.class public Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    }
.end annotation


# static fields
.field public static final BUILT_IN_DISPLAY_ID_EXPANDED:I

.field public static final BUILT_IN_DISPLAY_ID_HDMI:I

.field public static final BUILT_IN_DISPLAY_ID_MAIN:I = 0x0

.field public static final BUILT_IN_DISPLAY_ID_SUB:I

.field public static final BUILT_IN_DISPLAY_ID_TERTIARY:I

.field public static final CURSOR_WINDOW:I = 0x2000

.field public static final FLAG_FIXED_ORIENATION:I = 0x40000000

.field public static final FLAG_TRANSLUCENT_SCREENSHOT:I = 0x20000000

.field public static final FLAG_USAGE_INTERNAL_DISP:I = -0x80000000

.field public static final FX_SURFACE_BLUR:I = 0x80000

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final HIDDEN:I = 0x4

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final NO_REMOTECONTROL:I = 0x8000000

.field public static final OPAQUE:I = 0x400

.field public static final POWER_MODE_DOZE:I = 0x1

.field public static final POWER_MODE_DOZE_SUSPEND:I = 0x3

.field public static final POWER_MODE_NORMAL:I = 0x2

.field public static final POWER_MODE_OFF:I = 0x0

.field public static final PROTECTED_APP:I = 0x800

.field public static final SECURE:I = 0x80

.field private static final SURFACE_HIDDEN:I = 0x1

.field private static final SURFACE_OPAQUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SurfaceControl"

.field private static final mIsDualDisplay:Z


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mName:Ljava/lang/String;

.field mNativeObject:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 300
    sput v1, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_SUB:I

    .line 301
    const/4 v0, 0x1

    sput v0, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_HDMI:I

    .line 302
    const/4 v0, 0x2

    sput v0, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_TERTIARY:I

    .line 303
    sput v1, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_EXPANDED:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .locals 4
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 359
    if-nez p1, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    if-nez p2, :cond_1

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_1
    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_2

    .line 367
    const-string/jumbo v0, "SurfaceControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface\'s properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 367
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    :cond_2
    iput-object p2, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 376
    invoke-static/range {p1 .. p6}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 377
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 378
    new-instance v0, Landroid/view/Surface$OutOfResourcesException;

    .line 379
    const-string/jumbo v1, "Couldn\'t allocate SurfaceControl native object"

    .line 378
    invoke-direct {v0, v1}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_3
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method private checkNotReleased()V
    .locals 4

    .prologue
    .line 440
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    .line 441
    const-string/jumbo v1, "mNativeObject is null. Have you called release() already?"

    .line 440
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    return-void
.end method

.method public static clearAnimationFrameStats()Z
    .locals 1

    .prologue
    .line 537
    invoke-static {}, Landroid/view/SurfaceControl;->nativeClearAnimationFrameStats()Z

    move-result v0

    return v0
.end method

.method public static closeTransaction()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeCloseTransaction(Z)V

    .line 455
    return-void
.end method

.method public static closeTransactionSync()V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeCloseTransaction(Z)V

    .line 459
    return-void
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .prologue
    .line 789
    if-nez p0, :cond_0

    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static createDisplay(Ljava/lang/String;ZI)Landroid/os/IBinder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 796
    if-nez p0, :cond_0

    .line 797
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeCreateDisplayFlags(Ljava/lang/String;ZI)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 803
    if-nez p0, :cond_0

    .line 804
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeDestroyDisplay(Landroid/os/IBinder;)V

    .line 802
    return-void
.end method

.method public static getActiveConfig(Landroid/os/IBinder;)I
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 720
    if-nez p0, :cond_0

    .line 721
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetActiveConfig(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public static getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .locals 1
    .param p0, "outStats"    # Landroid/view/WindowAnimationFrameStats;

    .prologue
    .line 541
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    move-result v0

    return v0
.end method

.method public static getBuiltInDisplay(I)Landroid/os/IBinder;
    .locals 1
    .param p0, "builtInDisplayId"    # I

    .prologue
    .line 810
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 713
    if-nez p0, :cond_0

    .line 714
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 782
    if-nez p0, :cond_0

    .line 783
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    move-result-object v0

    return-object v0
.end method

.method private static getMainDisplayOverride(Landroid/os/IBinder;[I)Landroid/os/IBinder;
    .locals 5
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "size"    # [I

    .prologue
    .line 991
    const-string/jumbo v4, "display"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 992
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    .line 993
    .local v3, "service":Landroid/hardware/display/IDisplayManager;
    if-eqz v3, :cond_0

    .line 995
    :try_start_0
    invoke-interface {v3, p1}, Landroid/hardware/display/IDisplayManager;->getMainDisplayOverride([I)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 996
    .local v1, "d":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 997
    move-object p0, v1

    .line 1002
    .end local v1    # "d":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-object p0

    .line 999
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static maybeRedirected(Landroid/os/IBinder;)Z
    .locals 2
    .param p0, "display"    # Landroid/os/IBinder;

    .prologue
    const/4 v0, 0x0

    .line 986
    const-string/jumbo v1, "sys.vs.mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 987
    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeGetBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    .line 986
    :cond_0
    return v0
.end method

.method private static native nativeClearAnimationFrameStats()Z
.end method

.method private static native nativeClearContentFrameStats(J)Z
.end method

.method private static native nativeCloseTransaction(Z)V
.end method

.method private static native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private static native nativeCreateDisplayFlags(Ljava/lang/String;ZI)Landroid/os/IBinder;
.end method

.method private static native nativeDeferTransactionUntil(JLandroid/os/IBinder;J)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeDestroyDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeDisconnect(J)V
.end method

.method private static native nativeGetActiveConfig(Landroid/os/IBinder;)I
.end method

.method private static native nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native nativeGetBuiltInDisplay(I)Landroid/os/IBinder;
.end method

.method private static native nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
.end method

.method private static native nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
.end method

.method private static native nativeGetHandle(J)Landroid/os/IBinder;
.end method

.method private static native nativeGetHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;
.end method

.method private static native nativeOpenTransaction()V
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
.end method

.method private static native nativeSetActiveConfig(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetAlpha(JF)V
.end method

.method private static native nativeSetAnimationTransaction()V
.end method

.method private static native nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native nativeSetDisplaySize(Landroid/os/IBinder;II)V
.end method

.method private static native nativeSetDisplaySurface(Landroid/os/IBinder;J)V
.end method

.method private static native nativeSetFinalCrop(JIIII)V
.end method

.method private static native nativeSetFlags(JII)V
.end method

.method private static native nativeSetLayer(JI)V
.end method

.method private static native nativeSetLayerStack(JI)V
.end method

.method private static native nativeSetMatrix(JFFFF)V
.end method

.method private static native nativeSetOverrideScalingMode(JI)V
.end method

.method private static native nativeSetPosition(JFF)V
.end method

.method private static native nativeSetPositionAppliesWithResize(J)V
.end method

.method private static native nativeSetSize(JII)V
.end method

.method private static native nativeSetTransparentRegionHint(JLandroid/graphics/Region;)V
.end method

.method private static native nativeSetUserIdToLayer(JI)V
.end method

.method private static native nativeSetUserIdToRecord(Ljava/lang/String;I)V
.end method

.method private static native nativeSetWindowCrop(JIIII)V
.end method

.method private static native nativeStartSurfaceAnimation(J[I)V
.end method

.method public static openTransaction()V
    .locals 0

    .prologue
    .line 451
    invoke-static {}, Landroid/view/SurfaceControl;->nativeOpenTransaction()V

    .line 450
    return-void
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 932
    invoke-static {v4}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 940
    .local v0, "displayToken":Landroid/os/IBinder;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x1

    move v2, p0

    move v3, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I
    .param p5, "useIdentityTransform"    # Z
    .param p6, "rotation"    # I

    .prologue
    .line 898
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 896
    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static screenshot(Landroid/graphics/Rect;IIIIZII)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I
    .param p5, "useIdentityTransform"    # Z
    .param p6, "rotation"    # I
    .param p7, "displayId"    # I

    .prologue
    .line 905
    const/4 v0, 0x0

    .line 906
    .local v0, "displayToken":Landroid/os/IBinder;
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 915
    .local v0, "displayToken":Landroid/os/IBinder;
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    move v8, p6

    .line 914
    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;

    .prologue
    const/4 v3, 0x0

    .line 859
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    move v6, v3

    move v8, v3

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 858
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;II)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 849
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v6, v5

    move v8, v5

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 848
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minLayer"    # I
    .param p5, "maxLayer"    # I
    .param p6, "useIdentityTransform"    # Z

    .prologue
    .line 833
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 834
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    .line 833
    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 832
    return-void
.end method

.method private static screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
    .locals 2
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "sourceCrop"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "minLayer"    # I
    .param p6, "maxLayer"    # I
    .param p7, "allLayers"    # Z
    .param p8, "useIdentityTransform"    # Z

    .prologue
    .line 947
    if-nez p0, :cond_0

    .line 948
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_0
    if-nez p1, :cond_1

    .line 951
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "consumer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_1
    invoke-static/range {p0 .. p8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 946
    return-void
.end method

.method private static screenshotRedirected(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minLayer"    # I
    .param p5, "maxLayer"    # I
    .param p6, "allLayers"    # Z
    .param p7, "useIdentityTransform"    # Z
    .param p8, "rotation"    # I

    .prologue
    .line 1007
    move/from16 v4, p2

    .line 1008
    .local v4, "w":I
    move/from16 v5, p3

    .line 1009
    .local v5, "h":I
    const/4 v2, 0x2

    new-array v14, v2, [I

    .line 1010
    .local v14, "size":[I
    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v14, v3

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v14, v3

    .line 1011
    invoke-static {p0, v14}, Landroid/view/SurfaceControl;->getMainDisplayOverride(Landroid/os/IBinder;[I)Landroid/os/IBinder;

    move-result-object p0

    .line 1012
    const/4 v2, 0x0

    aget v13, v14, v2

    .line 1013
    .local v13, "dw":I
    const/4 v2, 0x1

    aget v12, v14, v2

    .line 1014
    .local v12, "dh":I
    if-ltz v13, :cond_0

    move/from16 v0, p2

    if-le v0, v13, :cond_0

    .line 1015
    move v4, v13

    .line 1017
    :cond_0
    if-ltz v12, :cond_1

    move/from16 v0, p3

    if-le v0, v12, :cond_1

    .line 1018
    move v5, v12

    :cond_1
    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 1020
    invoke-static/range {v2 .. v10}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1021
    .local v11, "b":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_3

    move/from16 v0, p2

    if-ne v4, v0, :cond_2

    move/from16 v0, p3

    if-eq v5, v0, :cond_3

    .line 1022
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v11, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1024
    :cond_3
    return-object v11
.end method

.method public static setActiveConfig(Landroid/os/IBinder;I)Z
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "id"    # I

    .prologue
    .line 727
    if-nez p0, :cond_0

    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveConfig(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method public static setAnimationTransaction()V
    .locals 0

    .prologue
    .line 478
    invoke-static {}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction()V

    .line 477
    return-void
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "layerStack"    # I

    .prologue
    .line 750
    if-nez p0, :cond_0

    .line 751
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V

    .line 749
    return-void
.end method

.method public static setDisplayPowerMode(Landroid/os/IBinder;I)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "mode"    # I

    .prologue
    .line 685
    if-nez p0, :cond_0

    .line 686
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 684
    return-void
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "orientation"    # I
    .param p2, "layerStackRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    .line 735
    if-nez p0, :cond_0

    .line 736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_0
    if-nez p2, :cond_1

    .line 739
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "layerStackRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_1
    if-nez p3, :cond_2

    .line 742
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displayRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_2
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 746
    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v1, p1

    .line 744
    invoke-static/range {v0 .. v9}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V

    .line 734
    return-void
.end method

.method public static setDisplaySize(Landroid/os/IBinder;II)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 771
    if-nez p0, :cond_0

    .line 772
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 775
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeSetDisplaySize(Landroid/os/IBinder;II)V

    .line 770
    return-void
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 757
    if-nez p0, :cond_0

    .line 758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_0
    if-eqz p1, :cond_1

    .line 762
    iget-object v1, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 763
    :try_start_0
    iget-wide v2, p1, Landroid/view/Surface;->mNativeObject:J

    invoke-static {p0, v2, v3}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(Landroid/os/IBinder;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 756
    :goto_0
    return-void

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 766
    :cond_1
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(Landroid/os/IBinder;J)V

    goto :goto_0
.end method

.method public static setUserIdToRecord(Ljava/lang/String;I)V
    .locals 0
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 967
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetUserIdToRecord(Ljava/lang/String;I)V

    .line 966
    return-void
.end method


# virtual methods
.method public clearContentFrameStats()Z
    .locals 2

    .prologue
    .line 527
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 528
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeClearContentFrameStats(J)Z

    move-result v0

    return v0
.end method

.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "handle"    # Landroid/os/IBinder;
    .param p2, "frame"    # J

    .prologue
    .line 464
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeDeferTransactionUntil(JLandroid/os/IBinder;J)V

    .line 463
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 423
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 424
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDestroy(J)V

    .line 425
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 427
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 422
    return-void
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 434
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 435
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDisconnect(J)V

    .line 433
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 388
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 391
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 392
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 386
    return-void

    .line 394
    :catchall_0
    move-exception v0

    .line 395
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 394
    throw v0
.end method

.method public getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .locals 2
    .param p1, "outStats"    # Landroid/view/WindowContentFrameStats;

    .prologue
    .line 532
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 533
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method public getHandle()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 473
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetHandle(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 512
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 513
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v2}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    .line 511
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 410
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 411
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V

    .line 412
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 414
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 409
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 549
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 550
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetAlpha(JF)V

    .line 548
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 569
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 570
    if-eqz p1, :cond_0

    .line 571
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 572
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 571
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetFinalCrop(JIIII)V

    .line 568
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetFinalCrop(JIIII)V

    goto :goto_0
.end method

.method public setLayer(I)V
    .locals 2
    .param p1, "zorder"    # I

    .prologue
    .line 482
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 483
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetLayer(JI)V

    .line 481
    return-void
.end method

.method public setLayerStack(I)V
    .locals 2
    .param p1, "layerStack"    # I

    .prologue
    .line 579
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 580
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetLayerStack(JI)V

    .line 578
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 6
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 554
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 555
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetMatrix(JFFFF)V

    .line 553
    return-void
.end method

.method public setOpaque(Z)V
    .locals 4
    .param p1, "isOpaque"    # Z

    .prologue
    const/4 v3, 0x2

    .line 588
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 589
    if-eqz p1, :cond_0

    .line 590
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v3, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    .line 587
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    goto :goto_0
.end method

.method public setOverrideScalingMode(I)V
    .locals 2
    .param p1, "scalingMode"    # I

    .prologue
    .line 468
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 469
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetOverrideScalingMode(JI)V

    .line 467
    return-void
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const v1, 0x461c4000    # 10000.0f

    .line 487
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 489
    cmpl-float v0, p1, v1

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 490
    :cond_0
    const-string/jumbo v0, "SurfaceControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPosition is wrong x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    :cond_1
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeSetPosition(JFF)V

    .line 486
    return-void
.end method

.method public setPositionAppliesWithResize()V
    .locals 2

    .prologue
    .line 502
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 503
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeSetPositionAppliesWithResize(J)V

    .line 501
    return-void
.end method

.method public setSecure(Z)V
    .locals 4
    .param p1, "isSecure"    # Z

    .prologue
    const/16 v3, 0x80

    .line 601
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 602
    if-eqz p1, :cond_0

    .line 603
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v3, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    .line 600
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 507
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 508
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeSetSize(JII)V

    .line 506
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 522
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 523
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JLandroid/graphics/Region;)V

    .line 521
    return-void
.end method

.method public setUserIdToLayer(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 973
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetUserIdToLayer(JI)V

    .line 972
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 559
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 560
    if-eqz p1, :cond_0

    .line 561
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 562
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 561
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JIIII)V

    .line 558
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JIIII)V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 517
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 518
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    .line 516
    return-void
.end method

.method public startSurfaceAnimation([I)V
    .locals 2
    .param p1, "args"    # [I

    .prologue
    .line 979
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 980
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeStartSurfaceAnimation(J[I)V

    .line 978
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
