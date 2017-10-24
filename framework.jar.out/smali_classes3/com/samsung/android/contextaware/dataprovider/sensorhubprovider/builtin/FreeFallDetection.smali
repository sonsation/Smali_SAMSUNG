.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/FreeFallDetection;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "FreeFallDetection.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 20
    const-string/jumbo v0, "FFD FreeFallDetection Create"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "FFD getContextType"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FREE_FALL_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 80
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getInstLibType()B
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "FFD getInstLibType"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 32
    const/16 v0, 0x3e

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public parse([BI)I
    .locals 10
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 48
    move v3, p2

    .line 50
    .local v3, "tmpNext":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parse start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 52
    array-length v5, p1

    sub-int/2addr v5, p2

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_0

    .line 53
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 54
    const/4 v5, -0x1

    return v5

    .line 57
    :cond_0
    const-wide/16 v0, 0x0

    .line 58
    .local v0, "height":J
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    :goto_0
    const/4 v5, 0x3

    if-gt v2, v5, :cond_1

    .line 59
    const-wide/16 v6, 0xff

    and-long/2addr v6, v0

    const/16 v5, 0x8

    shl-long/2addr v6, v5

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v5, p1, v4

    int-to-long v8, v5

    add-long v0, v6, v8

    .line 58
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    goto :goto_0

    .line 61
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FFD height ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 63
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const-string/jumbo v6, "height"

    invoke-virtual {v5, v6, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 64
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parse end:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 68
    return v4
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    return v0
.end method
