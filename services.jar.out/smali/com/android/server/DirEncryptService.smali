.class Lcom/android/server/DirEncryptService;
.super Landroid/os/storage/IDirEncryptService$Stub;
.source "DirEncryptService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptService$1;,
        Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;
    }
.end annotation


# static fields
.field private static final ENCRYPT_TAG:Ljava/lang/String; = "DirEncryptConnector"

.field private static final REQUESTER_DM:Ljava/lang/String; = "dm"

.field private static final REQUESTER_USER:Ljava/lang/String; = "user"

.field private static final REQUESTER_USER_ENC_SETTING_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SDCARD_ENC_STATUS_ACTIVITY:Ljava/lang/String; = "android.app.action.SDCARD_ENCRYPTION_STATUS"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"


# instance fields
.field private final ENCRYPT:I

.field private final PRESCAN_FULL_ERR:I

.field private final RESPONSE_BASE:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

.field private mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHelper:Lcom/android/server/DirEncryptServiceHelper;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReady:Z

.field private mSync:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/DirEncryptService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Landroid/os/storage/IDirEncryptService$Stub;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    .line 90
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 92
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 93
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 95
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 96
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 99
    const/16 v0, 0x2a8

    iput v0, p0, Lcom/android/server/DirEncryptService;->RESPONSE_BASE:I

    .line 100
    const/16 v0, 0x2ab

    iput v0, p0, Lcom/android/server/DirEncryptService;->ENCRYPT:I

    .line 101
    const/16 v0, 0x2ae

    iput v0, p0, Lcom/android/server/DirEncryptService;->PRESCAN_FULL_ERR:I

    .line 199
    new-instance v0, Lcom/android/server/DirEncryptService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptService$1;-><init>(Lcom/android/server/DirEncryptService;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    const-string/jumbo v0, "DirEncryptService"

    const-string/jumbo v1, "ctor DirEncryptService....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput-object p1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    .line 164
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 166
    new-instance v0, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 161
    return-void
.end method

.method private authByUid(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 276
    .local v0, "myUID":I
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 277
    const/4 v1, 0x1

    return v1

    .line 280
    :cond_0
    return v2
.end method

.method private checkSystemUid(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 265
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    .line 266
    const-string/jumbo v0, "DirEncryptService"

    const-string/jumbo v1, "Invalid uid. Only SYSTEM can use DirEncryptService Call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private findRequester(I)Ljava/lang/String;
    .locals 6
    .param p1, "uidApp"    # I

    .prologue
    .line 284
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 285
    .local v1, "myUID":I
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "callingPackageName":Ljava/lang/String;
    const-string/jumbo v3, "DirEncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package name uidApp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string/jumbo v3, "DirEncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package name myUID  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 291
    :cond_0
    const-string/jumbo v3, "DirEncryptService"

    const-string/jumbo v4, "REQUESTER_APP..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-object v0

    .line 295
    :cond_1
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    const-string/jumbo v3, "DirEncryptService"

    const-string/jumbo v4, "REQUESTER_UNKNOWN..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string/jumbo v3, ""

    return-object v3

    .line 300
    :cond_2
    if-eq v1, p1, :cond_3

    .line 301
    const-string/jumbo v3, "DirEncryptService"

    const-string/jumbo v4, "REQUESTER_APP..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-object v0

    .line 305
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 306
    .local v2, "pid":I
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->getCallingProcessPkg(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string/jumbo v3, "DirEncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "calling pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string/jumbo v3, "DirEncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "calling pid package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-nez v0, :cond_4

    .line 312
    const-string/jumbo v3, "DirEncryptService"

    const-string/jumbo v4, "Calling package name is null..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string/jumbo v3, ""

    return-object v3

    .line 316
    :cond_4
    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 317
    const-string/jumbo v3, "DirEncryptService"

    const-string/jumbo v4, "REQUESTER_USER..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string/jumbo v3, "user"

    return-object v3

    .line 324
    :cond_5
    const-string/jumbo v3, "DirEncryptService"

    const-string/jumbo v4, "REQUESTER_DM..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string/jumbo v3, "dm"

    return-object v3
.end method

.method private getCallingProcessPkg(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I

    .prologue
    .line 248
    const/4 v4, 0x0

    .line 249
    .local v4, "result":Ljava/lang/String;
    const-string/jumbo v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 251
    .local v0, "am":Lcom/android/server/am/ActivityManagerService;
    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 253
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    .line 254
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v4    # "result":Ljava/lang/String;
    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 255
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    .line 256
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .local v4, "result":Ljava/lang/String;
    goto :goto_0

    .line 261
    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4    # "result":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private moveDumpstate()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 214
    const-string/jumbo v1, "trigger_restart_min_framework"

    .line 215
    .local v1, "ENCRYPTING_STATE":Ljava/lang/String;
    const-string/jumbo v0, "trigger_restart_min_framework"

    .line 216
    .local v0, "ENCRYPTED_STATE":Ljava/lang/String;
    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "cryptState":Ljava/lang/String;
    const/4 v5, 0x0

    .line 219
    .local v5, "ret":Z
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 221
    const/4 v5, 0x1

    .line 244
    :goto_0
    return v5

    .line 222
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 224
    const/4 v5, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const/4 v4, 0x0

    .line 227
    .local v4, "mountService":Landroid/os/storage/IMountService;
    const-string/jumbo v7, "mount"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 228
    .local v6, "service":Landroid/os/IBinder;
    if-eqz v6, :cond_2

    .line 229
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 236
    .local v4, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v4}, Landroid/os/storage/IMountService;->moveDumpstates()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    const/4 v5, 0x1

    goto :goto_0

    .line 231
    .local v4, "mountService":Landroid/os/storage/IMountService;
    :cond_2
    const-string/jumbo v7, "DirEncryptService"

    const-string/jumbo v8, "Can\'t get mount service"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return v9

    .line 238
    .local v4, "mountService":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v3

    .line 239
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 240
    return v9
.end method


# virtual methods
.method public SetMountSDcardToHelper(Z)V
    .locals 5
    .param p1, "in"    # Z

    .prologue
    .line 703
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 704
    return-void

    .line 707
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 708
    .local v0, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 710
    .local v2, "token":J
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 711
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/DirEncryptServiceHelper;->SetMountSDcardToHelper(Z)V

    .line 715
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    return-void

    .line 713
    :cond_1
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v4, "SetMountSDcardToHelper error: invalid uid"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkPolicyEnable()Z
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->checkPolicyEnable()Z

    move-result v0

    return v0
.end method

.method public clearPrefs(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptPrefs;->clearPrefs(Ljava/lang/String;)V

    .line 545
    :cond_0
    return-void
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 612
    const-string/jumbo v6, "DirEncryptService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Check the state of external SD card mount path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 615
    const/16 v6, 0xc8

    return v6

    .line 618
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 619
    .local v1, "requester":I
    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptService;->checkSystemUid(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 624
    const/16 v2, 0xc9

    .line 625
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 627
    .local v4, "token":J
    new-instance v0, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .line 628
    .local v0, "dew":Lcom/samsung/android/security/DirEncryptionWrapper;
    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "state":Ljava/lang/String;
    const-string/jumbo v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 631
    const/4 v2, 0x0

    .line 632
    const-string/jumbo v6, "DirEncryptService"

    const-string/jumbo v7, "SD card mounted, need unmount..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 634
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 635
    const/16 v2, 0xd

    .line 647
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 648
    return v2

    .line 620
    .end local v0    # "dew":Lcom/samsung/android/security/DirEncryptionWrapper;
    .end local v2    # "result":I
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "token":J
    :cond_1
    const-string/jumbo v6, "DirEncryptService"

    const-string/jumbo v7, "Invalid requester"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/16 v6, 0xcc

    return v6

    .line 636
    .restart local v0    # "dew":Lcom/samsung/android/security/DirEncryptionWrapper;
    .restart local v2    # "result":I
    .restart local v3    # "state":Ljava/lang/String;
    .restart local v4    # "token":J
    :cond_2
    const-string/jumbo v6, "HiddenMount"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 637
    const-string/jumbo v6, "DirEncryptService"

    const-string/jumbo v7, "SD card ready, need encrypt cycle..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 639
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 640
    const/16 v2, 0xd

    goto :goto_0

    .line 643
    :cond_3
    const-string/jumbo v6, "DirEncryptService"

    const-string/jumbo v7, "SD card not mounted, so not applying policies this time"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/16 v2, 0xca

    goto :goto_0
.end method

.method public getAdditionalSpaceRequired()I
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getAdditionalSpaceRequired()I

    move-result v0

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getLastError()I

    move-result v0

    return v0
.end method

.method public getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 653
    const/4 v1, 0x0

    .line 655
    .local v1, "result":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 656
    return-object v1

    .line 658
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 659
    .local v0, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 661
    .local v2, "token":J
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 662
    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 663
    const-string/jumbo v4, "DirEncryptService"

    const-string/jumbo v5, "EncPrefs found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/DirEncryptServiceHelper;->getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v1

    .line 673
    .end local v1    # "result":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    return-object v1

    .line 667
    .restart local v1    # "result":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_1
    const-string/jumbo v4, "DirEncryptService"

    const-string/jumbo v5, "EncPrefs not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 670
    :cond_2
    const-string/jumbo v4, "DirEncryptService"

    const-string/jumbo v5, "getSdCardEncryptionPreferences error: invalid uid"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isEncryptionAppliedSDCard()Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionAppliedSDCard()Z

    move-result v0

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .locals 5

    .prologue
    .line 552
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 553
    const/4 v1, 0x0

    return v1

    .line 555
    :cond_0
    const/4 v0, 0x0

    .line 556
    .local v0, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 558
    .local v2, "token":J
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v4, "isStorageCardEncryptionPoliciesApplied....."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    .line 561
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 562
    return v0
.end method

.method public onCheckHoldWakeLock(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 121
    const-string/jumbo v0, "DirEncryptService"

    const-string/jumbo v1, " onCheckHoldWakeLock ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 115
    const-string/jumbo v0, "DirEncryptService"

    const-string/jumbo v1, " onDaemonConnected ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    .line 114
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 126
    const-string/jumbo v1, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEventcode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " raw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 127
    const-string/jumbo v4, " cooked "

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 127
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v1, 0x2ae

    if-ne p1, v1, :cond_1

    .line 131
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 132
    const-string/jumbo v4, "DirEncryptService"

    const-string/jumbo v5, "Encrypting storage card failed"

    move v1, v0

    .line 131
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    new-instance v2, Lcom/android/server/DirEncryptService$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/DirEncryptService$2;-><init>(Lcom/android/server/DirEncryptService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return v0

    .line 133
    :cond_1
    const/16 v1, 0x2ab

    if-ne p1, v1, :cond_0

    .line 134
    const/4 v1, 0x3

    aget-object v7, p3, v1

    .line 135
    .local v7, "status":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 137
    .local v6, "reqEnc":I
    const-string/jumbo v1, "success"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    if-ne v6, v0, :cond_2

    .line 139
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 140
    const-string/jumbo v4, "DirEncryptService"

    const-string/jumbo v5, "Encrypting storage card succeeded"

    move v1, v0

    move v2, v0

    .line 139
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 143
    const-string/jumbo v4, "DirEncryptService"

    const-string/jumbo v5, "Decrypting storage card succeeded"

    move v1, v0

    move v2, v0

    .line 142
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 147
    const-string/jumbo v4, "DirEncryptService"

    const-string/jumbo v5, "Encrypting storage card failed"

    move v1, v0

    .line 146
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 330
    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .locals 5
    .param p1, "in"    # Z

    .prologue
    .line 687
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 688
    return-void

    .line 691
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 692
    .local v0, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 694
    .local v2, "token":J
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->checkSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/DirEncryptServiceHelper;->setNeedToCreateKey(Z)V

    .line 699
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 686
    return-void

    .line 697
    :cond_1
    const-string/jumbo v1, "DirEncryptService"

    const-string/jumbo v4, "setNeedToCreateKey error: invalid uid"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 567
    const/16 v3, 0xc8

    return v3

    .line 570
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 571
    .local v2, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 573
    .local v4, "token":J
    const/4 v0, 0x1

    .line 574
    .local v0, "allowRequest":Z
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "callingPackageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->checkSystemUid(I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, ".*android.uid.systemui.*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 579
    :cond_1
    :goto_0
    const-string/jumbo v3, "DirEncryptService"

    const-string/jumbo v6, "setPassword....."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 581
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v6, 0x1

    invoke-virtual {v3, v6, p1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 585
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    const/16 v3, 0xd

    return v3

    .line 576
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 583
    :cond_3
    const-string/jumbo v3, "DirEncryptService"

    const-string/jumbo v6, "setPassword error: invalid uid"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setSdCardEncryptionPolicy(IILjava/lang/String;)I
    .locals 18
    .param p1, "isPolicy"    # I
    .param p2, "status"    # I
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    .line 461
    const/16 v14, 0xc8

    .line 463
    .local v14, "result":I
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 464
    const/4 v4, 0x2

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    .line 465
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 466
    const-string/jumbo v8, "DirEncryptService"

    const-string/jumbo v9, "Encrypting storage card failed"

    .line 465
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_0
    return v14

    .line 468
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 469
    const-string/jumbo v8, "DirEncryptService"

    const-string/jumbo v9, "Decrypting storage card failed"

    .line 468
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_1
    const-string/jumbo v4, "DirEncryptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSdCardEncryptionPolicy: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 476
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    move-result-object v12

    .line 477
    .local v12, "requester":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 478
    .local v13, "requesterid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 480
    .local v16, "token":J
    if-nez p3, :cond_2

    .line 481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v4}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object p3

    .line 482
    if-nez p3, :cond_2

    .line 483
    const-string/jumbo p3, "FFFF-FFFF"

    .line 486
    :cond_2
    const-string/jumbo v4, "DirEncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSdCardEncryptionPolicy : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v10, v0, v1, v2}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 489
    .local v10, "newPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/server/DirEncryptPrefs;->restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v11

    .line 492
    .local v11, "oldPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_3

    .line 493
    invoke-virtual {v11}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v4

    iput v4, v10, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    .line 496
    :cond_3
    invoke-virtual {v11, v10}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v4

    if-eqz v4, :cond_4

    .line 498
    const-string/jumbo v4, "DirEncryptService"

    const-string/jumbo v6, "Cannot save the policy if SD card is being encrypted/decrypted"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    const/16 v4, 0xf

    monitor-exit v5

    return v4

    .line 502
    :cond_4
    :try_start_1
    const-string/jumbo v4, "DirEncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Called by: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 504
    const-string/jumbo v4, "user"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4, v10}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 506
    const/16 v14, 0x8

    .line 538
    :cond_5
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    .line 539
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 542
    return v14

    .line 508
    :cond_6
    const/16 v14, 0x9

    goto :goto_1

    .line 511
    :cond_7
    :try_start_2
    invoke-virtual {v10}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v4

    if-eqz v4, :cond_8

    .line 512
    invoke-virtual {v10}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    .line 514
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4, v10}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 515
    const/16 v14, 0x8

    goto :goto_1

    .line 513
    :cond_9
    invoke-virtual {v10}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v4

    .line 511
    if-nez v4, :cond_8

    .line 520
    invoke-virtual {v10}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v4

    invoke-virtual {v11}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v6

    if-eq v4, v6, :cond_b

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4, v10}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 522
    const-string/jumbo v4, "DirEncryptService"

    const-string/jumbo v6, "SD card encryption policy by EAS/MDM requests is changed"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/16 v14, 0x9

    goto :goto_1

    .line 517
    :cond_a
    const/16 v14, 0x9

    goto :goto_1

    .line 526
    :cond_b
    const-string/jumbo v4, "DirEncryptService"

    const-string/jumbo v6, "Do not need to disable SD card encryption policy by EAS/MDM requests"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 475
    .end local v10    # "newPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .end local v11    # "oldPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .end local v12    # "requester":Ljava/lang/String;
    .end local v13    # "requesterid":I
    .end local v16    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 531
    .restart local v10    # "newPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .restart local v11    # "oldPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .restart local v12    # "requester":Ljava/lang/String;
    .restart local v13    # "requesterid":I
    .restart local v16    # "token":J
    :cond_c
    :try_start_3
    const-string/jumbo v4, "DirEncryptService"

    const-string/jumbo v6, "setSdCardEncryptionPolicy error: invalid uid"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/16 v14, 0x9

    goto :goto_1

    .line 535
    :cond_d
    const-string/jumbo v4, "DirEncryptService"

    const-string/jumbo v6, "Policy has already been saved."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 536
    const/16 v14, 0xa

    goto :goto_1
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .locals 16
    .param p1, "encType"    # I
    .param p2, "fullEnc"    # I
    .param p3, "excludeMediaFiles"    # I

    .prologue
    .line 339
    const/16 v13, 0xc8

    .line 340
    .local v13, "result":I
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 343
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 344
    const-string/jumbo v6, "DirEncryptService"

    const-string/jumbo v7, "Encrypting storage card failed"

    .line 343
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_0
    return v13

    .line 346
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 347
    const-string/jumbo v6, "DirEncryptService"

    const-string/jumbo v7, "Decrypting storage card failed"

    .line 346
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_1
    const-string/jumbo v2, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStorageCardEncryption: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v2, 0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 357
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 358
    const-string/jumbo v6, "DirEncryptService"

    const-string/jumbo v7, "Decrypting storage card failed"

    .line 357
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 360
    return v13

    .line 362
    :cond_2
    const/4 v2, 0x4

    move/from16 v0, p2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    move/from16 v0, p2

    if-eq v0, v2, :cond_4

    .line 364
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 365
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 366
    const-string/jumbo v6, "DirEncryptService"

    const-string/jumbo v7, "Encrypting storage card failed"

    .line 365
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_1
    return v13

    .line 368
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 369
    const-string/jumbo v6, "DirEncryptService"

    const-string/jumbo v7, "Decrypting storage card failed"

    .line 368
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 374
    :cond_4
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    const/4 v2, 0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_5

    .line 376
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 377
    const-string/jumbo v6, "DirEncryptService"

    const-string/jumbo v7, "Decrypting storage card failed"

    .line 376
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 379
    return v13

    .line 381
    :cond_5
    const/4 v2, 0x6

    move/from16 v0, p3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x7

    move/from16 v0, p3

    if-eq v0, v2, :cond_7

    .line 383
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 384
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 385
    const-string/jumbo v6, "DirEncryptService"

    const-string/jumbo v7, "Encrypting storage card failed"

    .line 384
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_2
    return v13

    .line 387
    :cond_6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 388
    const-string/jumbo v6, "DirEncryptService"

    const-string/jumbo v7, "Decrypting storage card failed"

    .line 387
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 394
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 396
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    move-result-object v11

    .line 397
    .local v11, "requester":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 398
    .local v12, "requesterid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 401
    .local v14, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 403
    .local v8, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v9, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    move v3, v2

    .line 404
    :goto_3
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    const/4 v2, 0x0

    .line 405
    :goto_4
    const/4 v5, 0x0

    .line 403
    invoke-direct {v9, v3, v2, v5}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    .line 406
    .local v9, "newPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/DirEncryptPrefs;->restorePrefs(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v10

    .line 407
    .local v10, "oldPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    const-string/jumbo v2, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStorageCardEncryptionPolicy : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v5}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v10, v9}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v2

    if-eqz v2, :cond_a

    .line 411
    const-string/jumbo v2, "DirEncryptService"

    const-string/jumbo v3, "Cannot save the policy if SD card is being encrypted/decrypted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    const/16 v2, 0xf

    monitor-exit v4

    return v2

    .line 403
    .end local v9    # "newPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .end local v10    # "oldPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_8
    const/4 v2, 0x0

    move v3, v2

    goto :goto_3

    .line 404
    :cond_9
    const/4 v2, 0x1

    goto :goto_4

    .line 415
    .restart local v9    # "newPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .restart local v10    # "oldPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    :cond_a
    :try_start_1
    const-string/jumbo v2, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Called by: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 417
    const-string/jumbo v2, "user"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v2, v9}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 420
    const/16 v13, 0x8

    .line 452
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    .line 453
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 456
    return v13

    .line 423
    :cond_b
    const/16 v13, 0x9

    goto :goto_5

    .line 432
    :cond_c
    :try_start_2
    invoke-virtual {v9}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->getEncryptState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    .line 433
    invoke-virtual {v9}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v2

    .line 432
    if-eqz v2, :cond_f

    .line 434
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v2, v9}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 435
    const/16 v13, 0x8

    goto :goto_5

    .line 437
    :cond_e
    const/16 v13, 0x9

    goto :goto_5

    .line 440
    :cond_f
    const-string/jumbo v2, "DirEncryptService"

    const-string/jumbo v3, "Do not need to disable SD card encryption policy by EAS/MDM requests"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 394
    .end local v8    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v9    # "newPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .end local v10    # "oldPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .end local v11    # "requester":Ljava/lang/String;
    .end local v12    # "requesterid":I
    .end local v14    # "token":J
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 444
    .restart local v8    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v9    # "newPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .restart local v10    # "oldPolicies":Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .restart local v11    # "requester":Ljava/lang/String;
    .restart local v12    # "requesterid":I
    .restart local v14    # "token":J
    :cond_10
    :try_start_3
    const-string/jumbo v2, "DirEncryptService"

    const-string/jumbo v3, "setStorageCardEncryptionPolicy error: invalid uid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/16 v13, 0x9

    goto :goto_5

    .line 449
    :cond_11
    const-string/jumbo v2, "DirEncryptService"

    const-string/jumbo v3, "Policy has already been saved."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 450
    const/16 v13, 0xa

    goto :goto_5
.end method

.method public systemReady()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 170
    const-string/jumbo v0, "DirEncryptService"

    const-string/jumbo v1, "Calling systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 177
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 182
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "dir_enc_report"

    const-string/jumbo v4, "DirEncryptConnector"

    const/16 v3, 0x1f4

    const/16 v5, 0xa0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 183
    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "DirEncryptConnector"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 184
    .local v8, "thread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 186
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DirEncryptService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 187
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 188
    new-instance v0, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;-><init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 190
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v8    # "thread":Ljava/lang/Thread;
    :goto_0
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->registerStorageEventListener()Z

    .line 169
    return-void

    .line 191
    :catch_0
    move-exception v7

    .line 192
    .local v7, "ex":Ljava/lang/Exception;
    const-string/jumbo v0, "DirEncryptService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NativeDaemonConnector exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    goto :goto_0
.end method

.method public unmountSDCardByAdmin()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCardByAdmin()V

    .line 601
    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 334
    return-void
.end method
