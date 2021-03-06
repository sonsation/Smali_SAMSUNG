.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$BaseEventQueue;,
        Landroid/hardware/SystemSensorManager$InjectEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    }
.end annotation


# static fields
.field private static DEBUG_DYNAMIC_SENSOR:Z = false

.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field private static IS_DEBUG:Z

.field private static sConnectionCount:I

.field private static sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sNativeClassInited:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# instance fields
.field private final MAX_CONNECTION_COUNT:I

.field private final mContext:Landroid/content/Context;

.field private mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDynamicSensorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorManager$DynamicSensorCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicSensorListDirty:Z

.field private mFullDynamicSensorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandleToSensor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private final mNativeInstance:J

.field private final mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkLevel:I

.field private final mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    return v0
.end method

.method static synthetic -get1(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/SystemSensorManager;)J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    return-wide v0
.end method

.method static synthetic -get4(Landroid/hardware/SystemSensorManager;)I
    .locals 1

    iget v0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return v0
.end method

.method static synthetic -set0(Landroid/hardware/SystemSensorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/hardware/SystemSensorManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    .line 69
    sput-boolean v1, Landroid/hardware/SystemSensorManager;->IS_DEBUG:Z

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    .line 74
    sput-boolean v1, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 76
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 102
    sput v1, Landroid/hardware/SystemSensorManager;->sConnectionCount:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v5, 0x1

    .line 105
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 78
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 80
    iput-boolean v5, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 82
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    .line 86
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 85
    iput-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 88
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 87
    iput-object v4, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 92
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    .line 101
    const/16 v4, 0xc8

    iput v4, p0, Landroid/hardware/SystemSensorManager;->MAX_CONNECTION_COUNT:I

    .line 106
    sget-object v5, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 107
    :try_start_0
    sget-boolean v4, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    if-nez v4, :cond_0

    .line 108
    const/4 v4, 0x1

    sput-boolean v4, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 109
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v5

    .line 113
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v4, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 115
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 119
    const/4 v2, 0x0

    .line 121
    .local v2, "knoxCustomSensorDisabled":I
    invoke-static {}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getInstance()Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;

    move-result-object v0

    .line 122
    .local v0, "customDeviceManager":Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getSensorDisabled()I

    move-result v2

    .line 129
    :cond_1
    const/4 v1, 0x0

    .line 130
    .local v1, "index":I
    :goto_0
    new-instance v3, Landroid/hardware/Sensor;

    invoke-direct {v3}, Landroid/hardware/Sensor;-><init>()V

    .line 131
    .local v3, "sensor":Landroid/hardware/Sensor;
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v4, v5, v3, v1}, Landroid/hardware/SystemSensorManager;->nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 143
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->isDebug()Z

    move-result v4

    sput-boolean v4, Landroid/hardware/SystemSensorManager;->IS_DEBUG:Z

    .line 105
    return-void

    .line 106
    .end local v0    # "customDeviceManager":Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;
    .end local v1    # "index":I
    .end local v2    # "knoxCustomSensorDisabled":I
    .end local v3    # "sensor":Landroid/hardware/Sensor;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 133
    .restart local v0    # "customDeviceManager":Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;
    .restart local v1    # "index":I
    .restart local v2    # "knoxCustomSensorDisabled":I
    .restart local v3    # "sensor":Landroid/hardware/Sensor;
    :cond_2
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/hardware/SystemSensorManager;->getKnoxCustomSensorMask(I)I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_3

    .line 134
    const-string/jumbo v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "disable the sensor index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_3
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected static EncodeLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 968
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 970
    :cond_0
    const-string/jumbo v0, " "

    return-object v0
.end method

