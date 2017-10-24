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
    const-string/jumbo v0, "vaultkeeperjni"

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

.method private native nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B)I
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
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "clientPkgName is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v2

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "clientPkgName is empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v2

    .line 85
    :cond_1
    if-nez p2, :cond_2

    .line 87
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "vaultName is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v2

    .line 91
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 93
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "vaultName is empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v2

    .line 97
    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public destroy(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 4
    .param p1, "clientPkgName"    # Ljava/lang/String;
    .param p2, "vaultName"    # Ljava/lang/String;
    .param p3, "hmac"    # [B

    .prologue
    const/4 v3, -0x2

    .line 264
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 268
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

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
    if-nez p3, :cond_2

    .line 277
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "destroy : hmac is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return v3

    .line 281
    :cond_2
    array-length v0, p3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    .line 283
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroy : if hmac is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    array-length v2, p3

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    const-string/jumbo v2, ")"

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v3

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 288
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

    .line 378
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "getNonce"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 382
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-object v3

    .line 386
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    return-object v3

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeGetNonce(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 389
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
    const-string/jumbo v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VaultKeeper not support("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

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

    const-string/jumbo v8, "system_server"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_1

    .line 113
    const-string/jumbo v1, "system_server"

    .line 114
    .local v1, "clientPkgName":Ljava/lang/String;
    return-object v1

    .line 118
    .local v1, "clientPkgName":Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 119
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_2

    .line 120
    const-string/jumbo v7, "VaultKeeperService"

    const-string/jumbo v8, "ActivityManager is null, something wrong in framework"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-object v10

    .line 124
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "processInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 125
    .local v5, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-nez v5, :cond_4

    .line 126
    const-string/jumbo v7, "VaultKeeperService"

    const-string/jumbo v8, "Am return null List for running app process. Cannot get package name"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v10

    .line 130
    :cond_4
    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 131
    iget-object v1, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 132
    .local v1, "clientPkgName":Ljava/lang/String;
    const-string/jumbo v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Matched clientPkgName : "

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
    const-string/jumbo v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NOT Allowed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not match uid("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

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
    const-string/jumbo v7, "android"

    invoke-virtual {v4, v7, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_7

    .line 150
    const-string/jumbo v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NOT Allowed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isn\'t signed with platform key."

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
    const-string/jumbo v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Allowed : "

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
    const-string/jumbo v7, "VaultKeeperService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NOT Allowed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is signed with platform key. but, itn\'t registered."

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
    const-string/jumbo v7, "VaultKeeperService"

    const-string/jumbo v8, "Fail to check permission(Exception)"

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
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 202
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

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
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initialize : if key is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    array-length v2, p3

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    const-string/jumbo v2, ")"

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
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize : if initialState is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v3

    .line 222
    :cond_3
    if-eqz p5, :cond_4

    array-length v0, p5

    if-nez v0, :cond_4

    .line 224
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize : if initialData is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return v3

    .line 228
    :cond_4
    if-nez p6, :cond_5

    .line 230
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize : cert is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v3

    .line 234
    :cond_5
    array-length v0, p6

    if-nez v0, :cond_6

    .line 236
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize : if cert is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v3

    .line 240
    :cond_6
    if-nez p7, :cond_7

    .line 242
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize : sig is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return v3

    .line 246
    :cond_7
    array-length v0, p7

    const/16 v1, 0x100

    if-eq v0, v1, :cond_8

    .line 248
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initialize : if signature is exist, it should be 256, but "

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
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "isInitialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 182
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

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

    .line 314
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "readData"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 318
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-object v3

    .line 322
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    return-object v3

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeReadData(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 325
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

    .line 295
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "readState"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 299
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-object v3

    .line 303
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    return-object v3

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeReadState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 306
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

    .line 396
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyCertificate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 400
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return v3

    .line 404
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    return v3

    .line 407
    :cond_1
    if-nez p3, :cond_2

    .line 409
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyCertificate : cert is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return v3

    .line 413
    :cond_2
    array-length v0, p3

    if-nez v0, :cond_3

    .line 415
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyCertificate : certificate length is zero"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v3

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 419
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

    .line 456
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 460
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v0, -0x4

    return v0

    .line 464
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    return v2

    .line 467
    :cond_1
    if-nez p4, :cond_2

    if-nez p5, :cond_2

    .line 469
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyComplete : There is nothing to do."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return v2

    .line 473
    :cond_2
    if-nez p3, :cond_3

    .line 475
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyComplete : input is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return v2

    .line 479
    :cond_3
    array-length v0, p3

    if-nez v0, :cond_4

    .line 481
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyComplete : if input is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return v2

    .line 485
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 487
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyComplete : if newState is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v2

    .line 491
    :cond_5
    if-eqz p5, :cond_6

    array-length v0, p5

    if-nez v0, :cond_6

    .line 493
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyComplete : if newData is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return v2

    .line 497
    :cond_6
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VaultKeeperService;->nativeVerifyComplete(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 497
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

    .line 425
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyRequest"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 429
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-object v3

    .line 433
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    return-object v3

    .line 436
    :cond_1
    if-nez p3, :cond_2

    .line 438
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyRequest : input is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-object v3

    .line 442
    :cond_2
    array-length v0, p3

    if-nez v0, :cond_3

    .line 444
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyRequest : if input is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-object v3

    .line 448
    :cond_3
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeVerifyRequest(Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 448
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

    .line 333
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "write"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    .line 337
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, -0x4

    return v0

    .line 341
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/VaultKeeperService;->validateParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    return v3

    .line 344
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 346
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "write : if state is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return v3

    .line 350
    :cond_2
    if-eqz p4, :cond_3

    array-length v0, p4

    if-nez v0, :cond_3

    .line 352
    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "write : if data is exist, it should contain value."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return v3

    .line 356
    :cond_3
    if-eqz p5, :cond_4

    array-length v0, p5

    if-eq v0, v2, :cond_4

    .line 358
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write : if passcode is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    array-length v2, p5

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    const-string/jumbo v2, ")"

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return v3

    .line 363
    :cond_4
    if-eqz p6, :cond_5

    array-length v0, p6

    if-eq v0, v2, :cond_5

    .line 365
    const-string/jumbo v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write : if hmac is exist, it should be 32 Bytes. but now("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    array-length v2, p6

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    const-string/jumbo v2, ")"

    .line 365
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return v3

    .line 370
    :cond_5
    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/VaultKeeperService;->nativeWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
