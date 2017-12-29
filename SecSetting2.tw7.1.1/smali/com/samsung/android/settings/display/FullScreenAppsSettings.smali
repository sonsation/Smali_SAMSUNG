.class public Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "FullScreenAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$4;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$Row;
    }
.end annotation


# static fields
.field private static mFragmentVisible:Z

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoFit:Landroid/preference/SwitchPreference;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFullScreenApps:Landroid/preference/PreferenceCategory;

.field private mFullScreenAppsSettingsHandler:Landroid/os/Handler;

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPartialLoading:Z

.field private mIsShowAppsTypeAll:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mProgress:Landroid/app/ProgressDialog;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field private mShowAppsType:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

.field private mSortByAppType:Z

.field private mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mShowAppsType:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortByAppType:Z

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenApps:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsPartialLoading:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get8()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsPartialLoading:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsShowAppsTypeAll:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->IsFragmentVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enable"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setMaxAspectPackage(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->loadAppsList()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->refreshDisplayedItems()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFragmentVisible:Z

    .line 449
    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRowComparator:Ljava/util/Comparator;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRows:Landroid/util/ArrayMap;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 186
    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenAppsSettingsHandler:Landroid/os/Handler;

    .line 271
    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 350
    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 552
    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 65
    return-void
.end method

