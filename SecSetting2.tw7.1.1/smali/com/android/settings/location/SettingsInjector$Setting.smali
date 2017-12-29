.class final Lcom/android/settings/location/SettingsInjector$Setting;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/SettingsInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Setting"
.end annotation


# instance fields
.field public final preference:Landroid/preference/Preference;

.field public final setting:Lcom/android/settings/location/InjectedSetting;

.field public startMillis:J

.field final synthetic this$0:Lcom/android/settings/location/SettingsInjector;


# direct methods
.method private constructor <init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/location/SettingsInjector;
    .param p2, "setting"    # Lcom/android/settings/location/InjectedSetting;
    .param p3, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p2, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    .line 498
    iput-object p3, p0, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Landroid/preference/Preference;

    .line 496
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/preference/Preference;Lcom/android/settings/location/SettingsInjector$Setting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/location/SettingsInjector;
    .param p2, "setting"    # Lcom/android/settings/location/InjectedSetting;
    .param p3, "preference"    # Landroid/preference/Preference;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/location/SettingsInjector$Setting;-><init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 515
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/location/SettingsInjector$Setting;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    check-cast p1, Lcom/android/settings/location/SettingsInjector$Setting;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/InjectedSetting;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 584
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 585
    .local v0, "end":J
    iget-wide v2, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v0}, Lcom/android/settings/location/InjectedSetting;->hashCode()I

    move-result v0

    return v0
.end method

.method public maybeLogElapsedTime()V
    .locals 6

    .prologue
    .line 589
    const-string/jumbo v2, "SettingsInjector"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/location/SettingsInjector$Setting;->getElapsedTime()J

    move-result-wide v0

    .line 591
    .local v0, "elapsed":J
    const-string/jumbo v2, "SettingsInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " update took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " millis"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v0    # "elapsed":J
    :cond_0
    return-void
.end method

.method public startService()V
    .locals 11

    .prologue
    .line 529
    iget-object v8, p0, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-static {v8}, Lcom/android/settings/location/SettingsInjector;->-get0(Lcom/android/settings/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 528
    check-cast v0, Landroid/app/ActivityManager;

    .line 530
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v8, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    iget-object v8, v8, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 531
    const-string/jumbo v8, "SettingsInjector"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 532
    const-string/jumbo v8, "SettingsInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Cannot start service as user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 533
    iget-object v10, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    iget-object v10, v10, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 532
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 533
    const-string/jumbo v10, " is not running"

    .line 532
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    return-void

    .line 537
    :cond_1
    new-instance v3, Lcom/android/settings/location/SettingsInjector$Setting$1;

    invoke-direct {v3, p0}, Lcom/android/settings/location/SettingsInjector$Setting$1;-><init>(Lcom/android/settings/location/SettingsInjector$Setting;)V

    .line 551
    .local v3, "handler":Landroid/os/Handler;
    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 553
    .local v6, "messenger":Landroid/os/Messenger;
    iget-object v8, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v8}, Lcom/android/settings/location/InjectedSetting;->getServiceIntent()Landroid/content/Intent;

    move-result-object v4

    .line 554
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "messenger"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 556
    const-string/jumbo v8, "SettingsInjector"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 557
    const-string/jumbo v8, "SettingsInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": sending update intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 558
    const-string/jumbo v10, ", handler: "

    .line 557
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    .line 567
    :goto_0
    iget-object v8, p0, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v8}, Lcom/android/settings/location/SettingsInjector;->getUserIdFromMyKNOXContainer()I

    move-result v5

    .line 568
    .local v5, "mKNOXUserId":I
    iget-object v8, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    iget-object v8, v8, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    if-ne v8, v5, :cond_4

    .line 569
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 570
    .local v2, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    iget-object v8, p0, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-static {v8}, Lcom/android/settings/location/SettingsInjector;->-get0(Lcom/android/settings/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8, v5}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v1

    .line 571
    .local v1, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getStatus()I

    move-result v7

    .line 572
    .local v7, "status":I
    const/16 v8, 0x5f

    if-eq v7, v8, :cond_3

    .line 573
    iget-object v8, p0, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-static {v8}, Lcom/android/settings/location/SettingsInjector;->-get0(Lcom/android/settings/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    iget-object v9, v9, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 527
    .end local v1    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v2    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v7    # "status":I
    :goto_1
    return-void

    .line 561
    .end local v5    # "mKNOXUserId":I
    :cond_2
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    goto :goto_0

    .line 575
    .restart local v1    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v2    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v5    # "mKNOXUserId":I
    .restart local v7    # "status":I
    :cond_3
    iget-object v8, p0, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Landroid/preference/Preference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 578
    .end local v1    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v2    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v7    # "status":I
    :cond_4
    iget-object v8, p0, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-static {v8}, Lcom/android/settings/location/SettingsInjector;->-get0(Lcom/android/settings/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    iget-object v9, v9, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Setting{setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 505
    const-string/jumbo v1, ", preference="

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Landroid/preference/Preference;

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 506
    const/16 v1, 0x7d

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
