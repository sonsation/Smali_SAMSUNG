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

.field public static final OPRT_REINIT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllBackoff(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[clearAllBackoff]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearGCMBackoff(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearSPPBackoff(Landroid/content/Context;)V

    .line 85
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearGCMMgRegistrationBackoff(Landroid/content/Context;)V

    .line 86
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearSPPMgRegistrationBackoff(Landroid/content/Context;)V

    .line 88
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearDeliveryBackoff(Landroid/content/Context;)V

    .line 89
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearCheckBackoff(Landroid/content/Context;)V

    const-string/jumbo v0, "SPP"

    .line 91
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "GCM"

    .line 92
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "callcheckapi"

    const-string/jumbo v1, "N"

    .line 93
    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "oprtType"

    .line 33
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "clearOp"

    .line 36
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v0, "SPP"

    .line 38
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isMGRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, "GCM"

    .line 42
    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isMGRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->clearAllBackoff(Landroid/content/Context;)V

    .line 50
    if-eqz v4, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRlcClear(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 52
    if-nez v4, :cond_3

    .line 76
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    sget v1, Lcom/samsung/android/rlc/util/RLCUtil;->NOT_SUPPORTED:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/util/RLCUtil;->setRegiStatus(I)V

    .line 79
    :goto_3
    :pswitch_0
    return-void

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->deregisterFromSPP(Landroid/content/Context;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/GCMHandler;->deregisterFromGCM(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 50
    goto :goto_2

    .line 54
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/util/RLCUtil;->resetSecureData()V

    .line 55
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    sget v4, Lcom/samsung/android/rlc/util/RLCUtil;->RESET_ASKED:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/rlc/util/RLCUtil;->setRegiStatus(I)V

    .line 57
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/RlcClearHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Operation called by scheme : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 68
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.KEY_CONFIRM"

    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 60
    :pswitch_2
    invoke-static {p0, v6, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_3

    :pswitch_3
    const-string/jumbo v0, "power"

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 64
    invoke-virtual {v0, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_3

    .line 58
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
