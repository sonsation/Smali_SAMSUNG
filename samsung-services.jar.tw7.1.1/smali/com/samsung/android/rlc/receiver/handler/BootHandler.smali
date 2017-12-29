.class public Lcom/samsung/android/rlc/receiver/handler/BootHandler;
.super Ljava/lang/Object;
.source "BootHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/BootHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMGRegistrationStatus(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    .line 94
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getPushTypeList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "pushTypeList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v3

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 98
    aget-object v5, v3, v1

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isMGRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BootHandler] - MG registered : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->versionChanged(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BootHandler] - PUSH registration ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v5, "SPP"

    aget-object v8, v3, v1

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-static {p0, v10, v5}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 96
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v5, v7

    .line 105
    goto :goto_1

    .line 110
    :cond_2
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BootHandler] - MG is not registered : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    aget-object v5, v3, v1

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRegistraionID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "savedRegistrationID":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 115
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BootHandler] - request registration : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v5, "SPP"

    aget-object v8, v3, v1

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_3
    invoke-static {p0, v10, v5}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_2

    :cond_3
    move v5, v7

    .line 117
    goto :goto_3

    .line 121
    :cond_4
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    const-string v8, "[BootHandler] - dispatchMGRegistration"

    invoke-static {v5, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    aget-object v5, v3, v1

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->makeMgRegistrationBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 123
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "SPP"

    aget-object v8, v3, v1

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 124
    const/4 v5, 0x6

    .line 123
    :goto_4
    invoke-static {p0, v0, v5}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_2

    .line 124
    :cond_5
    const/4 v5, 0x5

    goto :goto_4

    .line 92
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "savedRegistrationID":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 25
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->isEncryptMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 26
    :cond_0
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    const-string v10, "[BootHandler] - Context is invalid"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_1
    const-string v0, "CscFeature_Common_SupportRmm"

    .line 31
    .local v0, "CscFeature_RMM_EnableCode":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 32
    .local v4, "cscEnable":Z
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cscEnable : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v9, "Locked"

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 36
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    const-string v10, "RLC Status is lock. call wake api"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/util/RLCUtil;->bindToLockListner()V

    .line 40
    :cond_2
    const-string v9, "Blink"

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 42
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    const-string v10, "RLC Status is blink. call wake client"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.samsung.android.rmm.blink"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v5, "i":Landroid/content/Intent;
    const-string v9, "blinkMsg"

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v10

    const-string v11, "blinkMsg"

    invoke-virtual {v10, v11}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v9, "reqTel"

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v10

    const-string v11, "blinkTel"

    invoke-virtual {v10, v11}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v9, "requestor"

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v10

    const-string v11, "blinkReq"

    invoke-virtual {v10, v11}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v9, "interval"

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v10

    const-string v11, "blinkInt"

    invoke-virtual {v10, v11}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v9, "status"

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    sget-object v9, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v5, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 52
    .end local v5    # "i":Landroid/content/Intent;
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "RLCID":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "RLCStatus":Ljava/lang/String;
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[BootHandler] - RLCID :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", RLCStatus :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v9, "unlock_report"

    invoke-static {p0, v9}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, "unlockReport":Ljava/lang/String;
    const-string v9, "factoryReset"

    invoke-static {p0, v9}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 58
    const-string v9, "Blink"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "Locked"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 69
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "Y"

    const-string v10, "callcheckapi"

    invoke-static {p0, v10}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 77
    :cond_5
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/util/RLCUtil;->getRegiStatus()I

    move-result v7

    .line 78
    .local v7, "regStatus":I
    sget v9, Lcom/samsung/android/rlc/util/RLCUtil;->NOT_SUPPORTED:I

    if-ne v7, v9, :cond_8

    .line 79
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    const-string v10, "[BootHandler] - RLC Status is COMPLETED "

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void

    .line 59
    .end local v7    # "regStatus":I
    :cond_6
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    const-string v10, "Factory reset"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v9, "factoryReset"

    const-string v10, "N"

    invoke-static {p0, v9, v10}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.samsung.android.rmm.initialize"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v6, "initIntent":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v9, "oprtType"

    const-string v10, "3"

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v6, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    const-string v9, "com.samsung.android.permission.RMM_INIT"

    invoke-virtual {p0, v6, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 66
    return-void

    .line 71
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v6    # "initIntent":Landroid/content/Intent;
    :cond_7
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->makeCheckBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3

    .line 72
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const/4 v9, 0x7

    invoke-static {p0, v3, v9}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 73
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    const-string v10, "[BootHandler] - will start rlc check device"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 83
    .end local v3    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "regStatus":I
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "Y"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 84
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->TAG:Ljava/lang/String;

    const-string v10, "[BootHandler] - There is unfinished unlock report"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/16 v9, 0x8

    invoke-static {p0, v12, v9}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 87
    :cond_9
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/BootHandler;->checkMGRegistrationStatus(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private static isEncryptMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, "1"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 131
    if-nez v0, :cond_0

    .line 133
    const-string v0, "trigger_restart_min_framework"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 131
    if-eqz v0, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_1
    return v2
.end method