.method private declared-synchronized IsFragmentVisible()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 263
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getConfigMaxAspectPackage(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "config":I
    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/view/SemWindowManager;->isMaxAspectPackageEx(Ljava/lang/String;I)I

    move-result v0

    .line 482
    const-string/jumbo v1, "FullScreenAppsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getConfigMaxAspectPackage() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return v0
.end method

.method private getPackageType(Ljava/lang/String;ILandroid/app/Activity;)I
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->isDefaultMaxAspectPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    const-string/jumbo v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageType() #0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return v5

    .line 502
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->isGameApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    const-string/jumbo v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageType() #3 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v2, 0x3

    return v2

    .line 507
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 508
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 507
    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 513
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_4

    .line 514
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x17

    if-gt v2, v3, :cond_3

    .line 515
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_2

    .line 517
    const-string/jumbo v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageType() #4 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v2, 0x4

    return v2

    .line 509
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 510
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isResizeableActivity() RemoteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return v6

    .line 520
    .end local v1    # "e":Landroid/os/RemoteException;
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    const-string/jumbo v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageType() #5 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v2, 0x5

    return v2

    .line 523
    :cond_3
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_4

    .line 525
    const-string/jumbo v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageType() #1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v2, 0x1

    return v2

    .line 529
    :cond_4
    const-string/jumbo v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageType() #2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return v6
.end method

.method private initSorting()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 219
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortByAppType:Z

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsPartialLoading:Z

    .line 221
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setHasOptionsMenu(Z)V

    .line 218
    return-void
.end method

.method private isDefaultMaxAspectPackage(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 492
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getConfigMaxAspectPackage(Ljava/lang/String;I)I

    move-result v0

    .line 493
    .local v0, "config":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isGameApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 535
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v2, :cond_0

    .line 536
    const-string/jumbo v2, "gamemanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 537
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 538
    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 541
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v2, :cond_1

    .line 542
    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v2, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    const/4 v2, 0x1

    return v2

    .line 546
    :catch_0
    move-exception v1

    .line 548
    :cond_1
    return v3
.end method

.method private isMaxAspectPackage(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    .line 487
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getConfigMaxAspectPackage(Ljava/lang/String;I)I

    move-result v0

    .line 488
    .local v0, "config":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 424
    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 425
    .local v1, "mIconResizer":Lcom/samsung/android/settings/IconResizer;
    const v2, 0x7f0a0023

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 428
    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 430
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 7

    .prologue
    .line 363
    const-string/jumbo v4, "FullScreenAppsSettings"

    const-string/jumbo v5, "Refreshing apps..."

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 365
    iget-object v5, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v5

    .line 366
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 367
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 368
    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 369
    const-string/jumbo v4, "FullScreenAppsSettings"

    const-string/jumbo v6, "mSortedRows size is 0"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 370
    return-void

    .line 372
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    .line 374
    .local v3, "row":Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    new-instance v2, Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 375
    .local v2, "pref":Landroid/preference/SwitchPreference;
    iget-object v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 377
    iget v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-nez v4, :cond_2

    .line 379
    iget-boolean v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsShowAppsTypeAll:Z

    if-nez v4, :cond_1

    .line 367
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 383
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 384
    const v4, 0x7f0b06c4

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 401
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 365
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pref":Landroid/preference/SwitchPreference;
    .end local v3    # "row":Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 387
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "pref":Landroid/preference/SwitchPreference;
    .restart local v3    # "row":Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    :cond_2
    :try_start_2
    iget v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    .line 388
    iget v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 390
    :cond_3
    :goto_3
    const v4, 0x7f0b06c5

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 391
    :cond_4
    new-instance v4, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;)V

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 399
    iget-object v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v6, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->isMaxAspectPackage(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 389
    :cond_5
    iget v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v6, 0x5

    if-ne v4, v6, :cond_4

    goto :goto_3

    .end local v2    # "pref":Landroid/preference/SwitchPreference;
    .end local v3    # "row":Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    :cond_6
    monitor-exit v5

    .line 404
    const-string/jumbo v4, "FullScreenAppsSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Refreshed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " displayed items"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method private declared-synchronized setFragmentVisibleState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    monitor-enter p0

    .line 259
    :try_start_0
    sput-boolean p1, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 258
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setMaxAspectPackage(Ljava/lang/String;IZ)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 459
    const-string/jumbo v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMaxAspectPackage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v1, 0x0

    .line 462
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/IWindowManager;->setMaxAspectPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    const/4 v1, 0x1

    .line 467
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FullScreenAppsSettings"

    const-string/jumbo v3, "setMaxAspectPackage() RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSorting(Z)V
    .locals 1
    .param p1, "sortByAppType"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortByAppType:Z

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsPartialLoading:Z

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->loadAppsList()V

    .line 224
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0x2e

    return v0
.end method

.method public loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Landroid/app/Activity;)Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    .locals 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    .line 409
    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;-><init>()V

    .line 410
    .local v0, "row":Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    .line 411
    iget v2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    .line 413
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    invoke-virtual {p2, p1, v5, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 419
    iget-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    invoke-direct {p0, v2, v3, p4}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getPackageType(Ljava/lang/String;ILandroid/app/Activity;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    .line 420
    return-object v0

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    iget-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 160
    .local v0, "list":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetFastScrollCustomEffectEnabled(Z)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->insetDividerWithAppIcon(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->initSorting()V

    .line 169
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 158
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 132
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 135
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 140
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->addPreferencesFromResource(I)V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b06c2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 143
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1002b4

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 147
    const-string/jumbo v0, "full_screen_apps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenApps:Landroid/preference/PreferenceCategory;

    .line 148
    const-string/jumbo v0, "auto_fit"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mAutoFit:Landroid/preference/SwitchPreference;

    .line 149
    const-string/jumbo v0, "show_apps_type"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mShowAppsType:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mShowAppsType:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenAppsSettingsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->setHandler(Landroid/os/Handler;)V

    .line 151
    iput-boolean v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsShowAppsTypeAll:Z

    .line 154
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 131
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 202
    const/4 v0, 0x1

    const v1, 0x7f0b06c6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 203
    const/4 v0, 0x2

    const v1, 0x7f0b06c7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 204
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 201
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 240
    return v2

    .line 234
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setSorting(Z)V

    .line 235
    return v1

    .line 237
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setSorting(Z)V

    .line 238
    return v1

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setFragmentVisibleState(Z)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "FullScreenApps"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 209
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortByAppType:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 211
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 208
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 214
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->finish()V

    .line 177
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 178
    const-string/jumbo v0, "auto_fit"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->removePreference(Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setFragmentVisibleState(Z)V

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->loadAppsList()V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "FullScreenApps"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 173
    return-void
.end method
