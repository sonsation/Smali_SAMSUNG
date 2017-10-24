.class public Lcom/samsung/android/personalpage/service/PrivateModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PrivateModeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PrivateModeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isRunningProcess(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string/jumbo v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 55
    .local v0, "manager":Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "service$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 57
    .local v1, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    const-string/jumbo v3, "com.samsung.android.personalpage.service.PersonalPageService"

    iget-object v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const/4 v3, 0x1

    return v3

    .line 63
    .end local v1    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private registerCheckAlarm(Landroid/content/Context;)V
    .locals 6
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    .line 42
    const-string/jumbo v3, "PrivateModeReceiver"

    const-string/jumbo v4, "registerCheckAlarm called"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/personalpage/service/PrivateModeReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.android.personalpage.action.CHECK_M2P"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 47
    .local v2, "pending":Landroid/app/PendingIntent;
    const-string/jumbo v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 48
    .local v0, "am":Landroid/app/AlarmManager;
    const-wide/16 v4, 0x7d0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 41
    return-void
.end method

.method private startPrivateModeService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-string/jumbo v1, "PrivateModeReceiver"

    const-string/jumbo v2, "startPrivateModeService called"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.personalpage.action.CHECK_M2P"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.personalpage.service"

    const-string/jumbo v2, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 24
    const-string/jumbo v0, "PrivateModeReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "com.samsung.android.personalpage.action.CHECK_M2P"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeReceiver;->isRunningProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeReceiver;->startPrivateModeService(Landroid/content/Context;)V

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeReceiver;->registerCheckAlarm(Landroid/content/Context;)V

    goto :goto_0

    .line 36
    :cond_2
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "personal_mode_enabled"

    invoke-static {v0, v1, v3, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
