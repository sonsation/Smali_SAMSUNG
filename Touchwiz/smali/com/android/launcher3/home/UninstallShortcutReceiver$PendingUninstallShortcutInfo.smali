.class Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;
.super Lcom/android/launcher3/home/ExternalRequestInfo;
.source "UninstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/UninstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingUninstallShortcutInfo"
.end annotation


# instance fields
.field final data:Landroid/content/Intent;

.field final duplicate:Z

.field final label:Ljava/lang/String;

.field launchIntent:Landroid/content/Intent;

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;J)V
    .locals 11
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "time"    # J

    .prologue
    const-wide/16 v8, -0x1

    .line 164
    const/4 v6, 0x2

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-direct {p0, v6, v7, p3, p4}, Lcom/android/launcher3/home/ExternalRequestInfo;-><init>(ILcom/android/launcher3/common/compat/UserHandleCompat;J)V

    .line 165
    iput-object p1, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->data:Landroid/content/Intent;

    .line 166
    iput-object p2, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 168
    const-string v6, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    iput-object v6, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 169
    const-string v6, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->label:Ljava/lang/String;

    .line 170
    const-string v6, "duplicate"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->duplicate:Z

    .line 172
    iget-object v6, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-static {v6, p1}, Lcom/android/launcher3/home/InstallShortcutReceiver;->convertKnoxLiveIconIntent(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 173
    iget-object v6, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const-string v7, "userid"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 174
    .local v1, "userId":I
    invoke-static {p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v6

    int-to-long v8, v1

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 185
    .end local v1    # "userId":I
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    .line 187
    .local v0, "intentUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    if-eqz v0, :cond_1

    .line 188
    iput-object v0, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 189
    const-string v6, "UninstallShortcut"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXTRA_USER "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v8}, Lcom/android/launcher3/common/compat/UserHandleCompat;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0    # "intentUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    return-void

    .line 175
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    invoke-static {p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 177
    .local v4, "serialNumber":J
    iget-object v6, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 178
    iget-object v6, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "profile"

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 179
    .local v2, "profile":J
    cmp-long v6, v2, v8

    if-eqz v6, :cond_3

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 180
    move-wide v4, v2

    .line 183
    .end local v2    # "profile":J
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/ComponentName;J)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public encodeToString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 195
    iget-object v2, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    .line 202
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "type"

    .line 203
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "time"

    .line 204
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->requestTime:J

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "intent.launch"

    .line 205
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "name"

    .line 206
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "duplicate"

    .line 207
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->duplicate:Z

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "userHandle"

    .line 208
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 209
    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 208
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 210
    .local v1, "json":Lorg/json/JSONStringer;
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 214
    .end local v1    # "json":Lorg/json/JSONStringer;
    :goto_0
    return-object v2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "UninstallShortcut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when adding uninstall shortcut: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 242
    :cond_0
    :goto_0
    return-object v0

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 240
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public runRequestInfo(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    .line 220
    .local v6, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {p0}, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    .line 221
    .local v8, "packageName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 223
    .local v7, "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_0
    invoke-static {p1}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.da.daagent"

    .line 224
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    .line 227
    :cond_0
    invoke-static {p1, v8, v7}, Lcom/android/launcher3/LauncherModel;->isValidPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    const-string v0, "UninstallShortcut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring shortcut for absent package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v7    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_1
    return-void

    .line 222
    :cond_1
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->label:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    iget-boolean v5, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->duplicate:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeLoader;->removeWorkspaceItem(ZILjava/lang/String;Landroid/content/Intent;Z)V

    goto :goto_1
.end method
