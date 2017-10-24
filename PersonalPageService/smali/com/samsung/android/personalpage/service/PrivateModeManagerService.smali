.class public Lcom/samsung/android/personalpage/service/PrivateModeManagerService;
.super Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
.source "PrivateModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PERMISSION_START_PRIVATE_MODE:Ljava/lang/String; = "com.sec.android.permission.LAUNCH_PERSONAL_PAGE_SERVICE"

.field private static final SUPPORT_MULTIPLE_NORMAL_M2P:Z = false

.field private static final TAG:Ljava/lang/String; = "PrivateModeManagerService"

.field private static mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

.field private static mIsMountedPrivateStorage:Z


# instance fields
.field private mClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/personalpage/service/PrivateModeClient;",
            ">;"
        }
    .end annotation
.end field

.field private mClientName:Ljava/lang/String;

.field final mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

.field private mIsSuccessFileTransfer:Z

.field private final mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

.field private mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

.field mPrivateModeNormalDialog:Landroid/app/AlertDialog;

.field private mTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/samsung/android/personalpage/service/PrivateModeClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleCheckClients()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleMountPirvateStorage()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleUnmountPirvateStorage()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleVerifyUser()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestUnmountPirvateStorage()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestVerifyUser()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->showPrivateModeNormalDialog(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->DEBUG:Z

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsSuccessFileTransfer:Z

    .line 87
    new-instance v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    .line 84
    check-cast p1, Lcom/samsung/android/personalpage/service/PersonalPageService;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    .line 83
    return-void
.end method

.method private evtIdToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "evtId"    # I

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "evtString":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 322
    const-string/jumbo v0, "NULL"

    .line 326
    .local v0, "evtString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 307
    .local v0, "evtString":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "PREPARED"

    .local v0, "evtString":Ljava/lang/String;
    goto :goto_0

    .line 310
    .local v0, "evtString":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "MOUNTED"

    .local v0, "evtString":Ljava/lang/String;
    goto :goto_0

    .line 313
    .local v0, "evtString":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "UNMOUNTED"

    .local v0, "evtString":Ljava/lang/String;
    goto :goto_0

    .line 316
    .local v0, "evtString":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v0, "CANCELLED"

    .local v0, "evtString":Ljava/lang/String;
    goto :goto_0

    .line 319
    .local v0, "evtString":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "ERROR_INTERNAL"

    .local v0, "evtString":Ljava/lang/String;
    goto :goto_0

    .line 304
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x15 -> :sswitch_4
    .end sparse-switch
.end method

.method private getDensity()I
    .locals 2

    .prologue
    .line 661
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 662
    .local v0, "density":I
    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    .line 80
    :cond_0
    sget-object v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleCheckClients()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 169
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 170
    .local v0, "numClients":I
    const-string/jumbo v1, "PrivateModeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCheckClients: Clients Size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getVersionPrivatemode()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 173
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestUnmountPirvateStorage()V

    .line 168
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string/jumbo v2, "pref_pp_normal_off_disclaimer_noti"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    invoke-direct {p0, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->showPrivateModeNormalDialog(Z)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestUnmountPirvateStorage()V

    goto :goto_0
.end method

.method private declared-synchronized handleMountPirvateStorage()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 214
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    if-eqz v0, :cond_0

    .line 215
    const-string/jumbo v0, "PrivateModeManagerService"

    const-string/jumbo v1, "handleMountPirvateStorage: already mounted"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 216
    return-void

    .line 218
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getPrivateModeStorageManager()Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    .line 220
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    if-nez v0, :cond_1

    .line 221
    const-string/jumbo v0, "PrivateModeManagerService"

    const-string/jumbo v1, "handleMountPirvateStorage: StorageManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 222
    return-void

    .line 225
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    sget-object v1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->changeNormalPrivateModeStorage(ZLcom/samsung/android/privatemode/IPrivateModeManager$Stub;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->registerCheckAlarm(Z)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->SendPrivateModeSurvery(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    .line 213
    return-void

    .line 233
    :cond_3
    :try_start_3
    const-string/jumbo v0, "PrivateModeManagerService"

    const-string/jumbo v1, "handleMountPirvateStorage: Failed to mount Private Storage"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleUnmountPirvateStorage()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 258
    :try_start_0
    sget-boolean v2, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    if-nez v2, :cond_0

    .line 259
    const-string/jumbo v0, "PrivateModeManagerService"

    const-string/jumbo v1, "handleMountPirvateStorage: already unmounted"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 261
    return-void

    .line 263
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v2, :cond_3

    .line 264
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getPrivateModeStorageManager()Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    .line 265
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    if-nez v2, :cond_2

    .line 266
    const-string/jumbo v2, "PrivateModeManagerService"

    const-string/jumbo v3, "handleUnmountPirvateStorage: StorageManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 268
    return-void

    :cond_1
    move v0, v1

    .line 267
    goto :goto_0

    .line 271
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->changePrivateModeStorage(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 272
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->unloadPrivateVolume()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    .line 257
    return-void

    .line 279
    :cond_4
    :try_start_3
    const-string/jumbo v2, "PrivateModeManagerService"

    const-string/jumbo v3, "handleUnmountPirvateStorage: Failed to Unmount Private Storage"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->unloadPrivateVolume()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v0, v1

    .line 280
    goto :goto_2
.end method

.method private handleVerifyUser()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleVerifyUser(Z)V

    .line 195
    :cond_0
    return-void
.end method

.method private registerCheckAlarm(Z)V
    .locals 6
    .param p1, "isTurnOn"    # Z

    .prologue
    .line 239
    const-string/jumbo v3, "PrivateModeManagerService"

    const-string/jumbo v4, "registerCheckAlarm called"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-class v4, Lcom/samsung/android/personalpage/service/PrivateModeReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.android.personalpage.action.CHECK_M2P"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 243
    .local v2, "pending":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string/jumbo v4, "alarm"

    invoke-virtual {v3, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 245
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz p1, :cond_0

    .line 246
    const-wide/16 v4, 0x7d0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 238
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private requestCheckClients()V
    .locals 2

    .prologue
    const/16 v1, 0x200

    .line 164
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    .line 163
    return-void
.end method

.method private requestMountPirvateStorage()V
    .locals 2

    .prologue
    const/16 v1, 0x201

    .line 209
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    .line 208
    return-void
.end method

.method private requestShowDialog(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    const/16 v3, 0x204

    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v3}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    .line 290
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 288
    return-void

    :cond_0
    move v0, v1

    .line 290
    goto :goto_0
.end method

.method private requestUnmountPirvateStorage()V
    .locals 2

    .prologue
    const/16 v1, 0x202

    .line 253
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    .line 252
    return-void
.end method

.method private requestVerifyUser()V
    .locals 2

    .prologue
    const/16 v1, 0x203

    .line 186
    sget-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    if-eqz v0, :cond_0

    .line 187
    const-string/jumbo v0, "PrivateModeManagerService"

    const-string/jumbo v1, "handleMountPirvateStorage: already verified"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->notifyEventToClient(I)V

    .line 189
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    .line 185
    return-void
.end method

.method private showPrivateModeNormalDialog(Z)V
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const v8, 0x1040014

    const v7, 0x104000a

    const/high16 v6, 0x1000000

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 489
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-nez v1, :cond_0

    .line 490
    const-string/jumbo v1, "PrivateModeManagerService"

    const-string/jumbo v2, "showPrivateModeNormalDialog: personalPageService is NULL!!"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void

    .line 494
    :cond_0
    const-string/jumbo v1, "PrivateModeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showPrivatModeNormalDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsMountedPrivateStorage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 498
    :cond_1
    if-eqz p1, :cond_2

    .line 499
    invoke-direct {p0, v5}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    .line 504
    :goto_0
    sget-boolean v1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    if-nez v1, :cond_3

    .line 505
    if-nez p1, :cond_3

    .line 506
    const-string/jumbo v1, "PrivateModeManagerService"

    const-string/jumbo v2, "showPrivateModeNormalDialog: Cancel from Confirm window or Verify window"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-direct {p0, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    .line 508
    return-void

    .line 501
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    goto :goto_0

    .line 566
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 567
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getVersionPrivatemode()I

    move-result v1

    if-lt v1, v5, :cond_6

    .line 568
    const-string/jumbo v1, "com.sec.android.app.launcher"

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 569
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 576
    :goto_1
    if-nez p1, :cond_4

    .line 577
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 578
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->registerPersonalPageReceiver()V

    .line 580
    :cond_4
    const v1, 0x7f060023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 581
    if-eqz p1, :cond_7

    .line 582
    new-instance v1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$1;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 614
    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    .line 615
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Z)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 642
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 643
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 644
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 487
    return-void

    .line 571
    :cond_5
    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 574
    :cond_6
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 597
    :cond_7
    new-instance v1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$2;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 605
    new-instance v1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$3;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method private updatePrivateModeDB(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 648
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    .line 650
    if-ne p1, v2, :cond_1

    .line 651
    invoke-static {v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeNotification(Z)V

    .line 652
    const-string/jumbo v0, "sys.samsung.personalpage.mode"

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    if-nez p1, :cond_0

    .line 654
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeNotification(Z)V

    .line 655
    const-string/jumbo v0, "sys.samsung.personalpage.mode"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized KillAllClient()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 709
    :try_start_0
    const-string/jumbo v0, "PrivateModeManagerService"

    const-string/jumbo v1, "KillAllClient"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->notifyEventToClient(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 708
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clearNormalM2P()V
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    .line 713
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 667
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string/jumbo v6, "android.permission.DUMP"

    invoke-virtual {v3, v6}, Lcom/samsung/android/personalpage/service/PersonalPageService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission Denial: can\'t dump PrivateModeManagerService from from pid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 669
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 668
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 670
    const-string/jumbo v6, ", uid="

    .line 668
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 668
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 672
    const-string/jumbo v6, " without permission "

    .line 668
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 673
    const-string/jumbo v6, "android.permission.DUMP"

    .line 668
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    return-void

    .line 676
    :cond_0
    const-string/jumbo v3, "PrivateModeManagerService"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    const-string/jumbo v3, "==========================================================================="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 678
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 680
    .local v4, "origId":J
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 681
    const-string/jumbo v3, "  Active clients:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 683
    :cond_1
    const-string/jumbo v3, "    None."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 694
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 695
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 666
    return-void

    .line 687
    :cond_3
    const/4 v2, 0x0

    .line 688
    .local v2, "index":I
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    .line 689
    .local v0, "c":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  * Client #"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v0, p2}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->dump(Ljava/io/PrintWriter;)V

    .line 691
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected getNumOfRegisteredClient()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 699
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 700
    :cond_0
    const-string/jumbo v0, "PrivateModeManagerService"

    const-string/jumbo v1, "getNumOfRegisteredClient: 0"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return v2

    .line 703
    :cond_1
    const-string/jumbo v0, "PrivateModeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNumOfRegisteredClient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized notifyEventToClient(I)V
    .locals 5
    .param p1, "evtId"    # I

    .prologue
    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    .line 296
    .local v0, "c":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    const-string/jumbo v2, "PrivateModeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyEventToClient, client : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", onStateChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->evtIdToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->onEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "c":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 294
    return-void
.end method

.method onClientDied(Landroid/os/IBinder;Lcom/samsung/android/personalpage/service/PrivateModeClient;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "argClient"    # Lcom/samsung/android/personalpage/service/PrivateModeClient;

    .prologue
    .line 472
    const-string/jumbo v0, "PrivateModeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientDied: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 473
    const-string/jumbo v2, " client="

    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    monitor-enter p0

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 481
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 483
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestCheckClients()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 471
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onVerifiedUser()V
    .locals 2

    .prologue
    .line 204
    const-string/jumbo v0, "PrivateModeManagerService"

    const-string/jumbo v1, "onVerifiedUser"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestMountPirvateStorage()V

    .line 203
    return-void
.end method

.method public registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 8
    .param p1, "client"    # Lcom/samsung/android/privatemode/IPrivateModeClient;
    .param p2, "clientInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x205

    const/4 v7, 0x0

    .line 331
    if-nez p1, :cond_0

    .line 332
    const-string/jumbo v4, "PrivateModeManagerService"

    const-string/jumbo v5, "registerClient: client is null"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-object v7

    .line 336
    :cond_0
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    const-string/jumbo v4, "PrivateModeManagerService"

    const-string/jumbo v5, "registerClient: M2P is Activating"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v4, v6}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    .line 339
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v4, v6}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    .line 340
    return-object v7

    .line 342
    :cond_1
    const-string/jumbo v4, "package_name"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientName:Ljava/lang/String;

    .line 343
    invoke-interface {p1}, Lcom/samsung/android/privatemode/IPrivateModeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 344
    .local v3, "token":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 347
    .local v0, "pid":I
    const-string/jumbo v4, "PrivateModeManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerClient: client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 348
    const-string/jumbo v6, " as token="

    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 348
    const-string/jumbo v6, " from pid="

    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 348
    const-string/jumbo v6, " package_name="

    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 348
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientName:Ljava/lang/String;

    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string/jumbo v5, "com.sec.android.permission.LAUNCH_PERSONAL_PAGE_SERVICE"

    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/personalpage/service/PersonalPageService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    monitor-enter p0

    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    const-string/jumbo v4, "PrivateModeManagerService"

    const-string/jumbo v5, "registerClient: client already registered"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestShowDialog(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    :goto_0
    monitor-exit p0

    .line 367
    return-object v3

    .line 359
    .restart local v1    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    :cond_2
    :try_start_1
    new-instance v2, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/samsung/android/personalpage/service/PrivateModeClient;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Lcom/samsung/android/privatemode/IPrivateModeClient;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .local v2, "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    .end local v1    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestShowDialog(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    .end local v2    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    .local v1, "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    goto :goto_0

    .line 352
    .local v1, "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    :catchall_0
    move-exception v4

    .end local v1    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    :goto_1
    monitor-exit p0

    throw v4

    .restart local v2    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    .local v1, "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    goto :goto_1
.end method

.method public unRegisterClient(Landroid/os/IBinder;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 373
    iput-boolean p2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsSuccessFileTransfer:Z

    .line 374
    if-nez p1, :cond_0

    .line 375
    const-string/jumbo v1, "PrivateModeManagerService"

    const-string/jumbo v2, "unregisterClient: token is null"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return v4

    .line 378
    :cond_0
    const-string/jumbo v1, "PrivateModeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterClient: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 379
    const-string/jumbo v3, " from pid="

    .line 378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 379
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string/jumbo v2, "com.sec.android.permission.LAUNCH_PERSONAL_PAGE_SERVICE"

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/personalpage/service/PersonalPageService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    const-string/jumbo v1, "PrivateModeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterClient: client("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") is not registered!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 386
    return v4

    .line 388
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    .line 389
    .local v0, "client":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->cleanUp()V

    .line 396
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 397
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 400
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestCheckClients()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 403
    const/4 v1, 0x1

    return v1

    .line 383
    .end local v0    # "client":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 408
    if-nez p1, :cond_0

    .line 409
    const-string/jumbo v1, "PrivateModeManagerService"

    const-string/jumbo v2, "unregisterClient: token is null"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return v4

    .line 412
    :cond_0
    const-string/jumbo v1, "PrivateModeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterClient: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 413
    const-string/jumbo v3, " from pid="

    .line 412
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 413
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 412
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string/jumbo v2, "com.sec.android.permission.LAUNCH_PERSONAL_PAGE_SERVICE"

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/personalpage/service/PersonalPageService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 419
    const-string/jumbo v1, "PrivateModeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterClient: client("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") is not registered!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 420
    return v4

    .line 422
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    .line 423
    .local v0, "client":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->cleanUp()V

    .line 430
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 431
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 433
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestCheckClients()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 435
    const/4 v1, 0x1

    return v1

    .line 417
    .end local v0    # "client":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
