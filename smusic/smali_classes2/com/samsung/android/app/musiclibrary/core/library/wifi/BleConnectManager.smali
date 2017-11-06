.class public final Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;
.super Ljava/lang/Object;
.source "BleConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;,
        Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$M2TvExtra;,
        Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$M2TvReceiveIntent;,
        Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$M2TvSendIntent;
    }
.end annotation


# static fields
.field private static final BLE_EXTRA_BINDER:Ljava/lang/String; = "app_binder"

.field private static final BLE_EXTRA_PACKAGE:Ljava/lang/String; = "more_actions_package_name"

.field private static final BLE_EXTRA_SHARING_MODE:Ljava/lang/String; = "more_actions_screen_sharing_mode"

.field private static final BLE_SERVICE_ACTION:Ljava/lang/String; = "com.samsung.intent.action.CastingFinderService_Trigger"

.field private static final BLE_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.app.withtv.m2tvconnect.OMXCheckService"

.field private static final BLE_SERVICE_PACKAGE:Ljava/lang/String;

.field private static final SUPPORT_SMART_MIRRORING:Z

.field private static final TAG:Ljava/lang/String;

.field private static volatile sBleConnectManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;


# instance fields
.field private final mBleConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mIsDetectedTv:Z

.field private final mOnTvStateChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->TAG:Ljava/lang/String;

    .line 23
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x31706

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->SUPPORT_SMART_MIRRORING:Z

    .line 41
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->SUPPORT_SMART_MIRRORING:Z

    if-eqz v0, :cond_1

    .line 42
    const-string v0, "com.samsung.android.smartmirroring"

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->BLE_SERVICE_PACKAGE:Ljava/lang/String;

    .line 46
    :goto_1
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "com.samsung.android.app.withtv"

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->BLE_SERVICE_PACKAGE:Ljava/lang/String;

    goto :goto_1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mOnTvStateChangeListeners:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mIsDetectedTv:Z

    .line 184
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mBleConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mIsDetectedTv:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mOnTvStateChangeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getBleServiceIntent(Z)Landroid/content/Intent;
    .locals 5
    .param p1, "start"    # Z

    .prologue
    .line 91
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBleServiceIntent start : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v1, "i":Landroid/content/Intent;
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->SUPPORT_SMART_MIRRORING:Z

    if-eqz v2, :cond_1

    .line 95
    const-string v2, "com.samsung.intent.action.CastingFinderService_Trigger"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->BLE_SERVICE_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    if-eqz p1, :cond_0

    .line 98
    const-string v2, "more_actions_package_name"

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "app_binder"

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 102
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 107
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v1

    .line 105
    :cond_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->BLE_SERVICE_PACKAGE:Ljava/lang/String;

    const-string v3, "com.samsung.android.app.withtv.m2tvconnect.OMXCheckService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->sBleConnectManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    if-nez v0, :cond_1

    .line 62
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->sBleConnectManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->sBleConnectManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->sBleConnectManager:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.m2tv.TV_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "com.sec.android.m2tv.TV_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->SUPPORT_SMART_MIRRORING:Z

    if-nez v1, :cond_0

    .line 167
    const-string v1, "com.sec.android.m2tv.TV_LIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    :cond_0
    const-string v1, "com.sec.android.m2tv.TV_SHOW_TV_ON_DLG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "com.sec.android.m2tv.TV_CANCEL_TV_ON_DLG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mBleConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    return-void
.end method

.method public static requestAvailableDevice(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSupportDlna"    # Z

    .prologue
    .line 135
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->TAG:Ljava/lang/String;

    const-string v2, " requestAvailableDevice() is called"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.m2tv.TV_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "i":Landroid/content/Intent;
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->SUPPORT_SMART_MIRRORING:Z

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "more_actions_screen_sharing_mode"

    .line 140
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->getScreenSharingMode(Landroid/content/Context;Z)I

    move-result v2

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    :goto_0
    const-string v1, "extra_package"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    return-void

    .line 142
    :cond_0
    const-string v1, "popup_request"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static requestConnection(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "TvName"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestConnection() - TvName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.m2tv.TV_NAME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "tv_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method public static requestDisconnection(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->TAG:Ljava/lang/String;

    const-string v1, " requestDisconnection() is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.m2tv.TV_REQUEST_DISCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method private startBleService()V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startBleService() is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->getBleServiceIntent(Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->registerReceiver()V

    .line 81
    return-void
.end method

.method private stopBleService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBleService() is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->getBleServiceIntent(Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 86
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mIsDetectedTv:Z

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->unregisterReceiver()V

    .line 88
    return-void
.end method

.method private unregisterReceiver()V
    .locals 4

    .prologue
    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mBleConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterReceiver() - mOnTvStateChangeListeners.size(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mOnTvStateChangeListeners:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnTvStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;)V
    .locals 4
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mOnTvStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mOnTvStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 114
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->startBleService()V

    .line 117
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOnTvStateChangeListener() - size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public isDetectedTv()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mIsDetectedTv:Z

    return v0
.end method

.method public removeOnTvStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;)V
    .locals 4
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mOnTvStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mOnTvStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 124
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->stopBleService()V

    .line 127
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeOnTvStateChangeListener() - size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mIsDetectedTv:Z

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->mOnTvStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->unregisterReceiver()V

    .line 75
    return-void
.end method
