.class public final Landroid/hardware/display/DisplayManagerGlobal;
.super Ljava/lang/Object;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EVENT_CONNECTIONSTATUS_CHANGED:I = 0x4

.field public static final EVENT_DISPLAY_ADDED:I = 0x1

.field public static final EVENT_DISPLAY_CHANGED:I = 0x2

.field public static final EVENT_DISPLAY_REMOVED:I = 0x3

.field public static final EVENT_DLNA_CONNECTIONSTATUS_CHANGED:I = 0x7

.field public static final EVENT_QOSLEVEL_CHANGED:I = 0x5

.field public static final EVENT_SCREENSHARING_CONNECTIONSTATUS_CHANGED:I = 0x8

.field public static final EVENT_VOLUME_HWKEY_DOWN:I = 0xa

.field public static final EVENT_VOLUME_HWKEY_UP:I = 0xb

.field public static final EVENT_VOLUME_LEVEL_CHANGED:I = 0x9

.field private static final TAG:Ljava/lang/String; = "DisplayManager"

.field private static final USE_CACHE:Z

.field private static sInstance:Landroid/hardware/display/DisplayManagerGlobal;


# instance fields
.field private mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

.field private final mDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayIdCache:[I

.field private final mDisplayInfoCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayVolumeKeyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayVolumeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDm:Landroid/hardware/display/IDisplayManager;

.field private final mLock:Ljava/lang/Object;

.field private mWifiDisplayScanNestCount:I


# direct methods
.method static synthetic -wrap0(Landroid/hardware/display/DisplayManagerGlobal;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Bundle;
    .param p2, "event"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDeviceEvent(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/hardware/display/DisplayManagerGlobal;II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayEvent(II)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/hardware/display/DisplayManagerGlobal;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Bundle;
    .param p2, "event"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayVolumeEvent(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/hardware/display/DisplayManagerGlobal;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Bundle;
    .param p2, "event"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayVolumeKeyEvent(Landroid/os/Bundle;I)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/display/IDisplayManager;)V
    .locals 1
    .param p1, "dm"    # Landroid/hardware/display/IDisplayManager;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayInfoCache:Landroid/util/SparseArray;

    .line 118
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 117
    return-void
.end method

.method private findDeviceListnerLocked(Landroid/hardware/display/SemDeviceStatusListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/display/SemDeviceStatusListener;

    .prologue
    .line 329
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 330
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 331
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 332
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;->mListener:Landroid/hardware/display/SemDeviceStatusListener;

    if-ne v2, p1, :cond_0

    .line 333
    return v0

    .line 331
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .prologue
    .line 281
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 282
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 283
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-ne v2, p1, :cond_0

    .line 284
    return v0

    .line 282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private findDisplayVolumeKeyListnerLocked(Landroid/hardware/display/SemDisplayVolumeKeyListener;)I
    .locals 5
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .prologue
    .line 432
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 433
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 434
    .local v1, "numListeners":I
    const-string/jumbo v2, "DisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findDisplayVolumeKeyListnerLocked numListeners: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 436
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    if-ne v2, p1, :cond_0

    .line 437
    return v0

    .line 435
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private findDisplayVolumeListnerLocked(Landroid/hardware/display/SemDisplayVolumeListener;)I
    .locals 5
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeListener;

    .prologue
    .line 380
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 381
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 382
    .local v1, "numListeners":I
    const-string/jumbo v2, "DisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findDisplayVolumeListnerLocked numListeners: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 384
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeListener;

    if-ne v2, p1, :cond_0

    .line 385
    return v0

    .line 383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public static getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    .locals 4

    .prologue
    .line 128
    const-class v2, Landroid/hardware/display/DisplayManagerGlobal;

    monitor-enter v2

    .line 129
    :try_start_0
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    if-nez v1, :cond_0

    .line 130
    const-string/jumbo v1, "display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 131
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 132
    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/hardware/display/DisplayManagerGlobal;-><init>(Landroid/hardware/display/IDisplayManager;)V

    sput-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    .line 135
    :cond_0
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private handleDeviceEvent(Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Bundle;
    .param p2, "event"    # I

    .prologue
    .line 474
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 476
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 478
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 479
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;->sendDeviceEvent(Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :cond_0
    monitor-exit v3

    .line 473
    return-void

    .line 474
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleDisplayEvent(II)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .prologue
    .line 457
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 466
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 467
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 468
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->sendDisplayEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 456
    return-void

    .line 457
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleDisplayVolumeEvent(Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Bundle;
    .param p2, "event"    # I

    .prologue
    .line 487
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 489
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 490
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 491
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 492
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->sendDisplayVolumeEvent(Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :cond_0
    monitor-exit v3

    .line 486
    return-void

    .line 487
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleDisplayVolumeKeyEvent(Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Bundle;
    .param p2, "event"    # I

    .prologue
    .line 500
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 502
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 504
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 505
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->sendDisplayVolumeKeyEvent(Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :cond_0
    monitor-exit v3

    .line 499
    return-void

    .line 500
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private registerCallbackIfNeededLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 446
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    if-nez v1, :cond_0

    .line 447
    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    invoke-direct {v1, p0, v2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;)V

    iput-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    .line 449
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_0
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public connectDevice(IILjava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceType"    # I
    .param p2, "connectingMode"    # I
    .param p3, "deviceInstance"    # Ljava/lang/Object;
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 943
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 944
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "device"

    check-cast p3, Landroid/os/Parcelable;

    .end local p3    # "deviceInstance":Ljava/lang/Object;
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 945
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2, p1, p2, v0, p4}, Landroid/hardware/display/IDisplayManager;->connectDevice(IILandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .end local v0    # "b":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 946
    :catch_0
    move-exception v1

    .line 947
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "DisplayManager"

    const-string/jumbo v3, "Failed to connect device."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 542
    if-nez p1, :cond_0

    .line 543
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "deviceAddress must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->connectWifiDisplay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public connectWifiDisplayWithMode(ILjava/lang/String;)V
    .locals 4
    .param p1, "connectingMode"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 577
    if-nez p2, :cond_0

    .line 578
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "deviceAddress must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 582
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManager;->connectWifiDisplayWithMode(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to connect to Wifi display with mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public connectWifiDisplayWithMode(ILjava/lang/String;Z)V
    .locals 4
    .param p1, "connectingMode"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "isPendingRequest"    # Z

    .prologue
    .line 592
    if-nez p2, :cond_0

    .line 593
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "deviceAddress must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 597
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/display/IDisplayManager;->connectWifiDisplayWithModeEx(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to connect to Wifi display with mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public connectWifiDisplayWithPin(Ljava/lang/String;)V
    .locals 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 966
    if-nez p1, :cond_0

    .line 967
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "deviceAddress must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 971
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->connectWifiDisplayWithPin(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    :goto_0
    return-void

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to connect to Wifi display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with PIN."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projection"    # Landroid/media/projection/MediaProjection;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "densityDpi"    # I
    .param p7, "surface"    # Landroid/view/Surface;
    .param p8, "flags"    # I
    .param p9, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p10, "handler"    # Landroid/os/Handler;

    .prologue
    .line 675
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "name must be non-null and non-empty"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 678
    :cond_0
    if-lez p4, :cond_1

    if-gtz p5, :cond_2

    .line 679
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "width, height, and densityDpi must be greater than 0"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 678
    :cond_2
    if-lez p6, :cond_1

    .line 683
    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    invoke-direct {v3, v0, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V

    .line 684
    .local v3, "callbackWrapper":Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    move-result-object v4

    .line 687
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 688
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    .line 687
    invoke-interface/range {v2 .. v11}, Landroid/hardware/display/IDisplayManager;->createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 692
    .local v13, "displayId":I
    if-gez v13, :cond_4

    .line 693
    const-string/jumbo v2, "DisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not create virtual display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v2, 0x0

    return-object v2

    .line 684
    .end local v13    # "displayId":I
    :cond_3
    const/4 v4, 0x0

    .local v4, "projectionToken":Landroid/media/projection/IMediaProjection;
    goto :goto_0

    .line 689
    .end local v4    # "projectionToken":Landroid/media/projection/IMediaProjection;
    :catch_0
    move-exception v14

    .line 690
    .local v14, "ex":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 696
    .end local v14    # "ex":Landroid/os/RemoteException;
    .restart local v13    # "displayId":I
    :cond_4
    invoke-virtual {p0, v13}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v12

    .line 697
    .local v12, "display":Landroid/view/Display;
    if-nez v12, :cond_5

    .line 698
    const-string/jumbo v2, "DisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not obtain display info for newly created virtual display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :try_start_1
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2, v3}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 705
    const/4 v2, 0x0

    return-object v2

    .line 702
    :catch_1
    move-exception v14

    .line 703
    .restart local v14    # "ex":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 707
    .end local v14    # "ex":Landroid/os/RemoteException;
    :cond_5
    new-instance v2, Landroid/hardware/display/VirtualDisplay;

    move-object/from16 v0, p7

    invoke-direct {v2, p0, v12, v3, v0}, Landroid/hardware/display/VirtualDisplay;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    return-object v2
.end method

.method public disconnectDevice(I)V
    .locals 4
    .param p1, "deviceType"    # I

    .prologue
    .line 955
    :try_start_0
    const-string/jumbo v1, "DisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "For Debugging : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->disconnectDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :goto_0
    return-void

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to connect device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disconnectWifiDisplay()V
    .locals 4

    .prologue
    .line 624
    :try_start_0
    const-string/jumbo v1, "DisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "For Debugging : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->disconnectWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public enableWifiDisplay(Ljava/lang/String;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 1107
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->enableWifiDisplayWithParams(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :goto_0
    return-void

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to enableWifiDisplayWithParams"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 1085
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/display/IDisplayManager;->enableWifiDisplayEx(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :goto_0
    return-void

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to enableWifiDisplayEx"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "remoteP2pMacAddr"    # Ljava/lang/String;
    .param p7, "isPendingRequest"    # Z

    .prologue
    .line 1096
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/hardware/display/IDisplayManager;->enableWifiDisplayEx2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :goto_0
    return-void

    .line 1097
    :catch_0
    move-exception v8

    .line 1098
    .local v8, "ex":Landroid/os/RemoteException;
    const-string/jumbo v0, "DisplayManager"

    const-string/jumbo v1, "Fail to enableWifiDisplayEx2"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 645
    if-nez p1, :cond_0

    .line 646
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "deviceAddress must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 650
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->forgetWifiDisplay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveDLNADevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 3

    .prologue
    .line 1285
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getActiveDLNADevice()Landroid/hardware/display/SemDlnaDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to get the active DLNA Device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1288
    const/4 v1, 0x0

    return-object v1
.end method

.method public getActiveDLNAState()I
    .locals 3

    .prologue
    .line 1298
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getActiveDLNAState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to get the active DLNA Device state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1301
    const/4 v1, -0x1

    return v1
.end method

.method public getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "daj"    # Landroid/view/DisplayAdjustments;

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 235
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_0

    .line 236
    return-object v1

    .line 238
    :cond_0
    new-instance v1, Landroid/view/Display;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V

    return-object v1
.end method

.method public getDeviceStatus(I)Ljava/lang/Object;
    .locals 3
    .param p1, "deviceType"    # I

    .prologue
    .line 1177
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->getDeviceStatus(I)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "device"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to get device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1180
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDisplayIds()[I
    .locals 4

    .prologue
    .line 204
    :try_start_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :try_start_1
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2}, Landroid/hardware/display/IDisplayManager;->getDisplayIds()[I

    move-result-object v0

    .line 215
    .local v0, "displayIds":[I
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    .line 216
    return-object v0

    .line 204
    .end local v0    # "displayIds":[I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    .line 148
    :try_start_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2, p1}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 158
    .local v1, "info":Landroid/view/DisplayInfo;
    if-nez v1, :cond_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 159
    return-object v4

    .line 185
    :cond_0
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v3

    .line 190
    return-object v1

    .line 148
    .end local v1    # "info":Landroid/view/DisplayInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getLastConnectedDevice(I)Ljava/lang/Object;
    .locals 3
    .param p1, "deviceType"    # I

    .prologue
    .line 1155
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->getLastConnectedDevice(I)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "device"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to getLastConnectedDevice"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1158
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    .line 1200
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to getLastConnectedDisplay"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1203
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLastConnectedDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 3

    .prologue
    .line 1213
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getLastConnectedDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to getLastConnectedDlnaDevice"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1216
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLastConnectedGCastDevice()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1237
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getLastConnectedGCastDevice()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to getLastConnectedGCastDevice"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1240
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPresentationOwner(I)Ljava/lang/String;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 1321
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->getPresentationOwner(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to get PresentationOwner."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1326
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getRealDisplay(I)Landroid/view/Display;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 248
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSharingStatus()I
    .locals 3

    .prologue
    .line 1261
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getScreenSharingStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to get ScreenSharing status."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1264
    const/4 v1, -0x1

    return v1
.end method

.method public getWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1139
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2, p1}, Landroid/hardware/display/IDisplayManager;->getWifiDisplayConfiguration(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1140
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2, p1}, Landroid/hardware/display/IDisplayManager;->getWifiDisplayConfiguration(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1141
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1143
    .end local v0    # "data":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 1144
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "DisplayManager"

    const-string/jumbo v3, "Fail to getWifiDisplayConfiguration"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1145
    return-object v4

    .line 1148
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 2

    .prologue
    .line 658
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isConnWithPinSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1040
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->isConnWithPinSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to get dongle pin supported feature Wifi display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    const/4 v1, 0x0

    return v1
.end method

.method public isDongleRenameAvailable()Z
    .locals 3

    .prologue
    .line 1052
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->isDongleRenameAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to get dongle rename feature Wifi display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1055
    const/4 v1, 0x0

    return v1
.end method

.method public isKDDIServiceConnected()Z
    .locals 3

    .prologue
    .line 1004
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->isKDDIServiceConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to isKDDIServiceConnected for Wifi display."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1007
    const/4 v1, 0x0

    return v1
.end method

.method public isSinkAvailable()Z
    .locals 3

    .prologue
    .line 1016
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->isSinkAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to isSinkAvailable for Wifi display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    const/4 v1, 0x0

    return v1
.end method

.method public isSourceAvailable()Z
    .locals 3

    .prologue
    .line 1028
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->isSourceAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to isSourceAvailable for WIfi display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1031
    const/4 v1, 0x0

    return v1
.end method

.method public isWfdEngineRunning()Z
    .locals 3

    .prologue
    .line 991
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->isWfdEngineRunning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to isWfdEngineRunning for Wifi display."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 994
    const/4 v1, 0x0

    return v1
.end method

.method public pauseWifiDisplay()V
    .locals 2

    .prologue
    .line 607
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->pauseWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/SemDeviceStatusListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 293
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 294
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "registerDeviceListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-nez p1, :cond_0

    .line 296
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 300
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDeviceListnerLocked(Landroid/hardware/display/SemDeviceStatusListener;)I

    move-result v0

    .line 301
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 302
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v3, "registerDeviceListener index < 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;-><init>(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 291
    .end local v0    # "index":I
    :cond_2
    return-void

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 257
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    move-result v0

    .line 258
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 259
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;-><init>(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 251
    return-void

    .line 256
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 394
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 395
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "registerDisplayVolumeKeyListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    if-nez p1, :cond_0

    .line 397
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 401
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeKeyListnerLocked(Landroid/hardware/display/SemDisplayVolumeKeyListener;)I

    move-result v0

    .line 402
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 403
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v3, "registerDisplayVolumeKeyListener index < 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;-><init>(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 392
    .end local v0    # "index":I
    :cond_2
    return-void

    .line 400
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 342
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 343
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "registerDisplayVolumeListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 349
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeListnerLocked(Landroid/hardware/display/SemDisplayVolumeListener;)I

    move-result v0

    .line 350
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 351
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v3, "registerDisplayVolumeListener index < 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;-><init>(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 340
    .end local v0    # "index":I
    :cond_2
    return-void

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .locals 2
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;

    .prologue
    .line 737
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeLastConnectedDevice(I)V
    .locals 3
    .param p1, "deviceType"    # I

    .prologue
    .line 1167
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->removeLastConnectedDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    :goto_0
    return-void

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to removeLastConnectedDevice"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeLastConnectedDlnaDevice()V
    .locals 3

    .prologue
    .line 1226
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->removeLastConnectedDlnaDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    :goto_0
    return-void

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to removeLastConnectedDlnaDevice"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeLastConnectedGCastDevice()V
    .locals 3

    .prologue
    .line 1250
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->removeLastConnectedGCastDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :goto_0
    return-void

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to removeLastConnectedGCastDevice"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public renameDongle(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 1064
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->renameDongle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to rename dongle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 633
    if-nez p1, :cond_0

    .line 634
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "deviceAddress must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 638
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManager;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestColorTransform(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "colorTransformId"    # I

    .prologue
    .line 666
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManager;->requestColorTransform(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .locals 2
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .prologue
    .line 729
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/display/IDisplayManager;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public restartWifiDisplay()V
    .locals 3

    .prologue
    .line 981
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->restartWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :goto_0
    return-void

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to restart Wifi display."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resumeWifiDisplay()V
    .locals 2

    .prologue
    .line 615
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->resumeWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public scanWifiDisplays()V
    .locals 3

    .prologue
    .line 557
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->scanWifiDisplays()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to scan for Wifi displays."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveDlnaState(Landroid/hardware/display/SemDlnaDevice;I)V
    .locals 4
    .param p1, "device"    # Landroid/hardware/display/SemDlnaDevice;
    .param p2, "state"    # I

    .prologue
    .line 1309
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 1311
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2, v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setActiveDlnaState(Landroid/os/IBinder;Landroid/hardware/display/SemDlnaDevice;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :goto_0
    return-void

    .line 1312
    :catch_0
    move-exception v1

    .line 1313
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "DisplayManager"

    const-string/jumbo v3, "Failed to set dlna state."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setExtendMode(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 1189
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->setExtendMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    :goto_0
    return-void

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to set extended mode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScanningChannel(I)V
    .locals 3
    .param p1, "requestedChannel"    # I

    .prologue
    .line 1074
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->setScanningChannel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    :goto_0
    return-void

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to rename dongle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScreenSharingStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 1274
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->setScreenSharingStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :goto_0
    return-void

    .line 1275
    :catch_0
    move-exception v0

    .line 1276
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Fail to set ScreenSharing status."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVirtualDisplayFixedOrientation(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    .locals 3
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "orientation"    # I

    .prologue
    .line 720
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManager;->setVirtualDisplayFixedOrientation(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to set the fixedOrientation of virtual display."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 2
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 712
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManager;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1117
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1118
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1121
    const-string/jumbo v2, "value"

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1127
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2, v0}, Landroid/hardware/display/IDisplayManager;->setWifiDisplayConfiguration(Landroid/os/Bundle;)I

    move-result v2

    return v2

    .line 1122
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 1123
    const-string/jumbo v2, "value"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1128
    .end local v0    # "data":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 1129
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "DisplayManager"

    const-string/jumbo v3, "Fail to setWifiDisplayConfiguration"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1130
    const/4 v2, -0x1

    return v2

    .line 1124
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "data":Landroid/os/Bundle;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1125
    const-string/jumbo v2, "value"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public startWifiDisplayScan()V
    .locals 4

    .prologue
    .line 513
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 514
    :try_start_0
    iget v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    if-nez v1, :cond_0

    .line 515
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->startWifiDisplayScan()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v2

    .line 512
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopScanWifiDisplays()V
    .locals 3

    .prologue
    .line 567
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->stopScanWifiDisplays()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "Failed to stop scan for Wifi displays."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopWifiDisplayScan()V
    .locals 5

    .prologue
    .line 526
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 527
    :try_start_0
    iget v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 529
    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->stopWifiDisplayScan()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 525
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 533
    :cond_1
    :try_start_3
    iget v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    if-gez v1, :cond_0

    .line 534
    const-string/jumbo v1, "DisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wifi display scan nest count became negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 535
    iget v4, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I

    .line 534
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayScanNestCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public unregisterDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/SemDeviceStatusListener;

    .prologue
    .line 312
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 313
    if-nez p1, :cond_0

    .line 314
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 318
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDeviceListnerLocked(Landroid/hardware/display/SemDeviceStatusListener;)I

    move-result v1

    .line 319
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 320
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    .line 321
    .local v0, "d":Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;->clearEvents()V

    .line 322
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "d":Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;
    :cond_1
    monitor-exit v3

    .line 310
    .end local v1    # "index":I
    :cond_2
    return-void

    .line 317
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 271
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    move-result v1

    .line 272
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 273
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    .line 274
    .local v0, "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->clearEvents()V

    .line 275
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    :cond_1
    monitor-exit v3

    .line 265
    return-void

    .line 270
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unregisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .prologue
    .line 413
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 414
    const-string/jumbo v2, "DisplayManager"

    const-string/jumbo v3, "unregisterDisplayVolumeKeyListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-nez p1, :cond_0

    .line 416
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 420
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeKeyListnerLocked(Landroid/hardware/display/SemDisplayVolumeKeyListener;)I

    move-result v1

    .line 421
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 422
    const-string/jumbo v2, "DisplayManager"

    const-string/jumbo v4, "unregisterDisplayVolumeKeyListener index >= 0"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    .line 424
    .local v0, "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->clearEvents()V

    .line 425
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 411
    .end local v0    # "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;
    .end local v1    # "index":I
    :cond_2
    return-void

    .line 419
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unregisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeListener;

    .prologue
    .line 361
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 362
    const-string/jumbo v2, "DisplayManager"

    const-string/jumbo v3, "unregisterDisplayVolumeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-nez p1, :cond_0

    .line 364
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :cond_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 368
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeListnerLocked(Landroid/hardware/display/SemDisplayVolumeListener;)I

    move-result v1

    .line 369
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 370
    const-string/jumbo v2, "DisplayManager"

    const-string/jumbo v4, "unregisterDisplayVolumeListener index >= 0"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    .line 372
    .local v0, "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->clearEvents()V

    .line 373
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 359
    .end local v0    # "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;
    .end local v1    # "index":I
    :cond_2
    return-void

    .line 367
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
