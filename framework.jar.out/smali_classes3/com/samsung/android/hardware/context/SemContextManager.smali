.class public Lcom/samsung/android/hardware/context/SemContextManager;
.super Ljava/lang/Object;
.source "SemContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClientInfo:Ljava/lang/String;

.field private mIsHistoryDataListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private final mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hardware/context/SemContextManager;)Lcom/samsung/android/hardware/context/SemContextListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mIsHistoryDataListener:Lcom/samsung/android/hardware/context/SemContextListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hardware/context/SemContextManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextEvent;)Z
    .locals 1
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->checkHistoryMode(Lcom/samsung/android/hardware/context/SemContextEvent;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 144
    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 145
    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mIsHistoryDataListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    .line 153
    const-string/jumbo v0, "scontext"

    .line 152
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/ISemContextService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 154
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mMainLooper:Landroid/os/Looper;

    .line 151
    return-void
.end method

.method private addListenerAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;
    .locals 1
    .param p1, "service"    # I

    .prologue
    .line 1158
    sparse-switch p1, :sswitch_data_0

    .line 1216
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 1219
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :goto_0
    return-object v0

    .line 1160
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_0
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;-><init>()V

    .line 1161
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1163
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_1
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>()V

    .line 1164
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1166
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_2
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;-><init>()V

    .line 1167
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1169
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_3
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;-><init>()V

    .line 1170
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1172
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_4
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;-><init>()V

    .line 1173
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1175
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_5
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;-><init>()V

    .line 1176
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1178
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_6
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>()V

    .line 1179
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1181
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_7
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;-><init>()V

    .line 1182
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1184
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_8
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;-><init>()V

    .line 1186
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1188
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_9
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>()V

    .line 1189
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1191
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>()V

    .line 1192
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1194
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_b
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;-><init>()V

    .line 1195
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1197
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_c
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;-><init>()V

    .line 1198
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1200
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_d
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;-><init>()V

    .line 1202
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1204
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;-><init>()V

    .line 1205
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1207
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_f
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;-><init>()V

    .line 1208
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1210
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_10
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;-><init>()V

    .line 1211
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1213
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_11
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;-><init>()V

    .line 1214
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 1158
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x6 -> :sswitch_3
        0xc -> :sswitch_4
        0x18 -> :sswitch_5
        0x1b -> :sswitch_6
        0x1c -> :sswitch_7
        0x1e -> :sswitch_8
        0x21 -> :sswitch_9
        0x23 -> :sswitch_a
        0x24 -> :sswitch_b
        0x27 -> :sswitch_c
        0x2f -> :sswitch_d
        0x30 -> :sswitch_f
        0x33 -> :sswitch_e
        0x35 -> :sswitch_10
        0x36 -> :sswitch_11
    .end sparse-switch
.end method

.method private checkHistoryMode(Lcom/samsung/android/hardware/context/SemContextEvent;)Z
    .locals 11
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1223
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1224
    .local v3, "res":Ljava/lang/Boolean;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1225
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v9}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v6

    .line 1226
    .local v6, "type":I
    const-string/jumbo v9, "onSemContextChanged() : event = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    sparse-switch v6, :sswitch_data_0

    .line 1249
    :goto_0
    const-string/jumbo v7, "SemContextManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7

    .line 1229
    :sswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getPedometerContext()Lcom/samsung/android/hardware/context/SemContextPedometer;

    move-result-object v2

    .line 1230
    .local v2, "pedometerContext":Lcom/samsung/android/hardware/context/SemContextPedometer;
    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContextPedometer;->getMode()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    move v7, v8

    goto :goto_1

    .line 1233
    .end local v2    # "pedometerContext":Lcom/samsung/android/hardware/context/SemContextPedometer;
    :sswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getStepLevelMonitorContext()Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;

    move-result-object v5

    .line 1235
    .local v5, "stepLevelMonitorContext":Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;
    invoke-virtual {v5}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;->getMode()I

    move-result v9

    if-ne v9, v7, :cond_1

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_2

    .line 1238
    .end local v5    # "stepLevelMonitorContext":Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;
    :sswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getActivityBatchContext()Lcom/samsung/android/hardware/context/SemContextActivityBatch;

    move-result-object v0

    .line 1240
    .local v0, "activityBatchContext":Lcom/samsung/android/hardware/context/SemContextActivityBatch;
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextActivityBatch;->getMode()I

    move-result v9

    if-ne v9, v7, :cond_2

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_3

    .line 1243
    .end local v0    # "activityBatchContext":Lcom/samsung/android/hardware/context/SemContextActivityBatch;
    :sswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v1

    .line 1244
    .local v1, "autoRotation":Lcom/samsung/android/hardware/context/SemContextAutoRotation;
    const-string/jumbo v7, " Angle : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1227
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_3
        0x1a -> :sswitch_2
        0x21 -> :sswitch_1
    .end sparse-switch
