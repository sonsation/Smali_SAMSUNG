.class public abstract Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;
.source "BaseMilkServiceActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;
.implements Lcom/samsung/android/app/music/common/activity/MilkServiceStateObservable;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
.implements Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseMilkServiceActivity"


# instance fields
.field private mActivityResultCallback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/common/activity/ActivityResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;

.field protected final mServiceStateListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mServiceStateListener:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity$1;-><init>(Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private isMilkServiceConnected()Z
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    return v0
.end method

.method private unbindService()V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 170
    return-void
.end method


# virtual methods
.method public addOnServiceStateListener(Landroid/content/ServiceConnection;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/ServiceConnection;

    .prologue
    .line 222
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mServiceStateListener:Ljava/util/ArrayList;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mServiceStateListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bindService()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 166
    return-void
.end method

.method public enableExplicit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 134
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "explicit_option"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    const-string v0, "explicit"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->syncSettings(Ljava/lang/String;I)V

    .line 137
    return-void
.end method

.method public getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    const-string v6, "BaseMilkServiceActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActivityResult() requestCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resultCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mActivityResultCallback:Landroid/util/SparseArray;

    if-eqz v6, :cond_0

    .line 92
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mActivityResultCallback:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/ActivityResultCallback;

    .line 93
    .local v0, "callback":Lcom/samsung/android/app/music/common/activity/ActivityResultCallback;
    if-eqz v0, :cond_0

    .line 94
    const-string v6, "BaseMilkServiceActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActivityResult mActivityResultCallback : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", requestCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", resultCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/common/activity/ActivityResultCallback;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mActivityResultCallback:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 101
    .end local v0    # "callback":Lcom/samsung/android/app/music/common/activity/ActivityResultCallback;
    :cond_0
    const/16 v6, 0x2711

    if-ne p1, v6, :cond_2

    .line 102
    const/4 v6, -0x1

    if-ne p2, v6, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, p0, v7}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->requestLogin(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Z)I

    .line 130
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    return-void

    .line 105
    :cond_2
    const/16 v6, 0x7531

    if-ne p1, v6, :cond_1

    .line 106
    const/16 v6, 0x3e9

    if-ne p2, v6, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->enableExplicit()V

    .line 109
    const/4 v4, 0x0

    .line 110
    .local v4, "isCertificated":Z
    if-eqz p3, :cond_3

    .line 111
    const-string v6, "N"

    const/4 v7, 0x0

    .line 112
    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v5

    .line 116
    .local v5, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v5, :cond_4

    .line 117
    if-eqz v4, :cond_5

    const-string v6, "1"

    :goto_1
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/model/UserInfo;->setAdultCertifyYn(Ljava/lang/String;)V

    .line 121
    :cond_4
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 122
    .local v2, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyyMMddHHmmss"

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 124
    .local v3, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "curDate":Ljava/lang/String;
    const-string v6, "com.samsung.radio.certified.date"

    invoke-static {p0, v6, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    const-string v7, "1"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->updateUserInfo(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/PushInfo;)I

    goto :goto_0

    .line 117
    .end local v1    # "curDate":Ljava/lang/String;
    .end local v2    # "date":Ljava/util/Date;
    .end local v3    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_5
    const-string v6, "0"

    goto :goto_1
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 241
    const-string v0, "BaseMilkServiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 246
    const-string v0, "BaseMilkServiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rspType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mActivityResultCallback:Landroid/util/SparseArray;

    .line 53
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.app.music.SA_ACCSSTOKEN_EXCEPTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onDestroy()V

    .line 175
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->isMilkServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "BaseMilkServiceActivity"

    const-string/jumbo v1, "onStop() unbindService"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->unbindService()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mActivityResultCallback:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mActivityResultCallback:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mActivityResultCallback:Landroid/util/SparseArray;

    .line 187
    :cond_2
    return-void
.end method

.method public onPermissionResult([Ljava/lang/String;[I)V
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 150
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->isAllGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "BaseMilkServiceActivity"

    const-string/jumbo v1, "onRequestPermissionsResult() All permission granted. start bindService"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->bindService()V

    .line 157
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 63
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->isAllGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "BaseMilkServiceActivity"

    const-string/jumbo v1, "onStart() All permission granted. start bindService"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->bindService()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v0, "BaseMilkServiceActivity"

    const-string/jumbo v1, "onStart() All(or some) permission is not granted"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mServiceStateListener:Ljava/util/ArrayList;

    monitor-enter v2

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mServiceStateListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    .line 198
    .local v0, "listener":Landroid/content/ServiceConnection;
    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 200
    .end local v0    # "listener":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mServiceStateListener:Ljava/util/ArrayList;

    monitor-enter v2

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mServiceStateListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    .line 209
    .local v0, "listener":Landroid/content/ServiceConnection;
    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 211
    .end local v0    # "listener":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :cond_1
    return-void
.end method

.method public registActivityResultCallback(ILcom/samsung/android/app/music/common/activity/ActivityResultCallback;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "callback"    # Lcom/samsung/android/app/music/common/activity/ActivityResultCallback;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mActivityResultCallback:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mActivityResultCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    :cond_0
    return-void
.end method

.method public removeOnServiceStateListener(Landroid/content/ServiceConnection;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/ServiceConnection;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mServiceStateListener:Ljava/util/ArrayList;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->mServiceStateListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 236
    monitor-exit v1

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected syncSettings(Ljava/lang/String;I)V
    .locals 5
    .param p1, "mapKey"    # Ljava/lang/String;
    .param p2, "settingValue"    # I

    .prologue
    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v1, "settingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "mapValue":Ljava/lang/String;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->saveSettings(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/HashMap;Ljava/util/ArrayList;Z)I

    .line 145
    return-void
.end method
