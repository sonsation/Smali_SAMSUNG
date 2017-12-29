.class public final Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;
.super Ljava/lang/Object;
.source "BluetoothSALogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insertSALog(Ljava/lang/String;)V
    .locals 4
    .param p0, "screenId"    # Ljava/lang/String;

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    const-string/jumbo v1, "BluetoothSALogger"

    const-string/jumbo v2, "insertSALog :: screendId is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 21
    :cond_0
    const-string/jumbo v1, "BluetoothSALogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertSALog :: screenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v2

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;
    const-string/jumbo v1, "BluetoothSALogger"

    const-string/jumbo v2, "Exception occurred while SA logging"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;->printStackTrace()V

    goto :goto_0
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "screenId"    # Ljava/lang/String;
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 34
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 35
    :cond_0
    const-string/jumbo v1, "BluetoothSALogger"

    const-string/jumbo v2, "insertSALog :: screendId or eventId is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void

    .line 38
    :cond_1
    const-string/jumbo v1, "BluetoothSALogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertSALog :: screenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , eventId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v2

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;
    const-string/jumbo v1, "BluetoothSALogger"

    const-string/jumbo v2, "Exception occurred while SA logging"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;->printStackTrace()V

    goto :goto_0
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p0, "screenId"    # Ljava/lang/String;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 52
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 53
    :cond_0
    const-string/jumbo v1, "BluetoothSALogger"

    const-string/jumbo v2, "insertSALog :: screendId or eventId is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 56
    :cond_1
    sget-boolean v1, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothSALogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertSALog :: screenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , eventId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v2

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventValue(J)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;
    const-string/jumbo v1, "BluetoothSALogger"

    const-string/jumbo v2, "Exception occurred while SA logging"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;->printStackTrace()V

    goto :goto_0
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "screenId"    # Ljava/lang/String;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 72
    :cond_0
    const-string/jumbo v1, "BluetoothSALogger"

    const-string/jumbo v2, "insertSALog :: screendId or eventId or detail is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 71
    :cond_1
    if-eqz p2, :cond_0

    .line 75
    sget-boolean v1, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothSALogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertSALog :: screenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , eventId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , detail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v2

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventDetail(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;
    const-string/jumbo v1, "BluetoothSALogger"

    const-string/jumbo v2, "Exception occurred while SA logging"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;->printStackTrace()V

    goto :goto_0
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p0, "screenId"    # Ljava/lang/String;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 90
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 91
    :cond_0
    const-string/jumbo v1, "BluetoothSALogger"

    const-string/jumbo v2, "insertSALog :: screendId or eventId or detail is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 90
    :cond_1
    if-eqz p2, :cond_0

    .line 94
    sget-boolean v1, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothSALogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertSALog :: screenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , eventId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , detail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v2

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventDetail(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventValue(J)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;
    const-string/jumbo v1, "BluetoothSALogger"

    const-string/jumbo v2, "Exception occurred while SA logging"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;->printStackTrace()V

    goto :goto_0
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "screenId"    # Ljava/lang/String;
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 111
    :cond_0
    const-string/jumbo v1, "BluetoothSALogger"

    const-string/jumbo v2, "insertSALog :: screendId or eventId or map is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 110
    :cond_1
    if-eqz p2, :cond_0

    .line 114
    const-string/jumbo v1, "BluetoothSALogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertSALog :: screenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , eventId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v2

    .line 118
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 117
    invoke-virtual {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;
    const-string/jumbo v1, "BluetoothSALogger"

    const-string/jumbo v2, "Exception occurred while SA logging"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;->printStackTrace()V

    goto :goto_0
.end method