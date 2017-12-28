.class public Landroid/net/ConnectivityMetricsLogger;
.super Ljava/lang/Object;
.source "ConnectivityMetricsLogger.java"


# static fields
.field public static final COMPONENT_TAG_BLUETOOTH:I = 0x1

.field public static final COMPONENT_TAG_CONNECTIVITY:I = 0x0

.field public static final COMPONENT_TAG_TELECOM:I = 0x3

.field public static final COMPONENT_TAG_TELEPHONY:I = 0x4

.field public static final COMPONENT_TAG_WIFI:I = 0x2

.field public static final CONNECTIVITY_METRICS_LOGGER_SERVICE:Ljava/lang/String; = "connectivity_metrics_logger"

.field public static final DATA_KEY_EVENTS_COUNT:Ljava/lang/String; = "count"

.field private static final DBG:Z = true

.field public static final NUMBER_OF_COMPONENTS:I = 0x5

.field private static TAG:Ljava/lang/String; = null

.field public static final TAG_SKIPPED_EVENTS:I = -0x1


# instance fields
.field private mNumSkippedEvents:I

.field protected mService:Landroid/net/IConnectivityMetricsLogger;

.field protected volatile mServiceUnblockedTimestampMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConnectivityMetricsLogger"

    sput-object v0, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "connectivity_metrics_logger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityMetricsLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityMetricsLogger;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ConnectivityMetricsLogger;-><init>(Landroid/net/IConnectivityMetricsLogger;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/IConnectivityMetricsLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    return-void
.end method


# virtual methods
.method protected checkLoggerService()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const-string v1, "connectivity_metrics_logger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityMetricsLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityMetricsLogger;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    iget-object v1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEvents(Landroid/net/ConnectivityMetricsEvent$Reference;)[Landroid/net/ConnectivityMetricsEvent;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityMetricsLogger;->getEvents(Landroid/net/ConnectivityMetricsEvent$Reference;)[Landroid/net/ConnectivityMetricsEvent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    const-string v2, "IConnectivityMetricsLogger.getEvents"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public logEvent(JIILandroid/os/Parcelable;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    if-nez v6, :cond_0

    sget-object v6, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "logEvent("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") Service not ready"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/net/ConnectivityMetricsLogger;->mServiceUnblockedTimestampMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/net/ConnectivityMetricsLogger;->mServiceUnblockedTimestampMillis:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    return-void

    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    if-lez v6, :cond_2

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v6, "count"

    move-object/from16 v0, p0

    iget v7, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v5, Landroid/net/ConnectivityMetricsEvent;

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/net/ConnectivityMetricsLogger;->mServiceUnblockedTimestampMillis:J

    const/4 v9, -0x1

    move/from16 v8, p3

    invoke-direct/range {v5 .. v10}, Landroid/net/ConnectivityMetricsEvent;-><init>(JIILandroid/os/Parcelable;)V

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/net/ConnectivityMetricsLogger;->mServiceUnblockedTimestampMillis:J

    :cond_2
    new-instance v11, Landroid/net/ConnectivityMetricsEvent;

    move-wide/from16 v12, p1

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Landroid/net/ConnectivityMetricsEvent;-><init>(JIILandroid/os/Parcelable;)V

    if-nez v5, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    invoke-interface {v6, v11}, Landroid/net/IConnectivityMetricsLogger;->logEvent(Landroid/net/ConnectivityMetricsEvent;)J

    move-result-wide v18

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v18, v6

    if-nez v6, :cond_5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/net/ConnectivityMetricsEvent;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v11, v7, v8

    invoke-interface {v6, v7}, Landroid/net/IConnectivityMetricsLogger;->logEvents([Landroid/net/ConnectivityMetricsEvent;)J

    move-result-wide v18

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Landroid/net/ConnectivityMetricsLogger;->mNumSkippedEvents:I

    const-wide/16 v6, 0x0

    cmp-long v6, v18, v6

    if-lez v6, :cond_3

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/ConnectivityMetricsLogger;->mServiceUnblockedTimestampMillis:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    sget-object v6, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    const-string v7, "Error logging event"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public register(Landroid/app/PendingIntent;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityMetricsLogger;->register(Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    const-string v2, "IConnectivityMetricsLogger.register"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public unregister(Landroid/app/PendingIntent;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityMetricsLogger;->mService:Landroid/net/IConnectivityMetricsLogger;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityMetricsLogger;->unregister(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/net/ConnectivityMetricsLogger;->TAG:Ljava/lang/String;

    const-string v2, "IConnectivityMetricsLogger.unregister"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method
