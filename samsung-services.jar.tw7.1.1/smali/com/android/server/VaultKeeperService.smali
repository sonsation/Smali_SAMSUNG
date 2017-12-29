.class public final Lcom/android/server/VaultKeeperService;
.super Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;
.source "VaultKeeperService.java"


# static fields
.field private static final ANDROID_SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final ANDROID_UID_SYSTEM:I = 0x3e8

.field private static final RSA2048_SIGNATURE_LEN:I = 0x100

.field private static final SERVICE_NOT_SUPPORT:I = 0x0

.field private static final SERVICE_SUPPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VaultKeeperService"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mServiceSupport:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "vaultkeeperjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    .line 67
    sput-object p1, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/android/server/VaultKeeperService;->nativeGetSystemSolution()I

    move-result v0

    iput v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 65
    return-void
.end method

.method private native nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[BLjava/lang/String;)I
.end method

.method private native nativeGetNonce(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeGetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeInitialize(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B)I
.end method

.method private native nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeIsRegistered(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeReadData(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private native nativeReadState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method private native nativeVerifyComplete(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)I
.end method

.method private native nativeVerifyRequest(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method private native nativeWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private validateParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 73
    if-nez p1, :cond_0

    .line 75
    const-string v0, "VaultKeeperService"

    const-string v1, "clientPkgName is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v2

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const-string v0, "VaultKeeperService"

    const-string v1, "clientPkgName is empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v2

    .line 85
    :cond_1
    if-nez p2, :cond_2

    .line 87
    const-string v0, "VaultKeeperService"

    const-string v1, "vaultName is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v2

    .line 91
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 93
    const-string v0, "VaultKeeperService"

    const-string v1, "vaultName is empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v2

    .line 97
    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public destroy(Ljava/lang/String;Ljava/lang/String;[B[B[BLjava/lang/String;)I
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;
    .param p3, "hmac"    # [B
    .param p4, "cert"    # [B
    .param p5, "sig"    # [B
    .param p6, "state"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x2

    .line 264
    const-string v0, "VaultKeeperService"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 268
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, -0x4

    return v0

    .line 272
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    return v3

    .line 275
    :cond_1
    if-eqz p3, :cond_2

    .line 277
    array-length v0, p3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    .line 279
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy : if hmac is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    array-length v2, p3

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    const-string v2, ")"

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v3

    .line 284
    :cond_2
    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    .line 286
    array-length v0, p4

    if-nez v0, :cond_3

    .line 288
    const-string v0, "VaultKeeperService"

    const-string v1, "initialize : if cert is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v3

    .line 292
    :cond_3
    array-length v0, p5

    const/16 v1, 0x100

    if-eq v0, v1, :cond_7

    .line 294
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize : if signature is exist, it should be 256, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v3

    .line 300
    :cond_4
    if-nez p4, :cond_5

    .line 301
    const-string v0, "VaultKeeperService"

    const-string v1, "destroy : cert is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_5
    if-nez p5, :cond_6

    .line 304
    const-string v0, "VaultKeeperService"

    const-string v1, "destroy : sig is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_6
    return v3

    .line 309
    :cond_7
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/VaultKeeperService;->nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[BLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 309
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getNonce(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 399
    const-string v0, "VaultKeeperService"

    const-string v1, "getNonce"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 403
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-object v3

    .line 407
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    return-object v3

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeGetNonce(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 410
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "vaultName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 103
    iget v7, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v7, :cond_0

    .line 105
    const-string v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VaultKeeper not support("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-object v10

    .line 109
    :cond_0
    const/4 v1, 0x0

    .line 111
    .local v1, "clientPkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/VaultKeeperService;->nativeGetProcessName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "system_server"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_1

    .line 113
    const-string v1, "system_server"

    .line 114
    .local v1, "clientPkgName":Ljava/lang/String;
    return-object v1

    .line 118
    .local v1, "clientPkgName":Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 119
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_2

    .line 120
    const-string v7, "VaultKeeperService"

    const-string v8, "ActivityManager is null, something wrong in framework"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-object v10

    .line 124
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_3

    .line 125
    const-string v7, "VaultKeeperService"

    const-string v8, "getRunningAppProcesses return null List. Cannot check permision"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v10

    .line 129
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "processInfo$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 130
    .local v5, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 131
    iget-object v1, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 132
    .local v1, "clientPkgName":Ljava/lang/String;
    const-string v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Matched clientPkgName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v1    # "clientPkgName":Ljava/lang/String;
    .end local v5    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_5
    sget-object v7, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 141
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x40

    :try_start_0
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 142
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    if-eq v7, v8, :cond_6

    .line 144
    const-string v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NOT Allowed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not match uid("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v10

    .line 148
    .restart local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    const-string v7, "android"

    invoke-virtual {v4, v7, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_7

    .line 150
    const-string v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NOT Allowed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isn\'t signed with platform key."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-object v10

    .line 154
    :cond_7
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeIsRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 156
    const-string v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Allowed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object v1

    .line 161
    :cond_8
    const-string v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NOT Allowed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is signed with platform key. but, itn\'t registered."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-object v10

    .line 167
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "VaultKeeperService"

    const-string v8, "Fail to check permission(Exception)"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B[B)I
    .locals 8
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;
    .param p3, "key"    # [B
    .param p4, "initialState"    # Ljava/lang/String;
    .param p5, "initialData"    # [B
    .param p6, "cert"    # [B
    .param p7, "sig"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 198
    const-string v0, "VaultKeeperService"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 202
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, -0x4

    return v0

    .line 206
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    return v3

    .line 209
    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    .line 211
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize : if key is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    array-length v2, p3

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    const-string v2, ")"

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v3

    .line 216
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 218
    const-string v0, "VaultKeeperService"

    const-string v1, "initialize : if initialState is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v3

    .line 222
    :cond_3
    if-eqz p5, :cond_4

    array-length v0, p5

    if-nez v0, :cond_4

    .line 224
    const-string v0, "VaultKeeperService"

    const-string v1, "initialize : if initialData is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return v3

    .line 228
    :cond_4
    if-nez p6, :cond_5

    .line 230
    const-string v0, "VaultKeeperService"

    const-string v1, "initialize : cert is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v3

    .line 234
    :cond_5
    array-length v0, p6

    if-nez v0, :cond_6

    .line 236
    const-string v0, "VaultKeeperService"

    const-string v1, "initialize : if cert is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v3

    .line 240
    :cond_6
    if-nez p7, :cond_7

    .line 242
    const-string v0, "VaultKeeperService"

    const-string v1, "initialize : sig is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return v3

    .line 246
    :cond_7
    array-length v0, p7

    const/16 v1, 0x100

    if-eq v0, v1, :cond_8

    .line 248
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize : if signature is exist, it should be 256, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return v3

    .line 252
    :cond_8
    array-length v0, p7

    array-length v1, p6

    add-int/2addr v0, v1

    new-array v6, v0, [B

    .line 253
    .local v6, "sigAndCert":[B
    array-length v0, p7

    invoke-static {p7, v2, v6, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 254
    array-length v0, p7

    array-length v1, p6

    invoke-static {p6, v2, v6, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 256
    iget-object v7, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 257
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/server/VaultKeeperService;->nativeInitialize(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public isInitialized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 178
    const-string v0, "VaultKeeperService"

    const-string v1, "isInitialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 182
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return v3

    .line 186
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    return v3

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public readData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 335
    const-string v0, "VaultKeeperService"

    const-string v1, "readData"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 339
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-object v3

    .line 343
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    return-object v3

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeReadData(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 346
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public readState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 316
    const-string v0, "VaultKeeperService"

    const-string v1, "readState"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 320
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-object v3

    .line 324
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    return-object v3

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeReadState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public verifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;
    .param p3, "cert"    # [B

    .prologue
    const/4 v3, 0x0

    .line 417
    const-string v0, "VaultKeeperService"

    const-string v1, "verifyCertificate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 421
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v3

    .line 425
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    return v3

    .line 428
    :cond_1
    if-nez p3, :cond_2

    .line 430
    const-string v0, "VaultKeeperService"

    const-string v1, "verifyCertificate : cert is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return v3

    .line 434
    :cond_2
    array-length v0, p3

    if-nez v0, :cond_3

    .line 436
    const-string v0, "VaultKeeperService"

    const-string v1, "verifyCertificate : certificate length is zero"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return v3

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 440
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public verifyComplete(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)I
    .locals 3
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;
    .param p3, "input"    # [B
    .param p4, "newState"    # Ljava/lang/String;
    .param p5, "newData"    # [B

    .prologue
    const/4 v2, -0x2

    .line 477
    const-string v0, "VaultKeeperService"

    const-string v1, "verifyComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 481
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v0, -0x4

    return v0

    .line 485
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    return v2

    .line 488
    :cond_1
    if-nez p4, :cond_2

    if-nez p5, :cond_2

    .line 490
    const-string v0, "VaultKeeperService"

    const-string v1, "verifyComplete : There is nothing to do."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return v2

    .line 494
    :cond_2
    if-nez p3, :cond_3

    .line 496
    const-string v0, "VaultKeeperService"

    const-string v1, "verifyComplete : input is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return v2

    .line 500
    :cond_3
    array-length v0, p3

    if-nez v0, :cond_4

    .line 502
    const-string v0, "VaultKeeperService"

    const-string v1, "verifyComplete : if input is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return v2

    .line 506
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 508
    const-string v0, "VaultKeeperService"

    const-string v1, "verifyComplete : if newState is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return v2

    .line 512
    :cond_5
    if-eqz p5, :cond_6

    array-length v0, p5

    if-nez v0, :cond_6

    .line 514
    const-string v0, "VaultKeeperService"

    const-string v1, "verifyComplete : if newData is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return v2

    .line 518
    :cond_6
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VaultKeeperService;->nativeVerifyComplete(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 518
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public verifyRequest(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;
    .param p3, "input"    # [B

    .prologue
    const/4 v3, 0x0

    .line 446
    const-string v0, "VaultKeeperService"

    const-string v1, "verifyRequest"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 450
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-object v3

    .line 454
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    return-object v3

    .line 457
    :cond_1
    if-nez p3, :cond_2

    .line 459
    const-string v0, "VaultKeeperService"

    const-string v1, "verifyRequest : input is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-object v3

    .line 463
    :cond_2
    array-length v0, p3

    if-nez v0, :cond_3

    .line 465
    const-string v0, "VaultKeeperService"

    const-string v1, "verifyRequest : if input is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-object v3

    .line 469
    :cond_3
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeVerifyRequest(Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 469
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "passcode"    # [B
    .param p6, "hmac"    # [B

    .prologue
    const/16 v2, 0x20

    const/4 v3, -0x2

    .line 354
    const-string v0, "VaultKeeperService"

    const-string v1, "write"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 358
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, -0x4

    return v0

    .line 362
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    return v3

    .line 365
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 367
    const-string v0, "VaultKeeperService"

    const-string v1, "write : if state is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return v3

    .line 371
    :cond_2
    if-eqz p4, :cond_3

    array-length v0, p4

    if-nez v0, :cond_3

    .line 373
    const-string v0, "VaultKeeperService"

    const-string v1, "write : if data is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v3

    .line 377
    :cond_3
    if-eqz p5, :cond_4

    array-length v0, p5

    if-eq v0, v2, :cond_4

    .line 379
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write : if passcode is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 380
    array-length v2, p5

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 380
    const-string v2, ")"

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v3

    .line 384
    :cond_4
    if-eqz p6, :cond_5

    array-length v0, p6

    if-eq v0, v2, :cond_5

    .line 386
    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write : if hmac is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 387
    array-length v2, p6

    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 387
    const-string v2, ")"

    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return v3

    .line 391
    :cond_5
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/VaultKeeperService;->nativeWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 391
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
