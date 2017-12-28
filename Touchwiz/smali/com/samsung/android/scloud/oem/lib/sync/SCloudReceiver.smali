.class public Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SCloudReceiver.java"


# static fields
.field public static final ACCOUNT_SIGNED_IN:Ljava/lang/String; = "android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

.field public static final ACCOUNT_SIGNED_IN_FIXED:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

.field public static final ACCOUNT_SIGNED_OUT:Ljava/lang/String; = "android.intent.action.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

.field public static final ACCOUNT_SIGNED_OUT_FIXED:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"

.field public static final SETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field private static final TAG:Ljava/lang/String; = "SCloudReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v3, "SCloudReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    :cond_2
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 71
    .local v2, "am":Landroid/accounts/AccountManager;
    if-eqz v2, :cond_0

    .line 75
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 77
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 83
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$1;-><init>(Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver;Landroid/content/Context;[Landroid/accounts/Account;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 107
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 111
    .end local v0    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "am":Landroid/accounts/AccountManager;
    :cond_3
    const-string v3, "android.intent.action.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 113
    :cond_4
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 115
    .restart local v2    # "am":Landroid/accounts/AccountManager;
    if-eqz v2, :cond_0

    .line 119
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 121
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    array-length v3, v0

    if-nez v3, :cond_5

    .line 123
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$2;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver$2;-><init>(Lcom/samsung/android/scloud/oem/lib/sync/SCloudReceiver;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 151
    :cond_5
    const-string v3, "SCloudReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account signed out - there is an account.. ignore signed out intent - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    .end local v0    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "am":Landroid/accounts/AccountManager;
    :cond_6
    const-string v3, "SCloudReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown intent received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