.end method

.method private checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .prologue
    .line 1148
    if-nez p1, :cond_0

    .line 1149
    const-string/jumbo v0, "SemContextManager"

    const-string/jumbo v1, "Listener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v0, 0x0

    return v0

    .line 1152
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    return v0
.end method

.method private getAvailableServiceMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1108
    const/4 v2, 0x0

    .line 1110
    .local v2, "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v3}, Lcom/samsung/android/hardware/context/ISemContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    .end local v2    # "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    return-object v2

    .line 1111
    .restart local v2    # "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 1112
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemContextManager"

    const-string/jumbo v4, "RemoteException in getAvailableServiceMap: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;

    .prologue
    const/4 v4, 0x0

    .line 1124
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1125
    :cond_0
    return-object v4

    .line 1128
    :cond_1
    const/4 v2, 0x0

    .line 1130
    .local v2, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "delegate$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    .line 1131
    .local v0, "delegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->getListener()Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1132
    move-object v2, v0

    .line 1137
    .end local v0    # "delegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    .end local v2    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    :cond_3
    return-object v2
.end method

.method private initializeClientInfo()V
    .locals 1

    .prologue
    .line 1100
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    .line 1099
    return-void
.end method


# virtual methods
.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;II)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 824
    const/4 v0, 0x0

    .line 825
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 826
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(I)V

    .line 830
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    .line 827
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_1
    const/16 v1, 0x21

    if-ne p2, v1, :cond_0

    .line 828
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>(I)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;IIDD)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 801
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(IDD)V

    .line 803
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;IIIII)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 773
    const/4 v0, 0x0

    .line 774
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 775
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    .line 776
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 775
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    .line 778
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 720
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v4

    .line 720
    :cond_0
    return v4

    .line 723
    :cond_1
    if-eq p2, v5, :cond_2

    .line 724
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 733
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v1

    .line 735
    .local v1, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    if-nez v1, :cond_4

    .line 736
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .changeParameters : SemContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return v4

    .line 725
    .end local v1    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    :cond_3
    const/16 v2, 0x21

    if-eq p2, v2, :cond_2

    .line 726
    const/16 v2, 0x23

    if-eq p2, v2, :cond_2

    .line 727
    const/16 v2, 0x27

    if-eq p2, v2, :cond_2

    .line 728
    const/16 v2, 0x2f

    if-eq p2, v2, :cond_2

    .line 729
    const/16 v2, 0x33

    if-eq p2, v2, :cond_2

    .line 730
    const/16 v2, 0x35

    if-eq p2, v2, :cond_2

    .line 731
    const/16 v2, 0x36

    if-eq p2, v2, :cond_2

    .line 750
    return v4

    .line 741
    .restart local v1    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->changeParameters(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 742
    const-string/jumbo v2, "SemContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .changeParameters : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 743
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    .line 742
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :cond_5
    :goto_0
    return v5

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in changeParameters: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFeatureLevel(I)I
    .locals 2
    .param p1, "service"    # I

    .prologue
    .line 960
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 963
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initializeSemContextService(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .prologue
    .line 661
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    .line 662
    :cond_0
    return-void

    .line 664
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v1

    .line 665
    .local v1, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    if-nez v1, :cond_2

    .line 666
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .initializeSemContextService : SemContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 671
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->initializeService(Landroid/os/IBinder;I)V

    .line 672
    const-string/jumbo v2, "SemContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .initializeSemContextService : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 673
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    .line 672
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in initializeSemContextService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAvailableService(I)Z
    .locals 3
    .param p1, "service"    # I

    .prologue
    .line 936
    const/4 v0, 0x0

    .line 937
    .local v0, "res":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 938
    const/4 v1, 0x1

    return v1

    .line 939
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 940
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->getAvailableServiceMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 942
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 943
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 944
    .local v0, "res":Z
    const/16 v1, 0x2f

    if-ne p1, v1, :cond_2

    .line 945
    const-string/jumbo v1, "BCM4773_SLOCATION_CORE"

    const-string/jumbo v2, "ro.gps.chip.vendor.slocation"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 946
    const/4 v0, 0x0

    .line 950
    .end local v0    # "res":Z
    :cond_2
    return v0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .prologue
    .line 166
    invoke-direct {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->addListenerAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v0

    .line 167
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;II)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 389
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;-><init>(I)V

    .line 399
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    .line 390
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_1
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    .line 391
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;-><init>(I)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 392
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_2
    const/16 v1, 0x10

    if-ne p2, v1, :cond_3

    .line 393
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;-><init>(I)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 394
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_3
    const/16 v1, 0x21

    if-ne p2, v1, :cond_4

    .line 395
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>(I)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0

    .line 396
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_4
    const/16 v1, 0x24

    if-ne p2, v1, :cond_0

    .line 397
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;-><init>(I)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIDD)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 526
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>(IDD)V

    .line 528
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;III)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    .line 472
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3, p4}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;-><init>(II)V

    .line 475
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIII)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v4, 0x5dc

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 500
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    .line 503
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIII)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x1c

    if-ne p2, v1, :cond_0

    .line 557
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3, p4, p5, p6}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;-><init>(IIII)V

    .line 559
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;IIIIII)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x18

    if-ne p2, v1, :cond_1

    .line 595
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    .line 599
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    .line 596
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :cond_1
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 597
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>(IIIII)V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILandroid/os/Looper;)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 191
    invoke-direct {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->addListenerAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v0

    .line 192
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 253
    const/16 v1, 0x30

    if-ne p2, v1, :cond_0

    .line 254
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1

    .line 257
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v1

    if-nez v1, :cond_2

    return v4

    .line 257
    :cond_1
    return v4

    .line 260
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v0

    .line 262
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    if-nez v0, :cond_3

    .line 263
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    .end local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;ZLjava/lang/String;)V

    .line 264
    .restart local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->initializeClientInfo()V

    .line 269
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 270
    const-string/jumbo v1, "SemContextManager"

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  .registerListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 272
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 273
    :catch_0
    move-exception v6

    .line 274
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemContextManager"

    const-string/jumbo v2, "RemoteException in registerListener: "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x0

    .line 343
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    .line 343
    :cond_0
    return v4

    .line 346
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v0

    .line 348
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    if-nez v0, :cond_2

    .line 349
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    .end local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;ZLjava/lang/String;)V

    .line 350
    .restart local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->initializeClientInfo()V

    .line 355
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 356
    const-string/jumbo v1, "SemContextManager"

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  .registerListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 358
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 359
    :catch_0
    move-exception v6

    .line 360
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemContextManager"

    const-string/jumbo v2, "RemoteException in registerListener: "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I[I)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_0

    .line 421
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>([I)V

    .line 423
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I[II)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # [I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    const/16 v1, 0x1e

    if-ne p2, v1, :cond_0

    .line 447
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p3, p4}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;-><init>([II)V

    .line 450
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public requestHistoryData(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .prologue
    const/4 v3, 0x0

    .line 887
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 888
    :cond_0
    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    .line 889
    const/16 v1, 0x21

    if-eq p2, v1, :cond_1

    .line 890
    const/16 v1, 0x1a

    if-eq p2, v1, :cond_1

    .line 891
    const-string/jumbo v1, "SemContextManager"

    const-string/jumbo v2, "  .requestHistoryData : This service is not supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void

    .line 895
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->addListenerAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;

    move-result-object v6

    .line 897
    .local v6, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 898
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 897
    :cond_2
    return-void

    .line 900
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v0

    .line 901
    .local v0, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mIsHistoryDataListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 903
    if-nez v0, :cond_4

    .line 904
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    .end local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;-><init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;ZLjava/lang/String;)V

    .line 905
    .restart local v0    # "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextManager;->initializeClientInfo()V

    .line 909
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2, v6}, Lcom/samsung/android/hardware/context/ISemContextService;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)V

    .line 910
    const-string/jumbo v1, "SemContextManager"

    .line 911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  .registerListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 912
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 911
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 910
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :cond_4
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->requestHistoryData(Landroid/os/IBinder;I)V

    .line 920
    const-string/jumbo v1, "SemContextManager"

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  .requestHistoryData : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 922
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 921
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 920
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 886
    :goto_1
    return-void

    .line 913
    :catch_0
    move-exception v7

    .line 914
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemContextManager"

    const-string/jumbo v2, "RemoteException in registerListener: "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 923
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 924
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemContextManager"

    const-string/jumbo v2, "RemoteException in requestHistoryData: "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .prologue
    .line 846
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 847
    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    .line 848
    const/16 v2, 0x19

    if-eq p2, v2, :cond_1

    .line 849
    const/16 v2, 0x1a

    if-eq p2, v2, :cond_1

    .line 850
    const/16 v2, 0x32

    if-eq p2, v2, :cond_1

    .line 851
    const/16 v2, 0x33

    if-eq p2, v2, :cond_1

    .line 852
    const/16 v2, 0x34

    if-eq p2, v2, :cond_1

    .line 853
    const/16 v2, 0x36

    if-eq p2, v2, :cond_1

    .line 854
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .requestToUpdate : This service is not supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return-void

    .line 858
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v1

    .line 860
    .local v1, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    if-nez v1, :cond_2

    .line 861
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .requestToUpdate : SemContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void

    .line 866
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->requestToUpdate(Landroid/os/IBinder;I)V

    .line 867
    const-string/jumbo v2, "SemContextManager"

    .line 868
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .requestToUpdate : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 869
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    .line 868
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 867
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in requestToUpdate: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setClientInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientInfo"    # Ljava/lang/String;

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mClientInfo:Ljava/lang/String;

    .line 1092
    return-void
