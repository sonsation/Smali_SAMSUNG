.class Lcom/android/launcher3/util/logging/SALogging$30;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$detail:Ljava/lang/String;

.field final synthetic val$eventID:Ljava/lang/String;

.field final synthetic val$screenID:Ljava/lang/String;

.field final synthetic val$value:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$30;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$30;->val$eventID:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/util/logging/SALogging$30;->val$detail:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/util/logging/SALogging$30;->val$screenID:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/launcher3/util/logging/SALogging$30;->val$value:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1435
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$30;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$30;->val$eventID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->access$1500(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1436
    .local v1, "changedEventID":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$30;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$30;->val$detail:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->access$1600(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, "changedDetail":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v4

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$30;->val$screenID:Ljava/lang/String;

    .line 1439
    invoke-virtual {v3, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v3

    check-cast v3, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    .line 1440
    invoke-virtual {v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/android/launcher3/util/logging/SALogging$30;->val$value:J

    .line 1441
    invoke-virtual {v3, v6, v7}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventValue(J)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v3

    .line 1442
    invoke-virtual {v3, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventDetail(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v3

    .line 1443
    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    .line 1438
    invoke-virtual {v4, v3}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1447
    :goto_0
    return-void

    .line 1444
    :catch_0
    move-exception v2

    .line 1445
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Launcher.SALogging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertEventLog : Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
