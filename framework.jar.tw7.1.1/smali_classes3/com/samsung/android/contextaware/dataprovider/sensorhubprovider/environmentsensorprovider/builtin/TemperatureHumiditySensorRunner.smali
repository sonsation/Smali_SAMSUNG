.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;
.source "TemperatureHumiditySensorRunner.java"


# instance fields
.field private mHumidityData:[D

.field private mTemperatureData:[D


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->clear()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "LoggingStatus"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Temperature"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Humidity"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    new-array v1, v2, [B

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getInterval()I

    move-result v2

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    const/4 v2, 0x6

    aput-byte v2, v1, v3

    aget-byte v2, v0, v3

    aput-byte v2, v1, v4

    aget-byte v2, v0, v4

    aput-byte v2, v1, v5

    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method public final parse([BI)I
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move v3, p2

    array-length v6, v5

    sub-int/2addr v6, p2

    add-int/lit8 v6, v6, -0x2

    if-gez v6, :cond_0

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v6, -0x1

    return v6

    :cond_0
    add-int/lit8 v3, p2, 0x1

    aget-byte v6, v5, p2

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v7, v5, v3

    and-int/lit16 v7, v7, 0xff

    add-int v2, v6, v7

    if-gtz v2, :cond_1

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_ENVIRONMENT_SENSOR_COUNT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v6, -0x1

    return v6

    :cond_1
    new-array v6, v2, [D

    iput-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    new-array v6, v2, [D

    iput-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    array-length v6, v5

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x2

    if-gez v6, :cond_2

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v6, -0x1

    return v6

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    add-int/lit8 v3, v4, 0x1

    aget-byte v7, v5, v4

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v8, v5, v3

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    int-to-double v8, v7

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    aput-wide v8, v6, v0

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    add-int/lit8 v3, v4, 0x1

    aget-byte v7, v5, v4

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v4, v3, 0x1

    aget-byte v8, v5, v3

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    int-to-double v8, v7

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    aput-wide v8, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getLoggingStatus()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v1, v7

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v1, v7

    iget-object v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->notifyObserver()V

    return v4
.end method
