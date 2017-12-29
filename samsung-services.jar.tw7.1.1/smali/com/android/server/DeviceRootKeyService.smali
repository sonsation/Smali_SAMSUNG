.class public final Lcom/android/server/DeviceRootKeyService;
.super Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceRootKeyService$AllowList;,
        Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
    }
.end annotation


# static fields
.field private static final ERR_INVALID_ARUGEMENTS:I = -0x2

.field private static final ERR_PERMISSION_DENIED:I = -0x5

.field private static final ERR_WRITE_KEY_ERROR:I = -0xa

.field private static final KEY_TYPE_EC:I = 0x4

.field private static final KEY_TYPE_RSA:I = 0x1

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceRootKeyService"

.field private static final THREAD_TAG:Ljava/lang/String; = "DeviceRootKeyServiceSocket"

.field private static mContext:Landroid/content/Context;

.field private static mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

.field private static final mLock:Ljava/lang/Object;

.field private static mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;


# instance fields
.field private isAsciiData:Z

.field private isSocketThreadRequest:Z

.field private mNativeRequestedProcess:Ljava/lang/String;

.field private mRequestedProcess:Ljava/lang/String;

.field private mThreadSocket:Ljava/lang/Thread;


# direct methods
.method static synthetic -set0(Lcom/android/server/DeviceRootKeyService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/DeviceRootKeyService;->isAsciiData:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/DeviceRootKeyService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/DeviceRootKeyService;->isSocketThreadRequest:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/DeviceRootKeyService;IIZ)Z
    .locals 1
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "isSocketThead"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/DeviceRootKeyService;[B)[B
    .locals 1
    .param p1, "rawData"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->verifyTestDrkCommand([B)[B

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    .line 61
    const-string v0, "dk_native"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x3e8

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceRootKeyService;->isAsciiData:Z

    iput-boolean v4, p0, Lcom/android/server/DeviceRootKeyService;->isSocketThreadRequest:Z

    .line 99
    sput-object p1, Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;-><init>(Lcom/android/server/DeviceRootKeyService;)V

    const-string v2, "DeviceRootKeyServiceSocket"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService;->mThreadSocket:Ljava/lang/Thread;

    .line 101
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService;->mThreadSocket:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    new-instance v0, Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-direct {v0}, Lcom/android/server/DeviceRootKeyService$AllowList;-><init>()V

    sput-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    .line 104
    new-instance v0, Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-direct {v0}, Lcom/android/server/DeviceRootKeyService$AllowList;-><init>()V

    sput-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    .line 106
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->init()V

    .line 111
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "system"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 115
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "com.sec.keyverifier"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 119
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "com.samsung.android.spayfw"

    const/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 123
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "com.samsung.android.spayfw"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 129
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "com.samsung.android.softsim"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "com.samsung.android.authservice"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 135
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "com.samsung.android.app.devicerootkeyserviceclient"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 145
    :cond_0
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "system_server"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 149
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "/system/bin/sem_daemon"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 153
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "/system/bin/TigerService"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 157
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "TmsService.Process"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 162
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "com.sec.downloadablekeystore"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 166
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "com.skms.android.agent:remote"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 170
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "/system/bin/otp_server"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 172
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "dk_native_client_test"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 180
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "testprov"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 184
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "/data/sem"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 188
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "testMLDAP"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 192
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "/data/skpm"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 97
    :cond_1
    return-void
.end method

.method private native generateServiceKey(Ljava/lang/String;IZ)[B
.end method

.method private native getProcessName(I)Ljava/lang/String;
.end method

.method private hasAccessPermission(IIZ)Z
    .locals 9
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "isSocketThead"    # Z

    .prologue
    .line 199
    const-string v1, ""

    .line 202
    .local v1, "currentPkgName":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    sget-object v6, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-virtual {v6, v1, p2}, Lcom/android/server/DeviceRootKeyService$AllowList;->match(Ljava/lang/String;I)Z

    move-result v5

    .line 234
    .local v5, "ret":Z
    :goto_0
    if-eqz v5, :cond_4

    .line 236
    const-string v6, "DeviceRootKeyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requested package name = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-eqz p3, :cond_3

    .line 239
    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService;->mNativeRequestedProcess:Ljava/lang/String;

    .line 253
    :goto_1
    return v5

    .line 211
    .end local v5    # "ret":Z
    :cond_0
    :try_start_0
    sget-object v6, Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 213
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 215
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "processInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 217
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_1

    .line 219
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "processInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    sget-object v6, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-virtual {v6, v1, p2}, Lcom/android/server/DeviceRootKeyService$AllowList;->match(Ljava/lang/String;I)Z

    move-result v5

    .restart local v5    # "ret":Z
    goto :goto_0

    .line 225
    .end local v5    # "ret":Z
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "DeviceRootKeyService"

    const-string v7, "Error occurs on checking package name."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    const-string v1, ""

    goto :goto_2

    .line 241
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "ret":Z
    :cond_3
    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService;->mRequestedProcess:Ljava/lang/String;

    goto :goto_1

    .line 245
    :cond_4
    const-string v6, "DeviceRootKeyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission denied. Package name = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], UID = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eqz p3, :cond_5

    .line 248
    const-string v6, ""

    iput-object v6, p0, Lcom/android/server/DeviceRootKeyService;->mNativeRequestedProcess:Ljava/lang/String;

    goto :goto_1

    .line 250
    :cond_5
    const-string v6, ""

    iput-object v6, p0, Lcom/android/server/DeviceRootKeyService;->mRequestedProcess:Ljava/lang/String;

    goto :goto_1
.end method

.method private native init()V
.end method

.method private native installTestDrk([BZ)I
.end method

.method private native isExistDRK(I)I
.end method

.method private native readDrkUID(I)Ljava/lang/String;
.end method

.method private native releaseSession()V
.end method

.method private native tlvAdd(I[B)I
.end method

.method private native tlvInit()I
.end method

.method private native updateCertificateIssuedList(Ljava/lang/String;)Z
.end method

.method private native verifyTestDrkCommand([B)[B
.end method


# virtual methods
.method public createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .locals 12
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "keyType"    # I
    .param p3, "tlv"    # Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .prologue
    .line 314
    if-nez p3, :cond_0

    const/4 v1, 0x0

    .line 317
    .local v1, "isValidTlv":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZ)Z

    move-result v7

    if-nez v7, :cond_1

    .line 318
    const/4 v7, 0x0

    return-object v7

    .line 314
    .end local v1    # "isValidTlv":Z
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "isValidTlv":Z
    goto :goto_0

    .line 320
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 371
    :pswitch_0
    const-string v7, "DeviceRootKeyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is invalid."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v7, 0x0

    return-object v7

    .line 324
    :pswitch_1
    if-eqz v1, :cond_4

    .line 326
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->tlvInit()I

    move-result v4

    .line 328
    .local v4, "ret":I
    if-eqz v4, :cond_2

    .line 330
    const-string v7, "DeviceRootKeyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to init Tlv. Ret : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v7, 0x0

    return-object v7

    .line 334
    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->getValidKeyList()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "tlvTag$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 336
    .local v5, "tlvTag":I
    invoke-virtual {p3, v5}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->getTlvValue(I)[B

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/server/DeviceRootKeyService;->tlvAdd(I[B)I

    move-result v4

    if-eqz v4, :cond_3

    .line 338
    const-string v7, "DeviceRootKeyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to add Tlv. Ret : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v7, 0x0

    return-object v7

    .line 345
    .end local v4    # "ret":I
    .end local v5    # "tlvTag":I
    .end local v6    # "tlvTag$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_0
    sget-object v7, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/DeviceRootKeyService;->generateServiceKey(Ljava/lang/String;IZ)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "result":[B
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 356
    .end local v3    # "result":[B
    :goto_1
    new-instance v2, Ljava/lang/String;

    .line 357
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 358
    const-string v8, " Process : "

    .line 357
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 358
    iget-boolean v7, p0, Lcom/android/server/DeviceRootKeyService;->isSocketThreadRequest:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/DeviceRootKeyService;->mNativeRequestedProcess:Ljava/lang/String;

    .line 357
    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 359
    const-string v8, " , ServiceName : "

    .line 357
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 360
    const-string v8, " , Result : "

    .line 357
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 360
    if-eqz v3, :cond_7

    const-string v7, "Success."

    .line 357
    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 360
    const-string v8, "\n"

    .line 357
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 356
    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 362
    .local v2, "issuedLog":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/DeviceRootKeyService;->updateCertificateIssuedList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 363
    const-string v7, "DeviceRootKeyService"

    const-string v8, "Failed to update list."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_5
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/DeviceRootKeyService;->mRequestedProcess:Ljava/lang/String;

    .line 366
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/DeviceRootKeyService;->mNativeRequestedProcess:Ljava/lang/String;

    .line 368
    return-object v3

    .line 345
    .end local v2    # "issuedLog":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v7

    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "DeviceRootKeyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to generate. Name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", keyType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 352
    const-string v9, ", Ret : "

    .line 351
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 352
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    .line 351
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v3, 0x0

    .local v3, "result":[B
    goto/16 :goto_1

    .line 358
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "result":[B
    :cond_6
    iget-object v7, p0, Lcom/android/server/DeviceRootKeyService;->mRequestedProcess:Ljava/lang/String;

    goto :goto_2

    .line 360
    :cond_7
    const-string v7, "Failure."

    goto :goto_3

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDeviceRootKeyUID(I)Ljava/lang/String;
    .locals 5
    .param p1, "drkType"    # I

    .prologue
    const/4 v4, 0x0

    .line 288
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    return-object v4

    .line 291
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 307
    :pswitch_0
    const-string v1, "DeviceRootKeyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-object v4

    .line 296
    :pswitch_1
    :try_start_0
    sget-object v1, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->readDrkUID(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    monitor-exit v1

    return-object v2

    .line 296
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceRootKeyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read. Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-object v4

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isExistDeviceRootKey(I)Z
    .locals 5
    .param p1, "drkType"    # I

    .prologue
    const/4 v4, 0x0

    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, "ret":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    return v4

    .line 263
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 273
    :pswitch_0
    const-string v1, "DeviceRootKeyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v4

    .line 267
    :pswitch_1
    sget-object v1, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->isExistDRK(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    .line 277
    if-nez v0, :cond_1

    .line 278
    const/4 v1, 0x1

    return v1

    .line 267
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 281
    :cond_1
    const-string v1, "DeviceRootKeyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , Ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v4

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public releaseServiceKeySession()I
    .locals 2

    .prologue
    .line 378
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->releaseSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 382
    const/4 v0, 0x0

    return v0

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setDeviceRootKey([B)I
    .locals 8
    .param p1, "keyBlob"    # [B

    .prologue
    const/4 v5, 0x0

    .line 389
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 390
    const/4 v3, -0x5

    return v3

    .line 392
    :cond_0
    if-nez p1, :cond_1

    .line 393
    const/4 v3, -0x2

    return v3

    .line 396
    :cond_1
    :try_start_0
    sget-object v4, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/DeviceRootKeyService;->isAsciiData:Z

    invoke-direct {p0, p1, v3}, Lcom/android/server/DeviceRootKeyService;->installTestDrk([BZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .local v2, "ret":I
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 406
    :goto_0
    new-instance v1, Ljava/lang/String;

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 408
    const-string v4, " TestDeviceRootKey installation : "

    .line 407
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 408
    if-nez v2, :cond_3

    const-string v3, "Success."

    .line 407
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 408
    const-string v4, "\n"

    .line 407
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 410
    .local v1, "keyInstallationStatusLog":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/DeviceRootKeyService;->updateCertificateIssuedList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 411
    const-string v3, "DeviceRootKeyService"

    const-string v4, "Failed to update list."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_2
    return v2

    .line 396
    .end local v1    # "keyInstallationStatusLog":Ljava/lang/String;
    .end local v2    # "ret":I
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DeviceRootKeyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to install key. Ret : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/16 v2, -0xa

    .restart local v2    # "ret":I
    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v3, "Failure."

    goto :goto_1
.end method
