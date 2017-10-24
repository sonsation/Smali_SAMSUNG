.class public Lcom/sec/rll/ExtControlDeviceService;
.super Lcom/sec/rll/IExtControlDeviceService$Stub;
.source "ExtControlDeviceService.java"


# static fields
.field private static final ACTION_NFC_POLICY_CHANGED:Ljava/lang/String; = "android.action.nfc.policychanged"

.field private static final DEVICE_GPS:I = 0x1001

.field private static final DEVICE_NFC:I = 0x2001

.field private static final PROPERTY_NFC_LOCKOUT:Ljava/lang/String; = "persist.security.nfc.lockout"

.field private static final STATUS_DISABLED:I = 0x0

.field private static final STATUS_ENABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SRIB-ExtControlDeviceService"

.field private static mContext:Landroid/content/Context;

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field private static mUid:I

.field private static sService:Lcom/sec/rll/ExtControlDeviceService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sec/rll/IExtControlDeviceService$Stub;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/rll/ExtControlDeviceService;
    .locals 2

    .prologue
    const-class v1, Lcom/sec/rll/ExtControlDeviceService;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/sec/rll/ExtControlDeviceService;->sService:Lcom/sec/rll/ExtControlDeviceService;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/sec/rll/ExtControlDeviceService;

    invoke-direct {v0}, Lcom/sec/rll/ExtControlDeviceService;-><init>()V

    sput-object v0, Lcom/sec/rll/ExtControlDeviceService;->sService:Lcom/sec/rll/ExtControlDeviceService;

    .line 45
    :cond_0
    sget-object v0, Lcom/sec/rll/ExtControlDeviceService;->sService:Lcom/sec/rll/ExtControlDeviceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getNfcState()I
    .locals 2

    .prologue
    .line 116
    const-string/jumbo v0, "persist.security.nfc.lockout"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sput-object p0, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/sec/rll/ExtControlDeviceService;->mUid:I

    .line 38
    sget-object v0, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/sec/rll/ExtControlDeviceService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 35
    return-void
.end method

.method private isAccessPermitted()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 130
    .local v0, "callerUid":I
    sget v3, Lcom/sec/rll/ExtControlDeviceService;->mUid:I

    if-ne v0, v3, :cond_0

    .line 131
    const-string/jumbo v3, "SRIB-ExtControlDeviceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UID matches - access granted to uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v7

    .line 136
    :cond_0
    sget-object v3, Lcom/sec/rll/ExtControlDeviceService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "packages":[Ljava/lang/String;
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v2, v1, v3

    .line 141
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v6, "com.example.testrll"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 142
    const-string/jumbo v6, "com.kddi.extcontroldevice"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 141
    if-eqz v6, :cond_2

    .line 143
    :cond_1
    const-string/jumbo v3, "SRIB-ExtControlDeviceService"

    const-string/jumbo v4, "Allowing RLL access"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v7

    .line 138
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "SRIB-ExtControlDeviceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Access denied to UID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v4
.end method

.method private static setLocationMode(I)Z
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 122
    sget-object v0, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "location_mode"

    .line 122
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static setNfcState(I)V
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 107
    const-string/jumbo v1, "persist.security.nfc.lockout"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.action.nfc.policychanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "nfcIntent":Landroid/content/Intent;
    const-string/jumbo v1, "NfcState"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    sget-object v1, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    return-void
.end method


# virtual methods
.method public getStatus(I)I
    .locals 7
    .param p1, "deviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    const-string/jumbo v1, "SRIB-ExtControlDeviceService"

    const-string/jumbo v2, "getStatus called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/sec/rll/ExtControlDeviceService;->isAccessPermitted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const/4 v1, -0x1

    return v1

    .line 161
    :cond_0
    const/16 v1, 0x1001

    if-ne p1, v1, :cond_3

    .line 163
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 164
    const-string/jumbo v1, "SRIB-ExtControlDeviceService"

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get gps state called return value  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 167
    sget-object v3, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 168
    const-string/jumbo v4, "location_mode"

    .line 166
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v1, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, "currentMode":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v6, :cond_2

    .line 173
    :cond_1
    return v6

    .line 175
    :cond_2
    return v5

    .line 177
    .end local v0    # "currentMode":I
    :cond_3
    const/16 v1, 0x2001

    if-ne p1, v1, :cond_4

    .line 179
    const-string/jumbo v1, "SRIB-ExtControlDeviceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get nfc/felica state called return value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    invoke-static {}, Lcom/sec/rll/ExtControlDeviceService;->getNfcState()I

    move-result v3

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Lcom/sec/rll/ExtControlDeviceService;->getNfcState()I

    move-result v1

    return v1

    .line 184
    :cond_4
    return v5
.end method

.method public setStatus(II)V
    .locals 6
    .param p1, "deviceType"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 51
    const-string/jumbo v2, "SRIB-ExtControlDeviceService"

    const-string/jumbo v3, "setStatus called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/sec/rll/ExtControlDeviceService;->isAccessPermitted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    const/16 v2, 0x1001

    if-ne p1, v2, :cond_6

    .line 59
    const-string/jumbo v2, "SRIB-ExtControlDeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set gps state called with state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 62
    sget-object v2, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, "currentMode":I
    const/4 v1, 0x3

    .line 64
    .local v1, "mode":I
    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    sget-object v2, Lcom/sec/rll/ExtControlDeviceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 96
    const-string/jumbo v3, "location_mode"

    .line 95
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 49
    .end local v0    # "currentMode":I
    .end local v1    # "mode":I
    :cond_1
    :goto_1
    return-void

    .line 66
    .restart local v0    # "currentMode":I
    .restart local v1    # "mode":I
    :pswitch_0
    if-ne p2, v5, :cond_2

    .line 67
    const/4 v1, 0x3

    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    .line 73
    :pswitch_1
    if-ne p2, v5, :cond_3

    .line 74
    const/4 v1, 0x3

    goto :goto_0

    .line 76
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 80
    :pswitch_2
    if-ne p2, v5, :cond_4

    .line 81
    const/4 v1, 0x1

    goto :goto_0

    .line 83
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 87
    :pswitch_3
    if-ne p2, v5, :cond_5

    .line 88
    const/4 v1, 0x1

    goto :goto_0

    .line 90
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 97
    .end local v0    # "currentMode":I
    .end local v1    # "mode":I
    :cond_6
    const/16 v2, 0x2001

    if-ne p1, v2, :cond_1

    .line 99
    const-string/jumbo v2, "SRIB-ExtControlDeviceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set NFC/Felica state called with state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p2}, Lcom/sec/rll/ExtControlDeviceService;->setNfcState(I)V

    goto :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