.method private cleanupSensorConnection(Landroid/hardware/Sensor;)V
    .locals 7
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 411
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 414
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 415
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/TriggerEventListener;

    .line 416
    .local v1, "l":Landroid/hardware/TriggerEventListener;
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    if-eqz v3, :cond_0

    .line 417
    const-string/jumbo v3, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed trigger listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/TriggerEventListener;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 418
    const-string/jumbo v6, " due to sensor disconnection"

    .line 417
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v1, p1, v3}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 414
    .end local v1    # "l":Landroid/hardware/TriggerEventListener;
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 410
    return-void

    .line 424
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 425
    :try_start_1
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEventListener;

    .line 426
    .local v0, "l":Landroid/hardware/SensorEventListener;
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    if-eqz v3, :cond_3

    .line 427
    const-string/jumbo v3, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed event listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 428
    const-string/jumbo v6, " due to sensor disconnection"

    .line 427
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/SystemSensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 424
    .end local v0    # "l":Landroid/hardware/SensorEventListener;
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 556
    .local p0, "oldList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p2, "updated":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p3, "added":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p4, "removed":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .line 558
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .line 560
    .local v2, "j":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 561
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    if-le v4, v3, :cond_2

    .line 562
    :cond_0
    const/4 v0, 0x1

    .line 563
    if-eqz p4, :cond_1

    .line 564
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 561
    goto :goto_0

    .line 567
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 568
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    if-ge v4, v3, :cond_6

    .line 569
    :cond_3
    const/4 v0, 0x1

    .line 570
    if-eqz p3, :cond_4

    .line 571
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_4
    if-eqz p2, :cond_5

    .line 574
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 568
    goto :goto_0

    .line 577
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 578
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    if-ne v4, v3, :cond_8

    .line 579
    if-eqz p2, :cond_7

    .line 580
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 583
    add-int/lit8 v2, v2, 0x1

    .line 578
    goto/16 :goto_0

    .line 588
    :cond_8
    return v0
.end method

