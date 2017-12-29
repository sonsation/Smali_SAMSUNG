.class public Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;
.super Ljava/lang/Object;
.source "RlcClearHandler.java"


# static fields
.field private static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_REQUEST_SHUTDOWN"

.field private static final EXTRA_CONFIRM_DIALOG:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final OPRT_DEFUALT:I = -0x1

.field public static final OPRT_POWEROFF:I = 0x1

.field public static final OPRT_QUERY_PARAM:Ljava/lang/String; = "oprtType"

.field public static final OPRT_REBOOT:I = 0x2

.field public static final OPRT_RECEHCK:I = 0x4

.field public static final OPRT_REINIT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllBackoff(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    sget-object v3, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    const-string v4, "[clearAllBackoff]"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearGCMBackoff(Landroid/content/Context;)V

    .line 97
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearSPPBackoff(Landroid/content/Context;)V

    .line 98
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearGCMMgRegistrationBackoff(Landroid/content/Context;)V

    .line 99
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearSPPMgRegistrationBackoff(Landroid/content/Context;)V

    .line 101
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearDeliveryBackoff(Landroid/content/Context;)V

    .line 102
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearCheckBackoff(Landroid/content/Context;)V

    .line 104
    const-string v3, "SPP"

    invoke-static {p0, v3}, Lcom/samsung/android/rlc/util/PreferencesUtil;->unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    const-string v3, "GCM"

    invoke-static {p0, v3}, Lcom/samsung/android/rlc/util/PreferencesUtil;->unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    const-string v3, "callcheckapi"

    const-string v4, "N"

    invoke-static {p0, v3, v4}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 109
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "checkIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 111
    .local v2, "pending":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 94
    return-void
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 36
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v5, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "oprtType"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 41
    .local v1, "oprtType":I
    const-string v5, "clearOp"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 43
    .local v2, "option":Z
    const-string v5, "SPP"

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isMGRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->deregisterFromSPP(Landroid/content/Context;)V

    .line 47
    :cond_0
    const-string v5, "GCM"

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isMGRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->deregisterFromGCM(Landroid/content/Context;)V

    .line 50
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->clearAllBackoff(Landroid/content/Context;)V

    .line 55
    if-eqz v2, :cond_2

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRlcClear(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 57
    if-eqz v2, :cond_4

    .line 58
    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    .line 59
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/rlc/util/RLCUtil;->clearSecureDataForRecheck()V

    .line 64
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    sget v8, Lcom/samsung/android/rlc/util/RLCUtil;->RESET_ASKED:I

    invoke-virtual {v5, v8}, Lcom/samsung/android/rlc/util/RLCUtil;->setRegiStatus(I)V

    .line 66
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Operation called by scheme : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    packed-switch v1, :pswitch_data_0

    .line 33
    :goto_2
    :pswitch_0
    return-void

    :cond_2
    move v5, v7

    .line 55
    goto :goto_0

    .line 61
    :cond_3
    const-string v5, "1stCheck"

    const-string v8, ""

    invoke-static {p0, v5, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/rlc/util/RLCUtil;->resetSecureData()V

    goto :goto_1

    .line 69
    :pswitch_1
    invoke-static {p0, v10, v7}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_2

    .line 73
    :pswitch_2
    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 74
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3, v10}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_2

    .line 78
    .end local v3    # "pm":Landroid/os/PowerManager;
    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v4, "powerOffIntent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 84
    .end local v4    # "powerOffIntent":Landroid/content/Intent;
    :pswitch_4
    invoke-static {p0, v10, v7}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_2

    .line 89
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    sget v6, Lcom/samsung/android/rlc/util/RLCUtil;->NOT_SUPPORTED:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/rlc/util/RLCUtil;->setRegiStatus(I)V

    goto :goto_2

    .line 67
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
