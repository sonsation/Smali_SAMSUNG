.class public Lcom/samsung/android/settings/boostmode/BoostModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BoostModeReceiver.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const-string/jumbo v0, "BoostModeReceiver"

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeReceiver;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "act":Ljava/lang/String;
    const-string/jumbo v3, "BoostModeReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "act: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 22
    const-string/jumbo v3, "BoostModeReceiver"

    const-string/jumbo v4, "isSupportBoostMode(): False"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void

    .line 26
    :cond_0
    const-string/jumbo v3, "com.samsung.android.settings.boostmode.action.BOOST_MODE_NOTIFICATION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 27
    const-string/jumbo v3, "android.app.action.EXIT_KNOX_DESKTOP_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 26
    if-eqz v3, :cond_4

    .line 28
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerformanceBoosterMode(Landroid/content/Context;)I

    move-result v1

    .line 29
    .local v1, "mode":I
    const-string/jumbo v3, "BoostModeReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    if-nez v1, :cond_3

    .line 31
    invoke-static {p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->dismissPerformanceBoostNotification(Landroid/content/Context;)V

    .line 18
    .end local v1    # "mode":I
    :cond_2
    :goto_0
    return-void

    .line 33
    .restart local v1    # "mode":I
    :cond_3
    invoke-static {p1, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->showPerformanceBoostNotification(Landroid/content/Context;I)V

    goto :goto_0

    .line 35
    .end local v1    # "mode":I
    :cond_4
    const-string/jumbo v3, "com.samsung.android.settings.boostmode.action.BOOST_MODE_DISMISS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 36
    const-string/jumbo v3, "android.app.action.ENTER_KNOX_DESKTOP_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 35
    if-eqz v3, :cond_6

    .line 37
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->dismissPerformanceBoostNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 38
    :cond_6
    const-string/jumbo v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    const-string/jumbo v3, "reason"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 40
    .local v2, "reason":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-static {p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerformanceBoosterMode(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_2

    .line 41
    invoke-static {p1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->dismissPerformanceBoostNotification(Landroid/content/Context;)V

    goto :goto_0
.end method
