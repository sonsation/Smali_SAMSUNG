.class public Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
.super Ljava/lang/Object;
.source "SystemUIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;
    }
.end annotation


# static fields
.field private static final KEY_STATUSBAR_EXPANSION:Ljava/lang/String; = "knoxmdm_key_statusbar_disable_expansion"

.field public static final SYSTEM_UI_PACAKGAE:Ljava/lang/String; = "android.uid.systemui"

.field private static final TAG:Ljava/lang/String; = "SystemUIAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# instance fields
.field private isCallbackDied:Z

.field private isFistcalled:Z

.field private mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

.field private mRegistedCount:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    .line 38
    iput-boolean v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    .line 40
    iput-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 41
    iput-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBar:Landroid/app/StatusBarManager;

    .line 42
    iput-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 44
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    .line 116
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBar:Landroid/app/StatusBarManager;

    .line 117
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 115
    return-void
.end method

.method private getCurrentUserId()I
    .locals 7

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 174
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 177
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    :goto_0
    if-eqz v1, :cond_0

    .line 180
    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCurrentUserId() userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    return v1

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 177
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    throw v4
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 137
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    .line 138
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 140
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSecurityPolicy()Lcom/samsung/android/knox/ISecurityPolicy;
    .locals 2

    .prologue
    .line 128
    const-string/jumbo v1, "security_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    .line 129
    .local v0, "mService":Lcom/samsung/android/knox/ISecurityPolicy;
    return-object v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 122
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private isCalledFromSystem()Z
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 144
    const-string/jumbo v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCalledFromSystem() : no permission because non-system : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isCalledFromSystemUI()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "caller":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 156
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    .end local v0    # "caller":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v3, "android.uid.systemui"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    const/4 v3, 0x1

    return v3

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "isCalledFromSystemUI() : fail to get caller name. "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    const/4 v0, 0x0

    .local v0, "caller":Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v0    # "caller":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCalledFromSystemUI() : no permission because not systemui : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v6
.end method

.method private onKeyguardLaunched()V
    .locals 5

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 93
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getSecurityPolicy()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    if-eqz v1, :cond_0

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    .line 95
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getSecurityPolicy()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/knox/ISecurityPolicy;->onKeyguardLaunched()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "SystemUIAdapter"

    const-string/jumbo v4, "onKeyguardLaunched() has failed."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 99
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 100
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    throw v1
.end method


