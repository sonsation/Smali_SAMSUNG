.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;
.super Ljava/lang/Object;
.source "SensorHubParserProvider.java"

# interfaces
.implements Lcom/samsung/android/sensorhub/SensorHubEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onGetSensorHubData(Lcom/samsung/android/sensorhub/SensorHubEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/samsung/android/sensorhub/SensorHubEvent;

    .prologue
    monitor-enter p0

    .line 86
    :try_start_0
    const-string/jumbo v0, "AP_NONE"

    .line 87
    .local v0, "apStatus":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)I

    move-result v2

    const/16 v3, -0x2e

    if-ne v2, v3, :cond_1

    .line 88
    const-string/jumbo v0, "AP_SLEEP"

    .line 89
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->sendCurTimeToSensorHub()V

    .line 94
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGetSensorHubData Event [event buffer len :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 95
    iget v3, p1, Lcom/samsung/android/sensorhub/SensorHubEvent;->length:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 95
    const-string/jumbo v3, "], "

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->-get1(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    move-result-object v2

    if-nez v2, :cond_2

    .line 98
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LIBRARY_PARSER_NULL_EXEPTION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 100
    return-void

    .line 90
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->-get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)I

    move-result v2

    const/16 v3, -0x2f

    if-ne v2, v3, :cond_0

    .line 91
    const-string/jumbo v0, "AP_WAKEUP"

    goto :goto_0

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->-get1(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap()Z

    move-result v2

    if-nez v2, :cond_3

    .line 104
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_PARSER_MAP:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 106
    return-void

    .line 109
    :cond_3
    :try_start_2
    iget v2, p1, Lcom/samsung/android/sensorhub/SensorHubEvent;->length:I

    if-gtz v2, :cond_4

    .line 110
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_GET_SENSOR_HUB_EVENT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 112
    return-void

    .line 115
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    iget-object v3, p1, Lcom/samsung/android/sensorhub/SensorHubEvent;->buffer:[B

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;[B)I

    move-result v1

    .line 116
    .local v1, "result":I
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 117
    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit p0

    .line 85
    return-void

    .end local v0    # "apStatus":Ljava/lang/String;
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
