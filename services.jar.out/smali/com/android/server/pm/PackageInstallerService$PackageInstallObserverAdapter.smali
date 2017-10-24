.class Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;
.super Landroid/app/PackageInstallObserver;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageInstallObserverAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSessionId:I

.field private final mShowNotification:Z

.field private final mTarget:Landroid/content/IntentSender;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentSender;IZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/content/IntentSender;
    .param p3, "sessionId"    # I
    .param p4, "showNotification"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 1079
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    .line 1081
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    .line 1082
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    .line 1083
    iput p3, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    .line 1084
    iput-boolean p4, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mShowNotification:Z

    .line 1085
    iput p5, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mUserId:I

    .line 1080
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 1104
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mShowNotification:Z

    if-eqz v0, :cond_0

    .line 1105
    if-eqz p4, :cond_2

    const-string/jumbo v0, "android.intent.extra.REPLACING"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1106
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    .line 1107
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1108
    if-eqz v10, :cond_3

    const v0, 0x10405c4

    .line 1107
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1111
    iget v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mUserId:I

    .line 1106
    invoke-static {v1, v0, p1, v2}, Lcom/android/server/pm/PackageInstallerService;->-wrap0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v8

    .line 1112
    .local v8, "notification":Landroid/app/Notification;
    if-eqz v8, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1113
    check-cast v9, Landroid/app/NotificationManager;

    .line 1115
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v9, p1, v4, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1118
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1119
    .local v3, "fillIn":Landroid/content/Intent;
    const-string/jumbo v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1120
    const-string/jumbo v0, "android.content.pm.extra.SESSION_ID"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1121
    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    .line 1122
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v1

    .line 1121
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1123
    const-string/jumbo v0, "android.content.pm.extra.STATUS_MESSAGE"

    .line 1124
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1125
    const-string/jumbo v0, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1126
    if-eqz p4, :cond_1

    .line 1128
    const-string/jumbo v0, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    .line 1127
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1129
    .local v6, "existing":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1130
    const-string/jumbo v0, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1134
    .end local v6    # "existing":Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :goto_2
    return-void

    .line 1105
    .end local v3    # "fillIn":Landroid/content/Intent;
    :cond_2
    const/4 v10, 0x0

    .local v10, "update":Z
    goto :goto_0

    .line 1109
    .end local v10    # "update":Z
    :cond_3
    const v0, 0x10405c3

    goto :goto_1

    .line 1135
    .restart local v3    # "fillIn":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .local v7, "ignored":Landroid/content/IntentSender$SendIntentException;
    goto :goto_2
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1090
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1091
    .local v3, "fillIn":Landroid/content/Intent;
    const-string/jumbo v0, "android.content.pm.extra.SESSION_ID"

    iget v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mSessionId:I

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1092
    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    .line 1093
    const/4 v1, -0x1

    .line 1092
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1094
    const-string/jumbo v0, "android.intent.extra.INTENT"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1096
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageInstallObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_0
    return-void

    .line 1097
    :catch_0
    move-exception v6

    .local v6, "ignored":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method