.end method

.method public setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z
    .locals 11
    .param p1, "service"    # I
    .param p2, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .prologue
    const/16 v10, 0x30

    const/4 v8, 0x0

    .line 1026
    iget-object v9, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    if-eqz v9, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v8

    .line 1027
    :cond_1
    const/4 v6, 0x0

    .line 1029
    .local v6, "res":Z
    if-ne p1, v10, :cond_2

    .line 1030
    invoke-virtual {p2, v10}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1034
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_0
    if-nez v0, :cond_3

    return v8

    .line 1032
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p2, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .restart local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 1036
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 1081
    .end local v6    # "res":Z
    :goto_1
    return v6

    .line 1038
    .restart local v6    # "res":Z
    :sswitch_0
    :try_start_0
    const-string/jumbo v9, "net_data"

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "gram_data"

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1040
    const-string/jumbo v9, "net_data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1041
    .local v5, "netData":[B
    const-string/jumbo v9, "gram_data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1042
    .local v2, "gramData":[B
    if-eqz v5, :cond_4

    if-nez v2, :cond_6

    :cond_4
    return v8

    .line 1039
    .end local v2    # "gramData":[B
    .end local v5    # "netData":[B
    :cond_5
    return v8

    .line 1043
    .restart local v2    # "gramData":[B
    .restart local v5    # "netData":[B
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/4 v10, 0x1

    invoke-interface {v9, v10, v5}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(I[B)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1044
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    const/4 v9, 0x2

    invoke-interface {v8, v9, v2}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(I[B)Z

    move-result v6

    .line 1045
    .local v6, "res":Z
    :goto_2
    goto :goto_1

    .local v6, "res":Z
    :cond_7
    move v6, v8

    .line 1043
    goto :goto_2

    .line 1047
    .end local v2    # "gramData":[B
    .end local v5    # "netData":[B
    :sswitch_1
    const-string/jumbo v9, "luminance_config_data"

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    return v8

    .line 1048
    :cond_8
    const-string/jumbo v9, "luminance_config_data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 1049
    .local v4, "luminanceConfigData":[B
    if-nez v4, :cond_9

    return v8

    .line 1050
    :cond_9
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 1051
    const/4 v9, 0x0

    .line 1050
    invoke-interface {v8, v9, v4}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(I[B)Z

    move-result v6

    .local v6, "res":Z
    goto :goto_1

    .line 1054
    .end local v4    # "luminanceConfigData":[B
    .local v6, "res":Z
    :sswitch_2
    const-string/jumbo v9, "interrupt_gyro"

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1055
    const-string/jumbo v9, "SemContextManager"

    const-string/jumbo v10, "Bundle is not contained key data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return v8

    .line 1058
    :cond_a
    const/4 v8, 0x1

    new-array v7, v8, [B

    .line 1059
    .local v7, "sysfsMode":[B
    const-string/jumbo v8, "interrupt_gyro"

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-byte v8, v8

    const/4 v9, 0x0

    aput-byte v8, v7, v9

    .line 1060
    const-string/jumbo v8, "SemContextManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sysfs data : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v10, v7, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 1062
    const/16 v9, 0x30

    .line 1061
    invoke-interface {v8, v9, v7}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(I[B)Z

    move-result v6

    .local v6, "res":Z
    goto/16 :goto_1

    .line 1065
    .end local v7    # "sysfsMode":[B
    .local v6, "res":Z
    :sswitch_3
    const-string/jumbo v9, "display_status"

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1066
    const-string/jumbo v9, "SemContextManager"

    const-string/jumbo v10, "Bundle is not contained key data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    return v8

    .line 1069
    :cond_b
    const/4 v8, 0x1

    new-array v3, v8, [B

    .line 1070
    .local v3, "hallSensorStatus":[B
    const-string/jumbo v8, "display_status"

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-byte v8, v8

    const/4 v9, 0x0

    aput-byte v8, v3, v9

    .line 1071
    const-string/jumbo v8, "SemContextManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Hall Sensor Data : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v10, v3, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v8, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 1073
    const/16 v9, 0x2b

    .line 1072
    invoke-interface {v8, v9, v3}, Lcom/samsung/android/hardware/context/ISemContextService;->setReferenceData(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .local v6, "res":Z
    goto/16 :goto_1

    .line 1078
    .end local v3    # "hallSensorStatus":[B
    .local v6, "res":Z
    :catch_0
    move-exception v1

    .line 1079
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "SemContextManager"

    const-string/jumbo v9, "RemoteException in initializeSemContextService: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1036
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x27 -> :sswitch_1
        0x2b -> :sswitch_3
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method public setReferenceData(I[B[B)Z
    .locals 2
    .param p1, "service"    # I
    .param p2, "data1"    # [B
    .param p3, "data2"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    .line 987
    :cond_1
    const/16 v1, 0x10

    if-ne p1, v1, :cond_2

    .line 988
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;

    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-direct {v0, p2, p3}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;-><init>([B[B)V

    .line 990
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;

    .prologue
    .line 608
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 607
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;
    .param p2, "service"    # I

    .prologue
    .line 619
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->checkListenerAndService(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 621
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getListenerDelegate(Lcom/samsung/android/hardware/context/SemContextListener;)Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;

    move-result-object v1

    .line 622
    .local v1, "listenerDelegate":Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
    if-nez v1, :cond_1

    .line 623
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "  .unregisterListener : SemContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void

    .line 628
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mSemContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/hardware/context/ISemContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 629
    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 631
    :cond_2
    const-string/jumbo v2, "SemContextManager"

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 633
    invoke-static {p2}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 631
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemContextManager"

    const-string/jumbo v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