.method private static getKnoxCustomSensorMask(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 593
    packed-switch p0, :pswitch_data_0

    .line 611
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 595
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 598
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 600
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 602
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 604
    :pswitch_5
    const/16 v0, 0x10

    return v0

    .line 607
    :pswitch_6
    const/16 v0, 0x20

    return v0

    .line 609
    :pswitch_7
    const/16 v0, 0x40

    return v0

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isDebug()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 975
    const-string/jumbo v3, "ro.debug_level"

    const-string/jumbo v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 976
    .local v2, "state":Ljava/lang/String;
    const/4 v0, -0x1

    .line 979
    .local v0, "debugLevel":I
    :try_start_0
    const-string/jumbo v3, "Unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    .line 980
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 985
    const/16 v3, 0x4f4c

    if-ne v0, v3, :cond_1

    return v5

    .line 981
    :catch_0
    move-exception v1

    .line 982
    .local v1, "ne":Ljava/lang/NumberFormatException;
    return v5

    .line 986
    .end local v1    # "ne":Ljava/lang/NumberFormatException;
    :cond_1
    const/16 v3, 0x494d

    if-eq v0, v3, :cond_2

    const/16 v3, 0x4948

    if-ne v0, v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    return v3

    .line 988
    :cond_3
    return v5
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeCreate(Ljava/lang/String;)J
.end method

.method private static native nativeGetDynamicSensors(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native nativeIsDataInjectionEnabled(J)Z
.end method

.method private setupDynamicSensorBroadcastReceiver()V
    .locals 3

    .prologue
    .line 491
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 492
    new-instance v1, Landroid/hardware/SystemSensorManager$2;

    invoke-direct {v1, p0}, Landroid/hardware/SystemSensorManager$2;-><init>(Landroid/hardware/SystemSensorManager;)V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 506
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "dynamic_sensor_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 490
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private teardownDynamicSensorBroadcastReceiver()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 514
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    return-void
.end method

.method private updateDynamicSensorList()V
    .locals 18

    .prologue
    .line 437
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    monitor-enter v15

    .line 438
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    if-eqz v14, :cond_5

    .line 439
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8}, Landroid/hardware/SystemSensorManager;->nativeGetDynamicSensors(JLjava/util/List;)V

    .line 442
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v13, "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v2, "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v10, "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 446
    invoke-static {v14, v8, v13, v2, v10}, Landroid/hardware/SystemSensorManager;->diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    .line 449
    .local v4, "changed":Z
    if-eqz v4, :cond_4

    .line 450
    sget-boolean v14, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    if-eqz v14, :cond_0

    .line 451
    const-string/jumbo v14, "SensorManager"

    const-string/jumbo v16, "DYNS dynamic sensor list cached should be updated"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 455
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Sensor;

    .line 456
    .local v11, "s":Landroid/hardware/Sensor;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getHandle()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 437
    .end local v2    # "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "changed":Z
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v10    # "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v11    # "s":Landroid/hardware/Sensor;
    .end local v12    # "s$iterator":Ljava/util/Iterator;
    .end local v13    # "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 459
    .restart local v2    # "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v4    # "changed":Z
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v10    # "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v12    # "s$iterator":Ljava/util/Iterator;
    .restart local v13    # "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_1
    :try_start_1
    new-instance v9, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v9, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 462
    .local v9, "mainHandler":Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    .line 461
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 463
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 465
    .local v3, "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_2

    move-object v7, v9

    .line 467
    .local v7, "handler":Landroid/os/Handler;
    :goto_2
    new-instance v14, Landroid/hardware/SystemSensorManager$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2, v3, v10}, Landroid/hardware/SystemSensorManager$1;-><init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V

    invoke-virtual {v7, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 465
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Handler;

    .restart local v7    # "handler":Landroid/os/Handler;
    goto :goto_2

    .line 480
    .end local v3    # "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_3
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Sensor;

    .line 481
    .restart local v11    # "s":Landroid/hardware/Sensor;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/hardware/SystemSensorManager;->cleanupSensorConnection(Landroid/hardware/Sensor;)V

    goto :goto_3

    .line 485
    .end local v6    # "entry$iterator":Ljava/util/Iterator;
    .end local v9    # "mainHandler":Landroid/os/Handler;
    .end local v11    # "s":Landroid/hardware/Sensor;
    .end local v12    # "s$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "changed":Z
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v10    # "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v13    # "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_5
    monitor-exit v15

    .line 436
    return-void
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 317
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 318
    return v5

    .line 322
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "strlistener":Ljava/lang/String;
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 326
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 327
    .local v0, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v0, :cond_5

    .line 329
    if-nez p2, :cond_3

    .line 330
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    move-result v1

    .line 334
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 335
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z

    move-result v3

    if-nez v3, :cond_1

    .line 336
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 341
    :cond_1
    if-eqz p2, :cond_4

    .line 342
    const-string/jumbo v3, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cancelTrigger :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit v4

    .line 348
    return v1

    .line 332
    .end local v1    # "result":Z
    :cond_3
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_0

    .line 344
    :cond_4
    const-string/jumbo v3, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cancelTrigger :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 325
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_5
    monitor-exit v4

    .line 350
    return v5
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v1, 0x0

    .line 355
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 358
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v0, :cond_1

    monitor-exit v2

    .line 360
    return v1

    .line 362
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v2

    return v1

    .line 357
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected getFullDynamicSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 160
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    .line 161
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    return-object v0
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected initDataInjectionImpl(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 368
    sget-object v2, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 369
    if-eqz p1, :cond_2

    .line 370
    :try_start_0
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v4, v5}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    move-result v0

    .line 372
    .local v0, "isDataInjectionModeEnabled":Z
    if-nez v0, :cond_0

    .line 373
    const-string/jumbo v1, "SensorManager"

    const-string/jumbo v3, "Data Injection mode not enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 377
    :cond_0
    :try_start_1
    sget-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-nez v1, :cond_1

    .line 378
    new-instance v1, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 379
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-direct {v1, p0, v3, p0, v4}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    sput-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    .end local v0    # "isDataInjectionModeEnabled":Z
    :cond_1
    :goto_0
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 383
    :cond_2
    :try_start_2
    sget-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz v1, :cond_1

    .line 384
    sget-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 385
    const/4 v1, 0x0

    sput-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .locals 10
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v7, 0x0

    .line 394
    sget-object v8, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 395
    :try_start_0
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-nez v0, :cond_0

    .line 396
    const-string/jumbo v0, "SensorManager"

    const-string/jumbo v1, "Data injection mode not activated before calling injectSensorData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 397
    return v7

    .line 399
    :cond_0
    :try_start_1
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorData(I[FIJ)I

    move-result v6

    .line 402
    .local v6, "ret":I
    if-eqz v6, :cond_1

    .line 403
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 404
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    :cond_1
    if-nez v6, :cond_2

    const/4 v0, 0x1

    :goto_0
    monitor-exit v8

    return v0

    :cond_2
    move v0, v7

    goto :goto_0

    .line 394
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method protected registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 521
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    if-eqz v0, :cond_0

    .line 522
    const-string/jumbo v0, "SensorManager"

    const-string/jumbo v1, "DYNS Register dynamic sensor callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    if-nez p1, :cond_1

    .line 526
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    return-void

    .line 533
    :cond_2
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 534
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    return-void
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 9
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxBatchReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I

    .prologue
    const/4 v8, 0x0

    .line 168
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 169
    :cond_0
    const-string/jumbo v4, "SensorManager"

    const-string/jumbo v5, "sensor or listener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v8

    .line 173
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 174
    const-string/jumbo v4, "SensorManager"

    const-string/jumbo v5, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v8

    .line 177
    :cond_2
    if-ltz p5, :cond_3

    if-gez p3, :cond_4

    .line 178
    :cond_3
    const-string/jumbo v4, "SensorManager"

    const-string/jumbo v5, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v8

    .line 182
    :cond_4
    sget v4, Landroid/hardware/SystemSensorManager;->sConnectionCount:I

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_5

    .line 183
    const-string/jumbo v4, "SensorManager"

    const-string/jumbo v5, "Application registers too many listeners."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v8

    .line 192
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/SystemSensorManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "strlistener":Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v5

    .line 196
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 197
    .local v2, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v2, :cond_a

    .line 198
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 199
    .local v1, "looper":Landroid/os/Looper;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "fullClassName":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-direct {v2, p1, v1, p0, v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 203
    .restart local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v4

    if-nez v4, :cond_8

    .line 204
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 206
    const-string/jumbo v4, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerListener fail :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 208
    return v8

    .line 198
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_6
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .restart local v1    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 201
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fullClassName":Ljava/lang/String;
    goto :goto_1

    .line 210
    :cond_8
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget v4, Landroid/hardware/SystemSensorManager;->sConnectionCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Landroid/hardware/SystemSensorManager;->sConnectionCount:I

    .line 221
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_9
    const-string/jumbo v4, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerListener :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    const/4 v4, 0x1

    monitor-exit v5

    return v4

    .line 213
    :cond_a
    :try_start_2
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v4

    if-nez v4, :cond_9

    .line 215
    const-string/jumbo v4, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerListener fail :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 217
    return v8

    .line 195
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 8
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    const/4 v7, 0x0

    .line 270
    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sensor cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 272
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "listener cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 274
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    return v7

    .line 277
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "strlistener":Ljava/lang/String;
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 281
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 282
    .local v1, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v1, :cond_6

    .line 283
    invoke-virtual {p1}, Landroid/hardware/TriggerEventListener;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 284
    invoke-virtual {p1}, Landroid/hardware/TriggerEventListener;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "fullClassName":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v1, p1, v3, p0, v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 287
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p2, v3, v5}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 288
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 291
    const-string/jumbo v3, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestTrigger :: fail, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 294
    return v7

    .line 285
    .end local v0    # "fullClassName":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/TriggerEventListener;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fullClassName":Ljava/lang/String;
    goto :goto_0

    .line 296
    :cond_4
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .end local v0    # "fullClassName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestTrigger :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .line 298
    :cond_6
    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v1, p2, v3, v5}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 300
    const-string/jumbo v3, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestTrigger :: fail, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 302
    return v7

    .line 280
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    .prologue
    .line 540
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    if-eqz v0, :cond_0

    .line 541
    const-string/jumbo v0, "SensorManager"

    const-string/jumbo v1, "Removing dynamic sensor listerner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    return-void
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 232
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 233
    return-void

    .line 237
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "strlistener":Ljava/lang/String;
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 241
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 242
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v0, :cond_2

    .line 244
    if-nez p2, :cond_3

    .line 245
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    move-result v1

    .line 249
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 253
    sget v3, Landroid/hardware/SystemSensorManager;->sConnectionCount:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Landroid/hardware/SystemSensorManager;->sConnectionCount:I

    .line 256
    :cond_1
    if-eqz p2, :cond_4

    .line 257
    const-string/jumbo v3, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterListener :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "result":Z
    :cond_2
    :goto_1
    monitor-exit v4

    .line 230
    return-void

    .line 247
    :cond_3
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v0, p2, v3}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_0

    .line 259
    :cond_4
    const-string/jumbo v3, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterListener ::  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 240
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
