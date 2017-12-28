.class public Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnr;
.super Landroid/content/BroadcastReceiver;
.source "SmartSwitchBnr.java"


# static fields
.field public static final REQUEST_BACKUP_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_BACKUP_HOMELAYOUT"

.field public static final REQUEST_RESTORE_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_RESTORE_HOMELAYOUT"

.field public static final RESPONSE_BACKUP_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_BACKUP_HOMELAYOUT"

.field public static final RESPONSE_RESTORE_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_RESTORE_HOMELAYOUT"

.field private static final TAG:Ljava/lang/String; = "Launcher.SmartSwitchBnr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 48
    :cond_0
    const-string v11, "Launcher.SmartSwitchBnr"

    const-string v12, "onReceive context or intent is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v2, "needPermissionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "ACTION"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 58
    .local v4, "reqAction":I
    if-eqz v4, :cond_3

    .line 59
    const-string v11, "Launcher.SmartSwitchBnr"

    const-string v12, "onReceive reqAction is not 0"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_3
    const-string v11, "com.sec.android.intent.action.REQUEST_BACKUP_HOMELAYOUT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 63
    const/4 v5, 0x0

    .line 70
    .local v5, "requestCode":I
    :goto_1
    invoke-static {v5}, Lcom/android/launcher3/util/PermissionUtils;->getPermissions(I)[Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "permissions":[Ljava/lang/String;
    invoke-static {p1, v3, v2}, Lcom/android/launcher3/util/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v10

    .line 73
    .local v10, "value":I
    if-nez v10, :cond_5

    .line 74
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;

    invoke-direct {v7, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v7, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {v7, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 64
    .end local v3    # "permissions":[Ljava/lang/String;
    .end local v5    # "requestCode":I
    .end local v7    # "serviceIntent":Landroid/content/Intent;
    .end local v10    # "value":I
    :cond_4
    const-string v11, "com.sec.android.intent.action.REQUEST_RESTORE_HOMELAYOUT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 65
    const/4 v5, 0x1

    .restart local v5    # "requestCode":I
    goto :goto_1

    .line 79
    .restart local v3    # "permissions":[Ljava/lang/String;
    .restart local v10    # "value":I
    :cond_5
    const-string v11, "SOURCE"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, "source":Ljava/lang/String;
    const-string v11, "EXPORT_SESSION_TIME"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, "sessionTime":Ljava/lang/String;
    const-string v11, "Launcher.SmartSwitchBnr"

    const-string v12, "onReceive there is no permission"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v11, "com.sec.android.intent.action.REQUEST_BACKUP_HOMELAYOUT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-string v11, "com.sec.android.intent.action.RESPONSE_BACKUP_HOMELAYOUT"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "backupIntent":Landroid/content/Intent;
    const-string v11, "RESULT"

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v11, "ERR_CODE"

    const/4 v12, 0x4

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v11, "REQ_SIZE"

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v11, "SOURCE"

    invoke-virtual {v1, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v11, "EXPORT_SESSION_TIME"

    invoke-virtual {v1, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 92
    .end local v1    # "backupIntent":Landroid/content/Intent;
    :cond_6
    const-string v11, "com.sec.android.intent.action.REQUEST_RESTORE_HOMELAYOUT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 93
    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.sec.android.intent.action.RESPONSE_RESTORE_HOMELAYOUT"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v6, "restoreIntent":Landroid/content/Intent;
    const-string v11, "RESULT"

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string v11, "ERR_CODE"

    const/4 v12, 0x4

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v11, "REQ_SIZE"

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v11, "SOURCE"

    invoke-virtual {v6, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 102
    .end local v2    # "needPermissionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "permissions":[Ljava/lang/String;
    .end local v4    # "reqAction":I
    .end local v5    # "requestCode":I
    .end local v6    # "restoreIntent":Landroid/content/Intent;
    .end local v8    # "sessionTime":Ljava/lang/String;
    .end local v9    # "source":Ljava/lang/String;
    .end local v10    # "value":I
    :cond_7
    const-string v11, "Launcher.SmartSwitchBnr"

    const-string v12, "onReceive action value is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
