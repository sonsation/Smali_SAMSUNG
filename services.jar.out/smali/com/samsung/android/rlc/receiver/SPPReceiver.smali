.class public Lcom/samsung/android/rlc/receiver/SPPReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SPPReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

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
    .locals 4

    .prologue
    .line 42
    if-nez p2, :cond_1

    .line 43
    :cond_0
    sget-object v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "intent or intent.getAction() is null"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void

    .line 42
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[onReceive] - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "eb850acb179b3447"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "com.sec.spp.RegistrationChangedAction"

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "com.sec.spp.ServiceAbnormallyStoppedAction"

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 78
    :cond_2
    :goto_0
    return-void

    .line 53
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/rlc/util/WakeLockUtil;->acquireWakeLock(Landroid/content/Context;)V

    .line 55
    sget-object v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "received push msg from server"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CHECKPOINT1 - RECEIVED PUSH MESSAGE WITH SPP"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearDeliveryBackoff(Landroid/content/Context;)V

    .line 59
    invoke-static {p1, p2}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->handlePushMsg(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    :cond_4
    sget-object v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "received Registration or Deregistration rusult"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "appId"

    .line 64
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "eb850acb179b3447"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-static {p1, p2}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :cond_5
    sget-object v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SPP Push Service is stopped abnormally!!"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
