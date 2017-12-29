.class public Lcom/android/server/wm/NaviBarHidePolicyManager;
.super Ljava/lang/Object;
.source "NaviBarHidePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/NaviBarHidePolicyManager$1;,
        Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;,
        Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final NAVIBAR_DEFAULT_OFF_PACKAGES:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "NaviBarHidePolicyManager"

.field static sInstance:Lcom/android/server/wm/NaviBarHidePolicyManager;


# instance fields
.field private final DIR_PATH:Ljava/lang/String;

.field private final FILE_NAME:Ljava/lang/String;

.field private final MSG_SAVE_PACKAGES_NOW:I

.field private final TIME_FOR_SAVE_PACKAGES:I

.field private mFixedPackageMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/FixedNaviBarPackageMap;",
            ">;"
        }
    .end annotation
.end field

.field private mLazyWriterThread:Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;

.field private mNonImmersivePackges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPolicyHandler:Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;

.field private final mRunningFixedPkgInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/wm/SamsungWindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/NaviBarHidePolicyManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mNonImmersivePackges:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/NaviBarHidePolicyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyManager;->writeFixedNaviBarPackageMap()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 58
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/wm/NaviBarHidePolicyManager;->DEBUG:Z

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 64
    const-string v3, "com.tencent.tmgp.sgame"

    aput-object v3, v0, v1

    .line 65
    const-string v1, "com.tencent.mm"

    aput-object v1, v0, v2

    .line 66
    const-string v1, "com.eg.android.AlipayGphone"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 67
    const-string v1, "com.tencent.mobileqq"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 68
    const-string v1, "com.baidu.searchbox"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 69
    const-string v1, "com.baidu.searchbox_samsung"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 70
    const-string v1, "com.pingan.lifeinsurance"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 71
    const-string v1, "tv.xiaoka.live"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 72
    const-string v1, "com.qq.reader"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 63
    sput-object v0, Lcom/android/server/wm/NaviBarHidePolicyManager;->NAVIBAR_DEFAULT_OFF_PACKAGES:[Ljava/lang/String;

    .line 56
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/navibarhidepolicy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->DIR_PATH:Ljava/lang/String;

    .line 61
    const-string v0, "PackageMap"

    iput-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->FILE_NAME:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;-><init>(Lcom/android/server/wm/NaviBarHidePolicyManager;)V

    iput-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mPolicyHandler:Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mFixedPackageMapForUser:Ljava/util/Map;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mRunningFixedPkgInfo:Ljava/util/HashMap;

    .line 341
    new-instance v0, Lcom/android/server/wm/NaviBarHidePolicyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/NaviBarHidePolicyManager$1;-><init>(Lcom/android/server/wm/NaviBarHidePolicyManager;)V

    iput-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 369
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->MSG_SAVE_PACKAGES_NOW:I

    .line 371
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->TIME_FOR_SAVE_PACKAGES:I

    .line 83
    return-void
.end method

.method private checkCallerIsSystemOrPermission()V
    .locals 3

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyManager;->isCallerSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 218
    return-void

    .line 221
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial:  from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    const-string v2, ", uid="

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    const-string v2, " requires "

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    const-string v2, "android.permission.STATUS_BAR"

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private disableNaviBarHide(Lcom/android/server/wm/FixedNaviBarPackageMap;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "naviBarHidePackages"    # Lcom/android/server/wm/FixedNaviBarPackageMap;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 227
    const-string v1, "NaviBarHidePolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NaviBarHidePolicy : disable package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p1, p2}, Lcom/android/server/wm/FixedNaviBarPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/FixedNaviBarPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 229
    .local v0, "bUpdated":Z
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return v0

    .line 228
    .end local v0    # "bUpdated":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bUpdated":Z
    goto :goto_0
.end method

.method private enableNaviBarHide(Lcom/android/server/wm/FixedNaviBarPackageMap;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "naviBarHidePackages"    # Lcom/android/server/wm/FixedNaviBarPackageMap;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 234
    const-string v1, "NaviBarHidePolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NaviBarHidePolicy : enable package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p1, p2}, Lcom/android/server/wm/FixedNaviBarPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/FixedNaviBarPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 236
    .local v0, "bUpdated":Z
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return v0

    .line 235
    .end local v0    # "bUpdated":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bUpdated":Z
    goto :goto_0
.end method

.method private getFixedPackageForUser()Lcom/android/server/wm/FixedNaviBarPackageMap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 241
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mFixedPackageMapForUser:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FixedNaviBarPackageMap;

    .line 242
    .local v0, "naviBarHidePackages":Lcom/android/server/wm/FixedNaviBarPackageMap;
    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/android/server/wm/FixedNaviBarPackageMap;

    .end local v0    # "naviBarHidePackages":Lcom/android/server/wm/FixedNaviBarPackageMap;
    invoke-direct {v0}, Lcom/android/server/wm/FixedNaviBarPackageMap;-><init>()V

    .line 244
    .restart local v0    # "naviBarHidePackages":Lcom/android/server/wm/FixedNaviBarPackageMap;
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mFixedPackageMapForUser:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/wm/NaviBarHidePolicyManager;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/server/wm/NaviBarHidePolicyManager;->sInstance:Lcom/android/server/wm/NaviBarHidePolicyManager;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/server/wm/NaviBarHidePolicyManager;

    invoke-direct {v0}, Lcom/android/server/wm/NaviBarHidePolicyManager;-><init>()V

    sput-object v0, Lcom/android/server/wm/NaviBarHidePolicyManager;->sInstance:Lcom/android/server/wm/NaviBarHidePolicyManager;

    .line 89
    :cond_0
    sget-object v0, Lcom/android/server/wm/NaviBarHidePolicyManager;->sInstance:Lcom/android/server/wm/NaviBarHidePolicyManager;

    return-object v0
.end method

.method private isCallerSystem()Z
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/NaviBarHidePolicyManager;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isDefaultOffPackages(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 127
    sget-object v3, Lcom/android/server/wm/NaviBarHidePolicyManager;->NAVIBAR_DEFAULT_OFF_PACKAGES:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 128
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    const/4 v1, 0x1

    return v1

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "entry":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private isNonImmersiveModePackage(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 114
    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mNonImmersivePackges:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0, p2}, Lcom/android/server/wm/NaviBarHidePolicyManager;->readInstalledPackagesInfo(I)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mNonImmersivePackges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const/4 v0, 0x2

    return v0

    .line 123
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isUidSystem(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 206
    .local v0, "appid":I
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private killApplication(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const-string v2, "hidenavibar"

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/app/ActivityManagerInternal;->killPackageProcess(Ljava/lang/String;IILjava/lang/String;)I

    .line 200
    return-void
.end method

.method private readInstalledPackagesInfo(I)V
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v8, 0x0

    .line 324
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mNonImmersivePackges:Ljava/util/ArrayList;

    .line 325
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 326
    .local v4, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-interface {v5, v6, v4}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 327
    .local v3, "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v3, :cond_1

    .line 328
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 329
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 330
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.samsung.android.non_immersive"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 331
    iget-object v5, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mNonImmersivePackges:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v4    # "userId":I
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Landroid/os/RemoteException;
    iput-object v8, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mNonImmersivePackges:Ljava/util/ArrayList;

    .line 322
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private readNaviBarHidePolicyPackageMaps()V
    .locals 17

    .prologue
    .line 250
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/NaviBarHidePolicyManager;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 253
    .local v10, "files":[Ljava/io/File;
    const/4 v6, 0x0

    .line 254
    .local v6, "f_str":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 255
    .local v1, "d_str":Ljava/io/ObjectInputStream;
    if-eqz v10, :cond_7

    .line 256
    const/4 v13, 0x0

    array-length v14, v10

    move-object v2, v1

    .local v2, "d_str":Ljava/io/ObjectInputStream;
    move-object v7, v6

    .end local v1    # "d_str":Ljava/io/ObjectInputStream;
    .end local v6    # "f_str":Ljava/io/FileInputStream;
    .local v7, "f_str":Ljava/io/FileInputStream;
    :goto_0
    if-ge v13, v14, :cond_6

    aget-object v8, v10, v13

    .line 257
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 258
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 259
    .local v12, "userId":I
    new-instance v9, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "PackageMap"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .end local v8    # "file":Ljava/io/File;
    .local v9, "file":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v7    # "f_str":Ljava/io/FileInputStream;
    .local v6, "f_str":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 266
    .end local v2    # "d_str":Ljava/io/ObjectInputStream;
    .local v1, "d_str":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/FixedNaviBarPackageMap;

    .line 267
    .local v11, "naviBarHidePackages":Lcom/android/server/wm/FixedNaviBarPackageMap;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mFixedPackageMapForUser:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 270
    if-eqz v6, :cond_0

    .line 272
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 276
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 278
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v11    # "naviBarHidePackages":Lcom/android/server/wm/FixedNaviBarPackageMap;
    :cond_1
    :goto_2
    move-object v8, v9

    .line 256
    .end local v9    # "file":Ljava/io/File;
    .end local v12    # "userId":I
    .restart local v8    # "file":Ljava/io/File;
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object v2, v1

    .end local v1    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v2    # "d_str":Ljava/io/ObjectInputStream;
    move-object v7, v6

    .end local v6    # "f_str":Ljava/io/FileInputStream;
    .restart local v7    # "f_str":Ljava/io/FileInputStream;
    goto :goto_0

    :cond_2
    move-object v1, v2

    .end local v2    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v1    # "d_str":Ljava/io/ObjectInputStream;
    move-object v6, v7

    .line 261
    .end local v7    # "f_str":Ljava/io/FileInputStream;
    .restart local v6    # "f_str":Ljava/io/FileInputStream;
    goto :goto_3

    .line 273
    .end local v8    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "naviBarHidePackages":Lcom/android/server/wm/FixedNaviBarPackageMap;
    .restart local v12    # "userId":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_1

    .line 279
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 268
    .end local v1    # "d_str":Ljava/io/ObjectInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "f_str":Ljava/io/FileInputStream;
    .end local v11    # "naviBarHidePackages":Lcom/android/server/wm/FixedNaviBarPackageMap;
    .restart local v2    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v7    # "f_str":Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v1    # "d_str":Ljava/io/ObjectInputStream;
    move-object v6, v7

    .line 270
    .end local v7    # "f_str":Ljava/io/FileInputStream;
    .restart local v6    # "f_str":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v6, :cond_3

    .line 272
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 276
    :cond_3
    :goto_5
    if-eqz v1, :cond_1

    .line 278
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 279
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 273
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 269
    .end local v1    # "d_str":Ljava/io/ObjectInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "f_str":Ljava/io/FileInputStream;
    .restart local v2    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v7    # "f_str":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v13

    move-object v1, v2

    .end local v2    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v1    # "d_str":Ljava/io/ObjectInputStream;
    move-object v6, v7

    .line 270
    .end local v7    # "f_str":Ljava/io/FileInputStream;
    .restart local v6    # "f_str":Ljava/io/FileInputStream;
    :goto_6
    if-eqz v6, :cond_4

    .line 272
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 276
    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    .line 278
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 269
    :cond_5
    :goto_8
    throw v13

    .line 273
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 279
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_8

    .end local v1    # "d_str":Ljava/io/ObjectInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "f_str":Ljava/io/FileInputStream;
    .end local v9    # "file":Ljava/io/File;
    .end local v12    # "userId":I
    .restart local v2    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v7    # "f_str":Ljava/io/FileInputStream;
    :cond_6
    move-object v1, v2

    .end local v2    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v1    # "d_str":Ljava/io/ObjectInputStream;
    move-object v6, v7

    .line 249
    .end local v1    # "d_str":Ljava/io/ObjectInputStream;
    .end local v7    # "f_str":Ljava/io/FileInputStream;
    :cond_7
    return-void

    .line 269
    .restart local v2    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v6    # "f_str":Ljava/io/FileInputStream;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v12    # "userId":I
    :catchall_1
    move-exception v13

    move-object v1, v2

    .end local v2    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v1    # "d_str":Ljava/io/ObjectInputStream;
    goto :goto_6

    :catchall_2
    move-exception v13

    goto :goto_6

    .line 268
    .end local v1    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v2    # "d_str":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v1    # "d_str":Ljava/io/ObjectInputStream;
    goto :goto_4

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_4
.end method

.method private schedulePackageSave()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 374
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mPolicyHandler:Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mPolicyHandler:Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;->removeMessages(I)V

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mPolicyHandler:Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 378
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mPolicyHandler:Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/NaviBarHidePolicyManager$NaviBarHidePolicyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 373
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 415
    packed-switch p0, :pswitch_data_0

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 417
    :pswitch_0
    const-string v0, "FIXED_OFF"

    return-object v0

    .line 419
    :pswitch_1
    const-string v0, "OFF"

    return-object v0

    .line 421
    :pswitch_2
    const-string v0, "ON"

    return-object v0

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private writeFixedNaviBarPackageMap()V
    .locals 13

    .prologue
    .line 288
    new-instance v8, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 289
    .local v8, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 291
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyManager;->getFixedPackageForUser()Lcom/android/server/wm/FixedNaviBarPackageMap;

    move-result-object v9

    .line 295
    .local v9, "tmp":Lcom/android/server/wm/FixedNaviBarPackageMap;
    new-instance v7, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "PackageMap"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 296
    .local v7, "filePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 297
    .local v5, "f_str":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 299
    .local v0, "d_str":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v5    # "f_str":Ljava/io/FileOutputStream;
    .local v6, "f_str":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    .local v1, "d_str":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v1, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 305
    .end local v0    # "d_str":Ljava/io/ObjectOutputStream;
    if-eqz v6, :cond_1

    .line 307
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 311
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 313
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v0, v1

    .end local v1    # "d_str":Ljava/io/ObjectOutputStream;
    .local v0, "d_str":Ljava/io/ObjectOutputStream;
    move-object v5, v6

    .line 287
    .end local v0    # "d_str":Ljava/io/ObjectOutputStream;
    .end local v6    # "f_str":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    return-void

    .line 308
    .restart local v1    # "d_str":Ljava/io/ObjectOutputStream;
    .restart local v6    # "f_str":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    .line 314
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 302
    .end local v1    # "d_str":Ljava/io/ObjectOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "f_str":Ljava/io/FileOutputStream;
    .local v0, "d_str":Ljava/io/ObjectOutputStream;
    .restart local v5    # "f_str":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    .line 303
    .end local v0    # "d_str":Ljava/io/ObjectOutputStream;
    .end local v5    # "f_str":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v10, "NaviBarHidePolicyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to writeFixedNaviBarPackageMap filePath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 305
    if-eqz v5, :cond_4

    .line 307
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 311
    :cond_4
    :goto_4
    if-eqz v0, :cond_3

    .line 313
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 314
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 308
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 304
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 305
    :goto_5
    if-eqz v5, :cond_5

    .line 307
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 311
    :cond_5
    :goto_6
    if-eqz v0, :cond_6

    .line 313
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 304
    :cond_6
    :goto_7
    throw v10

    .line 308
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 314
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 304
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "d_str":Ljava/io/ObjectOutputStream;
    .restart local v6    # "f_str":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "f_str":Ljava/io/FileOutputStream;
    .local v5, "f_str":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0    # "d_str":Ljava/io/ObjectOutputStream;
    .end local v5    # "f_str":Ljava/io/FileOutputStream;
    .restart local v1    # "d_str":Ljava/io/ObjectOutputStream;
    .restart local v6    # "f_str":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "d_str":Ljava/io/ObjectOutputStream;
    .local v0, "d_str":Ljava/io/ObjectOutputStream;
    move-object v5, v6

    .end local v6    # "f_str":Ljava/io/FileOutputStream;
    .restart local v5    # "f_str":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 302
    .end local v5    # "f_str":Ljava/io/FileOutputStream;
    .local v0, "d_str":Ljava/io/ObjectOutputStream;
    .restart local v6    # "f_str":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "f_str":Ljava/io/FileOutputStream;
    .restart local v5    # "f_str":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "d_str":Ljava/io/ObjectOutputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "f_str":Ljava/io/FileOutputStream;
    .restart local v1    # "d_str":Ljava/io/ObjectOutputStream;
    .restart local v6    # "f_str":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "d_str":Ljava/io/ObjectOutputStream;
    .local v0, "d_str":Ljava/io/ObjectOutputStream;
    move-object v5, v6

    .end local v6    # "f_str":Ljava/io/FileOutputStream;
    .restart local v5    # "f_str":Ljava/io/FileOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public getNaviBarHidePackageInfo(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 159
    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyManager;->getFixedPackageForUser()Lcom/android/server/wm/FixedNaviBarPackageMap;

    move-result-object v0

    .line 160
    .local v0, "naviBarHidePackages":Lcom/android/server/wm/FixedNaviBarPackageMap;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 163
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/NaviBarHidePolicyManager;->isNonImmersiveModePackage(Ljava/lang/String;I)I

    move-result v1

    .line 164
    .local v1, "ret":I
    if-eq v1, v3, :cond_1

    .line 165
    return v1

    .line 169
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/NaviBarHidePolicyManager;->isDefaultOffPackages(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    const/4 v2, 0x0

    return v2

    .line 173
    :cond_2
    return v3
.end method

.method public init(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .locals 5
    .param p1, "_service"    # Lcom/android/server/wm/SamsungWindowManagerService;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    new-instance v2, Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;

    const-string v3, "NaviBarHidePolicyWriterThread"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;-><init>(Lcom/android/server/wm/NaviBarHidePolicyManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mLazyWriterThread:Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;

    .line 102
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "policyDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    const-string v2, "NaviBarHidePolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create directory : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyManager;->readNaviBarHidePolicyPackageMaps()V

    .line 108
    iget-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mLazyWriterThread:Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;

    invoke-virtual {v2}, Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mLazyWriterThread:Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;

    invoke-virtual {v2}, Lcom/android/server/wm/NaviBarHidePolicyManager$LazyWriterThread;->start()V

    .line 92
    :cond_1
    return-void
.end method

.method public isNaviBarFixedPackage(I)Z
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mRunningFixedPkgInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 152
    .local v0, "ret":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 155
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onApplicationStarted(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .prologue
    const/4 v1, 0x1

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/NaviBarHidePolicyManager;->getNaviBarHidePackageInfo(Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, "info":I
    iget-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mRunningFixedPkgInfo:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eq v0, v1, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-boolean v1, Lcom/android/server/wm/NaviBarHidePolicyManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "NaviBarHidePolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplicationStarted() info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mRunningFixedPkgInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return-void

    .line 139
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onApplicationStopped(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mRunningFixedPkgInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-boolean v0, Lcom/android/server/wm/NaviBarHidePolicyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "NaviBarHidePolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplicationStopped() pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mRunningFixedPkgInfo:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return-void
.end method

.method public setNaviBarHidetPackage(Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "disable"    # Z

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyManager;->checkCallerIsSystemOrPermission()V

    .line 179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 181
    .local v2, "origId":J
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 182
    .local v4, "userId":I
    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyManager;->getFixedPackageForUser()Lcom/android/server/wm/FixedNaviBarPackageMap;

    move-result-object v1

    .line 183
    .local v1, "naviBarHidePackages":Lcom/android/server/wm/FixedNaviBarPackageMap;
    const/4 v0, 0x0

    .line 184
    .local v0, "bUpdated":Z
    if-eqz p3, :cond_1

    .line 185
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/NaviBarHidePolicyManager;->disableNaviBarHide(Lcom/android/server/wm/FixedNaviBarPackageMap;Ljava/lang/String;I)Z

    move-result v0

    .line 189
    .local v0, "bUpdated":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/NaviBarHidePolicyManager;->schedulePackageSave()V

    .line 191
    if-eqz v0, :cond_0

    const-string v5, "com.android.settings"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 195
    :cond_0
    :goto_1
    const-string v5, "NaviBarHidePolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNaviBarHidetPackage() pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", disable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", updated="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 196
    const-string v7, ", runningSize="

    .line 195
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 196
    iget-object v7, p0, Lcom/android/server/wm/NaviBarHidePolicyManager;->mRunningFixedPkgInfo:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    .line 195
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 196
    const-string v7, ", size="

    .line 195
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 196
    invoke-virtual {v1}, Lcom/android/server/wm/FixedNaviBarPackageMap;->size()I

    move-result v7

    .line 195
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    return-void

    .line 187
    .local v0, "bUpdated":Z
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/NaviBarHidePolicyManager;->enableNaviBarHide(Lcom/android/server/wm/FixedNaviBarPackageMap;Ljava/lang/String;I)Z

    move-result v0

    .local v0, "bUpdated":Z
    goto :goto_0

    .line 192
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/NaviBarHidePolicyManager;->killApplication(Ljava/lang/String;I)V

    goto :goto_1
.end method