# virtual methods
.method public clearAllNotificationsAsUser(I)Z
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 207
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clearAllNotificationsAsUser() userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    const/4 v3, 0x0

    return v3

    .line 211
    :cond_0
    const/4 v1, 0x1

    .line 212
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 214
    .local v4, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 215
    .local v2, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v2, :cond_1

    .line 216
    const/4 v1, 0x0

    .line 224
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    .end local v2    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_1
    return v1

    .line 218
    .restart local v2    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    :try_start_1
    invoke-interface {v2, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    .end local v2    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v6, "clearAllNotificationsAsUser failed with Exception"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    const/4 v1, 0x0

    .line 224
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 223
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 224
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    throw v3
.end method

.method public excludeExternalStorageForFailedPasswordsWipeAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 358
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "excludeExternalStorageForFailedPasswordsWipeAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", exclude = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 360
    return-void

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 363
    return-void

    .line 366
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->excludeExternalStorageForFailedPasswordsWipe(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 357
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "excludeExternalStorageForFailedPasswordsWipe() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "excludeExternalStorageForFailedPasswordsWipe() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getRegistedCount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    return v0
.end method

.method public isComContainerId(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 188
    .local v2, "token":J
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerId(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 192
    .local v1, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    .end local v1    # "ret":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 195
    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isComContainerId() userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    return v1

    .line 189
    .local v1, "ret":Z
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "isComContainerId() has failed. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 192
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    throw v4
.end method

.method public isKnoxStateMonitorRegisted()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-boolean v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z
    .locals 6
    .param p1, "callback"    # Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .prologue
    const/4 v5, 0x0

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystemUI()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    const-string/jumbo v2, "SystemUIAdapter"

    const-string/jumbo v3, "registerSystemUICallback() has failed because it\'s only allowed to call by SystemUI "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v1

    .line 66
    :cond_0
    if-eqz p1, :cond_1

    .line 67
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;

    iget v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    invoke-direct {v3, p0, v4}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;-><init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    .line 72
    const/4 v1, 0x1

    .line 73
    const-string/jumbo v2, "SystemUIAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerSystemUICallback() callback has registed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->updateSystemUIMonitor(I)V

    .line 75
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->onKeyguardLaunched()V

    .line 79
    :goto_1
    return v1

    .line 77
    :cond_1
    const-string/jumbo v2, "SystemUIAdapter"

    const-string/jumbo v3, "registerSystemUICallback() has failed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .local v0, "ignore":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setAirplaneModeAllowedAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 428
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAirplaneModeAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 430
    return-void

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 433
    return-void

    .line 436
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setAirplaneModeAllowed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 427
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setAirplaneModeAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 437
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setAirplaneModeAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setBluetoothAllowedAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 562
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 564
    return-void

    .line 566
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 567
    return-void

    .line 570
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setBluetoothAllowed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 561
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setBluetoothAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 571
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 572
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setBluetoothAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setCellularDataAllowedAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 493
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCellularDataAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 495
    return-void

    .line 497
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 498
    return-void

    .line 501
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setCellularDataAllowed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 492
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setCellularDataAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 502
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 503
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setCellularDataAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setGPSStateChangeAllowedAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 682
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setGPSStateChangeAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 684
    return-void

    .line 686
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 687
    return-void

    .line 690
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setGPSStateChangeAllowed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 681
    :goto_0
    return-void

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setGPSStateChangeAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 691
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 692
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setGPSStateChangeAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setKioskModeEnabledAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 289
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKioskModeEnabled() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 294
    return-void

    .line 297
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setKioskModeEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 288
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setKioskModeEnabled() failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setKioskModeEnabled() failed with NullPointerException."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 302
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setLocationProviderAllowedAsUser(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "isAllowed"    # Z

    .prologue
    .line 659
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLocationProviderAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", provider = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 661
    return-void

    .line 663
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 664
    return-void

    .line 667
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2, p3}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLocationProviderAllowed(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 658
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLocationProviderAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 668
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 669
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLocationProviderAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setLockedIccIdsAsUser(I[Ljava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "iccIds"    # [Ljava/lang/String;

    .prologue
    .line 706
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLockedIccIdsAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 708
    return-void

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 711
    return-void

    .line 714
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLockedIccIds([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 705
    :goto_0
    return-void

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLockedIccIdsAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 715
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 716
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLockedIccIdsAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 719
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setLockscreenInvisibleOverlayAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 728
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLockscreenInvisibleOverlayAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 730
    return-void

    .line 732
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 733
    return-void

    .line 736
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLockscreenInvisibleOverlay(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 727
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLockscreenInvisibleOverlayAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 737
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 738
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLockscreenInvisibleOverlayAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 741
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setLockscreenWallpaperAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 750
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLockscreenWallpaperAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 752
    return-void

    .line 754
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 755
    return-void

    .line 758
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLockscreenWallpaper(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 749
    :goto_0
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLockscreenWallpaperAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 759
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 760
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLockscreenWallpaperAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 763
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForDisableAsUser(II)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "num"    # I

    .prologue
    .line 314
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMaximumFailedPasswordsForDisableAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    return-void

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 319
    return-void

    .line 322
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setMaximumFailedPasswordsForDisable(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 313
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setMaximumFailedPasswordsForDisable() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 323
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setMaximumFailedPasswordsForDisable() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setNFCAllowedAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 515
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNFCAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 517
    return-void

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 520
    return-void

    .line 523
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setNFCAllowed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 514
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setNFCAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 524
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 525
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setNFCAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setNFCStateChangeAllowedAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 587
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNFCStateChangeAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 589
    return-void

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 592
    return-void

    .line 595
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setNFCStateChangeAllowed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 586
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setNFCStateChangeAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 596
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 597
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setNFCStateChangeAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setNavigationBarHiddenAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "hidden"    # Z

    .prologue
    .line 262
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNavigationBarHiddenAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hidden = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    return-void

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_2

    .line 269
    return-void

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result p1

    .line 275
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setNavigationBarHidden(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 261
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setNavigationBarHidden() failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setNavigationBarHidden() failed with NullPointerException."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 280
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setPasswordLockDelayAsUser(II)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "time"    # I

    .prologue
    .line 380
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPasswordLockDelayAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 382
    return-void

    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 385
    return-void

    .line 388
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setPasswordLockDelay(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 379
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setPasswordLockDelay() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 389
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setPasswordLockDelay() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setPwdChangeRequestedAsUser(II)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "flag"    # I

    .prologue
    .line 336
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPwdChangeRequestedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    return-void

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 341
    return-void

    .line 344
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setPwdChangeRequested(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 335
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setPwdChangeRequested() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 345
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setPwdChangeRequested() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setSettingsChangeAllowedAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 406
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSettingsChangeAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 408
    return-void

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 411
    return-void

    .line 414
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setSettingsChangeAllowed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 405
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setSettingsChangeAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 415
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setSettingsChangeAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setStatusBarExpansionAllowedAsUser(IZ)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 450
    const-string/jumbo v5, "SystemUIAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setStatusBarExpansionAllowedAsUser() userId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", isAllowed = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v5

    if-nez v5, :cond_0

    .line 453
    return-void

    .line 455
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 456
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v5

    if-eq p1, v5, :cond_2

    .line 457
    return-void

    .line 460
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result p1

    .line 462
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 464
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    .line 465
    .local v4, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v4, :cond_3

    .line 466
    if-eqz p2, :cond_4

    .line 467
    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    .line 468
    const-string/jumbo v8, "knoxmdm_key_statusbar_disable_expansion"

    .line 467
    const/4 v9, 0x0

    invoke-interface {v4, v9, v5, v8, p1}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_3
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 480
    .end local v4    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v5, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setStatusBarExpansionAllowed(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 449
    :goto_2
    return-void

    .line 470
    .restart local v4    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    .line 471
    const-string/jumbo v8, "knoxmdm_key_statusbar_disable_expansion"

    .line 470
    const/high16 v9, 0x10000

    invoke-interface {v4, v9, v5, v8, p1}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 474
    .end local v4    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "SystemUIAdapter"

    const-string/jumbo v8, "setStatusBarExpansionAllowedAsUser() failed."

    invoke-static {v5, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 477
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 476
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 477
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 476
    throw v5

    .line 483
    :catch_1
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SystemUIAdapter"

    const-string/jumbo v8, "setStatusBarExpansionAllowedAsUser() Failed with RemoteException"

    invoke-static {v5, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 481
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 482
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "SystemUIAdapter"

    const-string/jumbo v8, "setStatusBarExpansionAllowedAsUser() failed with NullPointerException."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 485
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v3

    .local v3, "ex":Ljava/lang/Exception;
    goto :goto_2
.end method

.method public setStatusBarHiddenAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "hidden"    # Z

    .prologue
    .line 234
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStatusBarHiddenAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hidden = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_2

    .line 241
    return-void

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result p1

    .line 247
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setStatusBarHidden(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 233
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setStatusBarHidden() failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 248
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setStatusBarHidden() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setWifiAllowedAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 634
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 636
    return-void

    .line 638
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 639
    return-void

    .line 642
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setWifiAllowed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 633
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setWifiAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 643
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 644
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setWifiAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 647
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setWifiStateChangeAllowedAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 612
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiStateChangeAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 614
    return-void

    .line 616
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 617
    return-void

    .line 620
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setWifiStateChangeAllowed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 611
    :goto_0
    return-void

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setWifiStateChangeAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 621
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setWifiStateChangeAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 625
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setWifiTetheringAllowedAsUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 537
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiTetheringAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 539
    return-void

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 542
    return-void

    .line 545
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setWifiTetheringAllowed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 536
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setWifiTetheringAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 546
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setWifiTetheringAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public updateSystemUIMonitor(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 104
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 106
    .local v2, "token":J
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    return-void

    .line 110
    :catchall_0
    move-exception v1

    .line 111
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    throw v1
.end method
