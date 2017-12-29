.class public Lcom/samsung/android/rlc/receiver/SPPReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SPPReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 43
    :cond_0
    sget-object v2, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string v3, "intent or intent.getAction() is null"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void

    .line 47
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onReceive] - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "eb850acb179b3447"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    invoke-static {p1}, Lcom/samsung/android/rlc/util/WakeLockUtil;->acquireWakeLock(Landroid/content/Context;)V

    .line 55
    sget-object v2, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string v3, "received push msg from server"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v2, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string v3, "CHECKPOINT1 - RECEIVED PUSH MESSAGE WITH SPP"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearDeliveryBackoff(Landroid/content/Context;)V

    .line 59
    invoke-static {p1, p2}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->handlePushMsg(Landroid/content/Context;Landroid/content/Intent;)V

    .line 40
    :cond_2
    :goto_0
    return-void

    .line 61
    :cond_3
    const-string v2, "com.sec.spp.RegistrationChangedAction"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    sget-object v2, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string v3, "received Registration or Deregistration rusult"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "appId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "appId":Ljava/lang/String;
    const-string v2, "eb850acb179b3447"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-static {p1, p2}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    .end local v1    # "appId":Ljava/lang/String;
    :cond_4
    const-string v2, "com.sec.spp.ServiceAbnormallyStoppedAction"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    sget-object v2, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string v3, "SPP Push Service is stopped abnormally!!"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
