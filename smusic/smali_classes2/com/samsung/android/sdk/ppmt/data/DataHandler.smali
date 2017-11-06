.class public Lcom/samsung/android/sdk/ppmt/data/DataHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"


# static fields
.field private static final CUMULATIVE_EACH_MAX_SAVE_COUNT:J = 0x1eL

.field public static final KEY_APP_VERSION:Ljava/lang/String; = "appv"

.field public static final KEY_CC:Ljava/lang/String; = "cc"

.field public static final KEY_MODEL_NAME:Ljava/lang/String; = "md"

.field public static final KEY_NET_MCC:Ljava/lang/String; = "nmcc"

.field public static final KEY_NET_MNC:Ljava/lang/String; = "nmnc"

.field public static final KEY_PLATFORM:Ljava/lang/String; = "pf"

.field public static final KEY_PLATFORM_VERSION:Ljava/lang/String; = "osv"

.field public static final KEY_SDK_VERSION:Ljava/lang/String; = "sdkv"

.field public static final KEY_SIM_MCC:Ljava/lang/String; = "mcc"

.field public static final KEY_SIM_MNC:Ljava/lang/String; = "mnc"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/samsung/android/sdk/ppmt/data/DataHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCumulativeData(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string v5, "cumulative_data_type"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "type":Ljava/lang/String;
    const-string v5, "cumulative_data_value"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "data":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    sget-object v5, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->TAG:Ljava/lang/String;

    const-string v6, "addCumulativeData error. type or data is null."

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v1

    .line 44
    .local v1, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v1, :cond_2

    .line 45
    sget-object v5, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->TAG:Ljava/lang/String;

    const-string v6, "addCumulativeData error. db handler null."

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->addCumulativeData(Ljava/lang/String;Ljava/lang/String;)J

    .line 53
    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCumulativeDataCount(Ljava/lang/String;)J

    move-result-wide v2

    .line 54
    .local v2, "dataCount":J
    const-wide/16 v6, 0x1e

    cmp-long v5, v2, v6

    if-lez v5, :cond_3

    .line 55
    sget-object v5, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oldest "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " data will be deleted. dataCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->deleteOldestCumulativeData(Ljava/lang/String;)V

    .line 58
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 59
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->requestSendCumulativeData(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static deleteDbData(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v1

    .line 123
    .local v1, "prefMgr":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->clearDataRetryAlarm(Landroid/content/Context;)V

    .line 124
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->clearAllCard(Landroid/content/Context;)V

    .line 126
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 127
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->deleteDBData()V

    .line 130
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 131
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->removePrefSettingData()V

    goto :goto_0
.end method

.method public static upsertBasicData(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sendImm"    # Z

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v0, "basicData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "mnc"

    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getSimMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "nmnc"

    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getNetMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "pf"

    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "osv"

    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getPlatformVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "md"

    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getModelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "appv"

    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v1, "sdkv"

    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "bs"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->upsertUpdatedData(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->requestSendImmRegData(Landroid/content/Context;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->requestSendRegData(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static upsertCustomData(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    :try_start_0
    const-string/jumbo v2, "updated_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 79
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "cs"

    invoke-static {p0, v0, v2}, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->upsertUpdatedData(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 80
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->requestSendImmRegData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "upsertCustomData error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static upsertDAUData(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startTs"    # J

    .prologue
    .line 105
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v2

    .line 106
    .local v2, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v2, :cond_1

    .line 107
    const-string/jumbo v3, "start"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->addCumulativeRegData(Ljava/lang/String;Ljava/lang/String;)J

    .line 110
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getStartDataCount()J

    move-result-wide v0

    .line 111
    .local v0, "dataCount":J
    const-wide/16 v4, 0x1e

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 112
    sget-object v3, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldest start data will be deleted. dataCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->deleteOldestStartData()V

    .line 115
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 116
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->requestSendImmRegData(Landroid/content/Context;)V

    .line 118
    .end local v0    # "dataCount":J
    :cond_1
    return-void
.end method

.method private static upsertUpdatedData(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 66
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v0, :cond_0

    .line 67
    sget-object v1, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "upsertUpdatedData error. db handler null."

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->upsertUpdateData(Ljava/util/Map;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0
.end method
