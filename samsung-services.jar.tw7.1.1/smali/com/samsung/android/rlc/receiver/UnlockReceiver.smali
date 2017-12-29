.class public Lcom/samsung/android/rlc/receiver/UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UnlockReceiver.java"


# static fields
.field private static final INTENT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field private static final RMM_BLINK_STOP:Ljava/lang/String; = "com.samsung.android.rmm.blink_stop"

.field public static final RMM_UNLOCK_BLINK:Ljava/lang/String; = "com.samsung.android.action.RMM_BLINK_UNLOCK"

.field private static final RMM_UNLOCK_BLINK_PASS:Ljava/lang/String; = "passcode"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/rlc/receiver/UnlockReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/UnlockReceiver;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 31
    :cond_0
    sget-object v5, Lcom/samsung/android/rlc/receiver/UnlockReceiver;->TAG:Ljava/lang/String;

    const-string v6, "intent or intent.getAction() is null"

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void

    .line 34
    :cond_1
    const-string v5, "com.samsung.android.action.RMM_BLINK_UNLOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 35
    sget-object v5, Lcom/samsung/android/rlc/receiver/UnlockReceiver;->TAG:Ljava/lang/String;

    const-string v6, "RMM Blink Unlock received"

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    const-string v5, "passcode"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "passCode":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/rlc/util/RLCUtil;->unlockBlink(Ljava/lang/String;)I

    move-result v4

    .line 39
    .local v4, "result":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "Normal"

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 40
    sget-object v5, Lcom/samsung/android/rlc/receiver/UnlockReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Start Unlock report"

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.android.rmm.blink_stop"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "i":Landroid/content/Intent;
    sget-object v5, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.android.permission.RMM_INIT"

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->makeUnlockReportBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    const/16 v5, 0x8

    invoke-static {p1, v0, v5}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "passCode":Ljava/lang/String;
    .end local v4    # "result":I
    :cond_2
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
