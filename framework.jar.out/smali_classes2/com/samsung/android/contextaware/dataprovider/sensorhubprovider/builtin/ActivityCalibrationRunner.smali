.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityCalibrationRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ActivityCalibrationRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 57
    const-string/jumbo v0, "ActivityCalibrationRunner is created"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 193
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 194
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 192
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 182
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 183
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 181
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 169
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 170
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 168
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_CALIBRATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 207
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x3c

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 145
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 157
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .prologue
    .line 218
    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 9
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/16 v8, 0x3c

    const/16 v7, 0x17

    const/4 v6, 0x2

    .line 69
    const/4 v2, 0x1

    .line 70
    .local v2, "result":Z
    new-array v1, v6, [B

    .line 72
    .local v1, "dataPacket":[B
    const/16 v4, 0x5c

    if-ne p1, v4, :cond_0

    .line 73
    const-string/jumbo v4, "CALIBRATION_SPEED"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 75
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 87
    .local v3, "speed":F
    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    .line 79
    invoke-virtual {p0, v7, v8, v6, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 112
    .end local v3    # "speed":F
    :goto_0
    return v2

    .line 89
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/16 v4, 0x5b

    if-ne p1, v4, :cond_1

    .line 90
    const-string/jumbo v4, "CALIBRATION_CURRENT_STATE"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 92
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 104
    const/4 v4, 0x1

    .line 98
    invoke-virtual {p0, v7, v8, v4, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    .line 109
    .end local v0    # "data":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
