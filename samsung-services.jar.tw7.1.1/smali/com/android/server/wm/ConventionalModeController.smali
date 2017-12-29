.class public Lcom/android/server/wm/ConventionalModeController;
.super Ljava/lang/Object;
.source "ConventionalModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ConventionalModeController$1;,
        Lcom/android/server/wm/ConventionalModeController$2;,
        Lcom/android/server/wm/ConventionalModeController$3;,
        Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;,
        Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;,
        Lcom/android/server/wm/ConventionalModeController$LazyConventialModeWriterThread;,
        Lcom/android/server/wm/ConventionalModeController$VerticalTextView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "ConventionalModeController"


# instance fields
.field private final DIR_PATH:Ljava/lang/String;

.field private final FILE_NAME:Ljava/lang/String;

.field private final MSG_HIDE_CHANGE_RATIO_WINDOW:I

.field private final MSG_KILL_APPLICATION:I

.field private final MSG_SAVE_PACKAGES_NOW:I

.field private final MSG_SHOW_CHANGE_RATIO_WINDOW:I

.field private final NAV_BAR_BOTTOM:I

.field private final NAV_BAR_LEFT:I

.field private final NAV_BAR_RIGHT:I

.field private final TIME_FOR_KILL_APPLICATION:I

.field private final TIME_FOR_SAVE_PACKAGES:I

.field private mChangeRatioButtonView:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

.field private mChangeRatioButtonViewShowing:Z

.field private mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mChangeRatioWindowPosition:I

.field private mChangeRatioWindowSize:I

.field private mConventionModeDir:Ljava/io/File;

.field private mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

.field private mCurrentTopFullOpaquePkg:Ljava/lang/String;

.field private mCurrentTopFullOpaqueUid:I

.field private final mGuidePopupRunnable:Ljava/lang/Runnable;

.field private mLastReLaunchUserId:I

.field private mLazyConventialModeWriterThread:Lcom/android/server/wm/ConventionalModeController$LazyConventialModeWriterThread;

.field private mMaxAspectMapsForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/ConventionalModePackageMap;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mReLaunchTaskId:I

.field private final mRelaunchTaskRunnable:Ljava/lang/Runnable;

.field mSavePackageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/wm/SamsungWindowManagerService;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioButtonView:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/ConventionalModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioButtonViewShowing:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/wm/ConventionalModeController;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/ConventionalModeController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowPosition:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/ConventionalModeController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mCurrentTopFullOpaquePkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/ConventionalModeController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ConventionalModeController;->mCurrentTopFullOpaqueUid:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/ConventionalModeController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ConventionalModeController;->mLastReLaunchUserId:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wm/ConventionalModeController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ConventionalModeController;->mReLaunchTaskId:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/wm/ConventionalModeController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mRelaunchTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wm/ConventionalModeController;)Lcom/android/server/wm/SamsungWindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/ConventionalModeController;Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;)Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioButtonView:Lcom/android/server/wm/ConventionalModeController$ChangeRatioButtonView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/ConventionalModeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioButtonViewShowing:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wm/ConventionalModeController;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/wm/ConventionalModeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ConventionalModeController;->mCurrentTopFullOpaquePkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/ConventionalModeController;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/ConventionalModeController;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ConventionalModeController;->killApplication(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wm/ConventionalModeController;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/ConventionalModeController;->saveConventionalModePackageMap(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wm/ConventionalModeController;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/ConventionalModeController;->showGuidePopup(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/conventionalmode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->DIR_PATH:Ljava/lang/String;

    .line 79
    const-string v0, "PackageMap"

    iput-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->FILE_NAME:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;-><init>(Lcom/android/server/wm/ConventionalModeController;)V

    iput-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mMaxAspectMapsForUser:Ljava/util/Map;

    .line 90
    iput-boolean v3, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioButtonViewShowing:Z

    .line 92
    iput v3, p0, Lcom/android/server/wm/ConventionalModeController;->NAV_BAR_BOTTOM:I

    .line 93
    iput v4, p0, Lcom/android/server/wm/ConventionalModeController;->NAV_BAR_RIGHT:I

    .line 94
    iput v5, p0, Lcom/android/server/wm/ConventionalModeController;->NAV_BAR_LEFT:I

    .line 445
    new-instance v0, Lcom/android/server/wm/ConventionalModeController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ConventionalModeController$1;-><init>(Lcom/android/server/wm/ConventionalModeController;)V

    iput-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mGuidePopupRunnable:Ljava/lang/Runnable;

    .line 564
    iput v4, p0, Lcom/android/server/wm/ConventionalModeController;->MSG_SAVE_PACKAGES_NOW:I

    .line 565
    iput v5, p0, Lcom/android/server/wm/ConventionalModeController;->MSG_KILL_APPLICATION:I

    .line 566
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/ConventionalModeController;->MSG_SHOW_CHANGE_RATIO_WINDOW:I

    .line 567
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wm/ConventionalModeController;->MSG_HIDE_CHANGE_RATIO_WINDOW:I

    .line 569
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/wm/ConventionalModeController;->TIME_FOR_SAVE_PACKAGES:I

    .line 570
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/server/wm/ConventionalModeController;->TIME_FOR_KILL_APPLICATION:I

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mSavePackageQueue:Ljava/util/ArrayList;

    .line 630
    new-instance v0, Lcom/android/server/wm/ConventionalModeController$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ConventionalModeController$2;-><init>(Lcom/android/server/wm/ConventionalModeController;)V

    iput-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 678
    iput v2, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowPosition:I

    .line 679
    iput v3, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowSize:I

    .line 684
    iput v2, p0, Lcom/android/server/wm/ConventionalModeController;->mReLaunchTaskId:I

    .line 685
    iput v2, p0, Lcom/android/server/wm/ConventionalModeController;->mLastReLaunchUserId:I

    .line 686
    new-instance v0, Lcom/android/server/wm/ConventionalModeController$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ConventionalModeController$3;-><init>(Lcom/android/server/wm/ConventionalModeController;)V

    iput-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mRelaunchTaskRunnable:Ljava/lang/Runnable;

    .line 96
    return-void
.end method

.method private adjustWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v1, -0x1

    .line 866
    iget v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowPosition:I

    packed-switch v0, :pswitch_data_0

    .line 865
    :goto_0
    return-void

    .line 868
    :pswitch_0
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 869
    iget v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowSize:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 870
    const/16 v0, 0x50

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 873
    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowSize:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 874
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 875
    const/4 v0, 0x5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 878
    :pswitch_2
    iget v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowSize:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 879
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 880
    const/4 v0, 0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 866
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkCallerIsSystemOrPermission()V
    .locals 3

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController;->isCallerSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    return-void

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.permission.MANAGE_MAXASPECT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 380
    return-void

    .line 383
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

    .line 384
    const-string v2, ", uid="

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    const-string v2, " requires "

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    const-string v2, "com.samsung.android.permission.MANAGE_MAXASPECT"

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearMaxAspect(Lcom/android/server/wm/ConventionalModePackageMap;Ljava/lang/String;I)V
    .locals 3
    .param p1, "maxAspectPackage"    # Lcom/android/server/wm/ConventionalModePackageMap;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 404
    const-string v0, "ConventionalModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxAspect : clear package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ConventionalModePackageMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    return-void
.end method

.method private disableMaxAspect(Lcom/android/server/wm/ConventionalModePackageMap;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "maxAspectPackage"    # Lcom/android/server/wm/ConventionalModePackageMap;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 397
    const-string v1, "ConventionalModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxAspect : disable package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ConventionalModePackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ConventionalModePackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 399
    .local v0, "bUpdated":Z
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/ConventionalModePackageMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    return v0

    .line 398
    .end local v0    # "bUpdated":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bUpdated":Z
    goto :goto_0
.end method

.method private enableMaxAspect(Lcom/android/server/wm/ConventionalModePackageMap;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "maxAspectPackage"    # Lcom/android/server/wm/ConventionalModePackageMap;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 390
    const-string v1, "ConventionalModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxAspect : enable package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ConventionalModePackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ConventionalModePackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 392
    .local v0, "bUpdated":Z
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/ConventionalModePackageMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    return v0

    .line 391
    .end local v0    # "bUpdated":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bUpdated":Z
    goto :goto_0
.end method

.method private excludeConventionalMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 359
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 362
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getMaxAspectPackageForUser(I)Lcom/android/server/wm/ConventionalModePackageMap;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ConventionalModePackageMap;

    .line 410
    .local v0, "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lcom/android/server/wm/ConventionalModePackageMap;

    .end local v0    # "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    invoke-direct {v0}, Lcom/android/server/wm/ConventionalModePackageMap;-><init>()V

    .line 412
    .restart local v0    # "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_0
    return-object v0
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8e0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 851
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ChangeRatioButtonWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 853
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/server/wm/ConventionalModeController;->adjustWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 855
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x20108

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 859
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 860
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 862
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private isCallerSystem()Z
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ConventionalModeController;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isUidSystem(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 367
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
    .line 439
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConventionalModeController;->isProcessKillforMaxAspect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string v3, "conventionalmode"

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/ActivityManagerInternal;->killPackageProcess(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ConventionalModeController;->mReLaunchTaskId:I

    .line 441
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ConventionalModeController;->mLastReLaunchUserId:I

    .line 438
    :cond_0
    return-void
.end method

.method private loadAllConventionalModePackageMaps()V
    .locals 17

    .prologue
    .line 488
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/ConventionalModeController;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 491
    .local v10, "files":[Ljava/io/File;
    const/4 v6, 0x0

    .line 492
    .local v6, "f_str":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 493
    .local v1, "d_str":Ljava/io/ObjectInputStream;
    if-eqz v10, :cond_7

    .line 494
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

    .line 495
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 496
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 497
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

    .line 502
    .end local v8    # "file":Ljava/io/File;
    .local v9, "file":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    .end local v7    # "f_str":Ljava/io/FileInputStream;
    .local v6, "f_str":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 504
    .end local v2    # "d_str":Ljava/io/ObjectInputStream;
    .local v1, "d_str":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/ConventionalModePackageMap;

    .line 505
    .local v11, "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/ConventionalModeController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 508
    if-eqz v6, :cond_0

    .line 510
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 514
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 516
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v11    # "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    :cond_1
    :goto_2
    move-object v8, v9

    .line 494
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

    .line 499
    .end local v7    # "f_str":Ljava/io/FileInputStream;
    .restart local v6    # "f_str":Ljava/io/FileInputStream;
    goto :goto_3

    .line 511
    .end local v8    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    .restart local v12    # "userId":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_1

    .line 517
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 506
    .end local v1    # "d_str":Ljava/io/ObjectInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "f_str":Ljava/io/FileInputStream;
    .end local v11    # "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    .restart local v2    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v7    # "f_str":Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "d_str":Ljava/io/ObjectInputStream;
    .restart local v1    # "d_str":Ljava/io/ObjectInputStream;
    move-object v6, v7

    .line 508
    .end local v7    # "f_str":Ljava/io/FileInputStream;
    .restart local v6    # "f_str":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v6, :cond_3

    .line 510
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 514
    :cond_3
    :goto_5
    if-eqz v1, :cond_1

    .line 516
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 517
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 511
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 507
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

    .line 508
    .end local v7    # "f_str":Ljava/io/FileInputStream;
    .restart local v6    # "f_str":Ljava/io/FileInputStream;
    :goto_6
    if-eqz v6, :cond_4

    .line 510
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 514
    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    .line 516
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 507
    :cond_5
    :goto_8
    throw v13

    .line 511
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 517
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

    .line 487
    .end local v1    # "d_str":Ljava/io/ObjectInputStream;
    .end local v7    # "f_str":Ljava/io/FileInputStream;
    :cond_7
    return-void

    .line 507
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

    .line 506
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

.method private static maxAspectStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 914
    packed-switch p0, :pswitch_data_0

    .line 922
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

    .line 916
    :pswitch_0
    const-string v0, "MAX_ASPECT_RATIO_FIXED_ON"

    return-object v0

    .line 918
    :pswitch_1
    const-string v0, "MAX_ASPECT_RATIO_ON"

    return-object v0

    .line 920
    :pswitch_2
    const-string v0, "MAX_ASPECT_RATIO_OFF"

    return-object v0

    .line 914
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveConventionalModePackageMap(I)V
    .locals 13
    .param p1, "userId"    # I

    .prologue
    .line 532
    new-instance v8, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/wm/ConventionalModeController;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 533
    .local v8, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 535
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 538
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ConventionalModeController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/ConventionalModePackageMap;

    move-result-object v9

    .line 539
    .local v9, "tmp":Lcom/android/server/wm/ConventionalModePackageMap;
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

    .line 540
    .local v7, "filePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 541
    .local v5, "f_str":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 543
    .local v0, "d_str":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    .end local v5    # "f_str":Ljava/io/FileOutputStream;
    .local v6, "f_str":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 545
    .local v1, "d_str":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v1, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 549
    .end local v0    # "d_str":Ljava/io/ObjectOutputStream;
    if-eqz v6, :cond_1

    .line 551
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 555
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 557
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

    .line 531
    .end local v0    # "d_str":Ljava/io/ObjectOutputStream;
    .end local v6    # "f_str":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    return-void

    .line 552
    .restart local v1    # "d_str":Ljava/io/ObjectOutputStream;
    .restart local v6    # "f_str":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    .line 558
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 546
    .end local v1    # "d_str":Ljava/io/ObjectOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "f_str":Ljava/io/FileOutputStream;
    .local v0, "d_str":Ljava/io/ObjectOutputStream;
    .restart local v5    # "f_str":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    .line 547
    .end local v0    # "d_str":Ljava/io/ObjectOutputStream;
    .end local v5    # "f_str":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v10, "ConventionalModeController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to saveConventionalModePackageMap id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 549
    if-eqz v5, :cond_4

    .line 551
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 555
    :cond_4
    :goto_4
    if-eqz v0, :cond_3

    .line 557
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 558
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 552
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 548
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 549
    :goto_5
    if-eqz v5, :cond_5

    .line 551
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 555
    :cond_5
    :goto_6
    if-eqz v0, :cond_6

    .line 557
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 548
    :cond_6
    :goto_7
    throw v10

    .line 552
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 558
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 548
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

    .line 546
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

.method private scheduleKillApplication(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x2

    .line 582
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->removeMessages(I)V

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p2, v2, p1}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 586
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 581
    return-void
.end method

.method private schedulePackageSave()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 574
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->removeMessages(I)V

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 578
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 573
    return-void
.end method

.method private showGuidePopup(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 453
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "conventionalmode_guide_popup_for_recent"

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "conventionalmode_guide_popup_for_recent"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mGuidePopupRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    :cond_0
    return-void
.end method

.method private updatePackageConfiguration(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v6, 0x1

    .line 460
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getPackageConfigurationController()Lcom/android/server/PackageConfigurationController;

    move-result-object v3

    .line 461
    .local v3, "packageConfigurationController":Lcom/android/server/PackageConfigurationController;
    if-eqz v3, :cond_0

    .line 462
    if-eqz p2, :cond_1

    .line 463
    invoke-interface {v3, p1}, Lcom/android/server/PackageConfigurationController;->disableConventionalModeInternal(Ljava/lang/String;)Z

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConventionalModeController;->getDefaultMaxAspect(Ljava/lang/String;)F

    move-result v0

    .line 466
    .local v0, "defaultMaxAspect":F
    iget-object v4, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/SamsungWindowManagerService;->getCurrentAspect()F

    move-result v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_3

    .line 467
    invoke-interface {v3, p1}, Lcom/android/server/PackageConfigurationController;->disableConventionalModeInternal(Ljava/lang/String;)Z

    .line 473
    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/game/GamePkgDataHelper;->getInstance()Lcom/samsung/android/game/GamePkgDataHelper;

    move-result-object v2

    .line 474
    .local v2, "gamePkgDataHelper":Lcom/samsung/android/game/GamePkgDataHelper;
    if-eqz v2, :cond_0

    .line 475
    invoke-virtual {v2, p1}, Lcom/samsung/android/game/GamePkgDataHelper;->getGamePkgData(Ljava/lang/String;)Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;

    move-result-object v1

    .line 476
    .local v1, "gamePkgData":Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    if-eqz v1, :cond_0

    .line 477
    invoke-virtual {v1}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->isBlackSurfaceNeeded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    invoke-interface {v3, p1, v6}, Lcom/android/server/PackageConfigurationController;->enableBackgroundSurfaceForPackage(Ljava/lang/String;Z)V

    .line 479
    const-string v4, "ConventionalModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePackageConfiguration : enableBackgroundSurfaceForPackage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    .end local v1    # "gamePkgData":Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    .end local v2    # "gamePkgDataHelper":Lcom/samsung/android/game/GamePkgDataHelper;
    :cond_3
    invoke-interface {v3, p1, v6}, Lcom/android/server/PackageConfigurationController;->getAspectRatio(Ljava/lang/String;Z)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 470
    invoke-interface {v3, p1, v0}, Lcom/android/server/PackageConfigurationController;->enableConventionalModeInternal(Ljava/lang/String;F)Z

    goto :goto_1
.end method


# virtual methods
.method clearMaxAspectPackage(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "killProcess"    # Z

    .prologue
    .line 246
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 247
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/wm/ConventionalModeController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/ConventionalModePackageMap;

    move-result-object v0

    .line 248
    .local v0, "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wm/ConventionalModeController;->clearMaxAspect(Lcom/android/server/wm/ConventionalModePackageMap;Ljava/lang/String;I)V

    .line 249
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/ConventionalModeController;->updatePackageConfiguration(Ljava/lang/String;Z)V

    .line 250
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController;->schedulePackageSave()V

    .line 255
    if-eqz p3, :cond_1

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ConventionalModeController;->killApplication(Ljava/lang/String;I)V

    .line 245
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 886
    if-nez p2, :cond_0

    .line 887
    return-void

    .line 889
    :cond_0
    const-string v7, "ConventionalMode Controller"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    iget-object v7, p0, Lcom/android/server/wm/ConventionalModeController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 891
    .local v2, "keys":Ljava/util/Iterator;
    iget-object v7, p0, Lcom/android/server/wm/ConventionalModeController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 892
    const-string v7, "  mMaxAspectMaps is empty"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 897
    .local v4, "origId":J
    :try_start_0
    const-string v7, "  PackageName is"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 899
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 900
    .local v6, "userid":I
    iget-object v7, p0, Lcom/android/server/wm/ConventionalModeController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ConventionalModePackageMap;

    .line 901
    .local v3, "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ConventionalModePackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 902
    const-string v7, "    Contain Map of userID("

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ")"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-interface {v7, p2, v8, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 905
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v7, "    MaxAspectState is "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConventionalModeController;->isMaxAspectPackage(Landroid/content/pm/ApplicationInfo;)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/wm/ConventionalModeController;->maxAspectStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 907
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    .end local v6    # "userid":I
    :catch_0
    move-exception v1

    .line 909
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 885
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 909
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 908
    :catchall_0
    move-exception v7

    .line 909
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 908
    throw v7
.end method

.method public getDefaultMaxAspect(Ljava/lang/String;)F
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, "defaultMaxAspect":F
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getPackageConfigurationController()Lcom/android/server/PackageConfigurationController;

    move-result-object v3

    .line 335
    .local v3, "packageConfigurationController":Lcom/android/server/PackageConfigurationController;
    if-eqz v3, :cond_0

    .line 336
    invoke-interface {v3, p1}, Lcom/android/server/PackageConfigurationController;->getServerAspectRatio(Ljava/lang/String;)F

    move-result v0

    .line 337
    const-string v4, "ConventionalModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultMaxAspect in server data package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ratio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    cmpg-float v4, v0, v7

    if-gtz v4, :cond_1

    .line 341
    invoke-static {}, Lcom/samsung/android/game/GamePkgDataHelper;->getInstance()Lcom/samsung/android/game/GamePkgDataHelper;

    move-result-object v2

    .line 342
    .local v2, "gamePkgDataHelper":Lcom/samsung/android/game/GamePkgDataHelper;
    if-eqz v2, :cond_1

    .line 343
    invoke-virtual {v2, p1}, Lcom/samsung/android/game/GamePkgDataHelper;->getGamePkgData(Ljava/lang/String;)Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;

    move-result-object v1

    .line 344
    .local v1, "gamePkgData":Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {v1}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getAspectRatio()F

    move-result v0

    .line 346
    const-string v4, "ConventionalModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultMaxAspect in game data package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ratio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v1    # "gamePkgData":Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    .end local v2    # "gamePkgDataHelper":Lcom/samsung/android/game/GamePkgDataHelper;
    :cond_1
    cmpg-float v4, v0, v7

    if-gtz v4, :cond_2

    .line 352
    iget-object v4, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/SamsungWindowManagerService;->getDefaultMaxAspect()F

    move-result v0

    .line 355
    :cond_2
    return v0
.end method

.method public hideChangeRatioButtonWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 723
    iget-boolean v1, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioButtonViewShowing:Z

    if-nez v1, :cond_0

    .line 724
    return-void

    .line 726
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowPosition:I

    .line 727
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowSize:I

    .line 728
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 730
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 722
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public init(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .locals 4
    .param p1, "_service"    # Lcom/android/server/wm/SamsungWindowManagerService;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    new-instance v1, Lcom/android/server/wm/ConventionalModeController$LazyConventialModeWriterThread;

    const-string v2, "LazyConventialModeWriterThread"

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ConventionalModeController$LazyConventialModeWriterThread;-><init>(Lcom/android/server/wm/ConventionalModeController;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mLazyConventialModeWriterThread:Lcom/android/server/wm/ConventionalModeController$LazyConventialModeWriterThread;

    .line 109
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionModeDir:Ljava/io/File;

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionModeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const-string v1, "ConventionalModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create directory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionModeDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionModeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController;->loadAllConventionalModePackageMaps()V

    .line 115
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mLazyConventialModeWriterThread:Lcom/android/server/wm/ConventionalModeController$LazyConventialModeWriterThread;

    invoke-virtual {v1}, Lcom/android/server/wm/ConventionalModeController$LazyConventialModeWriterThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mLazyConventialModeWriterThread:Lcom/android/server/wm/ConventionalModeController$LazyConventialModeWriterThread;

    invoke-virtual {v1}, Lcom/android/server/wm/ConventionalModeController$LazyConventialModeWriterThread;->start()V

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mWindowManager:Landroid/view/WindowManager;

    .line 99
    return-void
.end method

.method public isMaxAspectComponent(Landroid/content/pm/ActivityInfo;)I
    .locals 12
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 196
    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController;->checkCallerIsSystemOrPermission()V

    .line 198
    if-nez p1, :cond_0

    .line 199
    return v8

    .line 202
    :cond_0
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/wm/ConventionalModeController;->excludeConventionalMode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    return v9

    .line 206
    :cond_1
    const/4 v2, 0x0

    .line 207
    .local v2, "defineMaxAspect":F
    iget-object v6, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/SamsungWindowManagerService;->getDefaultMaxAspect()F

    move-result v1

    .line 208
    .local v1, "defaultMaxAspect":F
    iget-object v6, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/SamsungWindowManagerService;->getCurrentAspect()F

    move-result v0

    .line 209
    .local v0, "currentAspect":F
    cmpl-float v6, v1, v0

    if-ltz v6, :cond_2

    .line 210
    return v9

    .line 213
    :cond_2
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 214
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "android.max_aspect"

    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 216
    :cond_3
    cmpl-float v6, v2, v0

    if-ltz v6, :cond_4

    .line 217
    return v9

    .line 220
    :cond_4
    const/4 v5, 0x0

    .line 221
    .local v5, "serverAspect":F
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getPackageConfigurationController()Lcom/android/server/PackageConfigurationController;

    move-result-object v4

    .line 222
    .local v4, "packageConfigurationController":Lcom/android/server/PackageConfigurationController;
    if-eqz v4, :cond_5

    .line 223
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/android/server/PackageConfigurationController;->getServerAspectRatio(Ljava/lang/String;)F

    move-result v5

    .line 224
    cmpl-float v6, v5, v0

    if-ltz v6, :cond_5

    .line 225
    return v9

    .line 229
    :cond_5
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wm/ConventionalModeController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/ConventionalModePackageMap;

    move-result-object v3

    .line 230
    .local v3, "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ConventionalModePackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 231
    iget v6, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eqz v6, :cond_7

    .line 232
    cmpl-float v6, v5, v10

    if-nez v6, :cond_7

    .line 233
    return v11

    .line 237
    :cond_6
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ConventionalModePackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_7

    .line 238
    return v11

    .line 242
    :cond_7
    return v8
.end method

.method public isMaxAspectPackage(Landroid/content/pm/ApplicationInfo;)I
    .locals 12
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 146
    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController;->checkCallerIsSystemOrPermission()V

    .line 148
    if-nez p1, :cond_0

    .line 149
    return v8

    .line 152
    :cond_0
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/wm/ConventionalModeController;->excludeConventionalMode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    return v9

    .line 156
    :cond_1
    const/4 v2, 0x0

    .line 157
    .local v2, "defineMaxAspect":F
    iget-object v6, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/SamsungWindowManagerService;->getDefaultMaxAspect()F

    move-result v1

    .line 158
    .local v1, "defaultMaxAspect":F
    iget-object v6, p0, Lcom/android/server/wm/ConventionalModeController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/SamsungWindowManagerService;->getCurrentAspect()F

    move-result v0

    .line 159
    .local v0, "currentAspect":F
    cmpl-float v6, v1, v0

    if-ltz v6, :cond_2

    .line 160
    return v9

    .line 163
    :cond_2
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 164
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "android.max_aspect"

    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 166
    :cond_3
    cmpl-float v6, v2, v0

    if-ltz v6, :cond_4

    .line 167
    return v9

    .line 170
    :cond_4
    const/4 v5, 0x0

    .line 171
    .local v5, "serverAspect":F
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getPackageConfigurationController()Lcom/android/server/PackageConfigurationController;

    move-result-object v4

    .line 172
    .local v4, "packageConfigurationController":Lcom/android/server/PackageConfigurationController;
    if-eqz v4, :cond_5

    .line 173
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/android/server/PackageConfigurationController;->getServerAspectRatio(Ljava/lang/String;)F

    move-result v5

    .line 174
    cmpl-float v6, v5, v0

    if-ltz v6, :cond_5

    .line 175
    return v9

    .line 179
    :cond_5
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wm/ConventionalModeController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/ConventionalModePackageMap;

    move-result-object v3

    .line 180
    .local v3, "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ConventionalModePackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 181
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_7

    .line 182
    cmpl-float v6, v5, v10

    if-nez v6, :cond_7

    .line 183
    return v11

    .line 187
    :cond_6
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ConventionalModePackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_7

    .line 188
    return v11

    .line 192
    :cond_7
    return v8
.end method

.method public isMaxAspectPackage(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController;->checkCallerIsSystemOrPermission()V

    .line 124
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/ConventionalModeController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/ConventionalModePackageMap;

    move-result-object v1

    .line 125
    .local v1, "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ConventionalModePackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, p1, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 128
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 129
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_0

    .line 130
    return v7

    .line 133
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 134
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "ConventionalModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get aInfo for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_0
    return v6

    .line 137
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ConventionalModePackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 138
    return v7
.end method

.method public isProcessKillforMaxAspect(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 418
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getPackageConfigurationController()Lcom/android/server/PackageConfigurationController;

    move-result-object v3

    .line 419
    .local v3, "packageConfigurationController":Lcom/android/server/PackageConfigurationController;
    if-eqz v3, :cond_2

    .line 420
    invoke-interface {v3, p1}, Lcom/android/server/PackageConfigurationController;->needProcessKill(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 421
    .local v2, "killProcess":Ljava/lang/Boolean;
    if-nez v2, :cond_0

    .line 422
    invoke-interface {v3}, Lcom/android/server/PackageConfigurationController;->isProcessKillPolicy()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 424
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 425
    invoke-static {}, Lcom/samsung/android/game/GamePkgDataHelper;->getInstance()Lcom/samsung/android/game/GamePkgDataHelper;

    move-result-object v1

    .line 426
    .local v1, "gamePkgDataHelper":Lcom/samsung/android/game/GamePkgDataHelper;
    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {v1, p1}, Lcom/samsung/android/game/GamePkgDataHelper;->getGamePkgData(Ljava/lang/String;)Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;

    move-result-object v0

    .line 428
    .local v0, "gamePkgData":Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    if-eqz v0, :cond_1

    .line 429
    return v5

    .line 433
    .end local v0    # "gamePkgData":Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    .end local v1    # "gamePkgDataHelper":Lcom/samsung/android/game/GamePkgDataHelper;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 435
    .end local v2    # "killProcess":Ljava/lang/Boolean;
    :cond_2
    return v5
.end method

.method public saveAllConventionalModePackageMaps()V
    .locals 3

    .prologue
    .line 526
    iget-object v2, p0, Lcom/android/server/wm/ConventionalModeController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "userId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 527
    .local v0, "userId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/ConventionalModeController;->saveConventionalModePackageMap(I)V

    goto :goto_0

    .line 525
    .end local v0    # "userId":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public setMaxAspectPackage(Ljava/lang/String;IZZ)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enable"    # Z
    .param p4, "killProcess"    # Z

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController;->checkCallerIsSystemOrPermission()V

    .line 263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 265
    .local v2, "origId":J
    const/4 v0, 0x0

    .line 267
    .local v0, "bUpdated":Z
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 268
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/wm/ConventionalModeController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/ConventionalModePackageMap;

    move-result-object v1

    .line 269
    .local v1, "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    if-eqz p3, :cond_2

    .line 270
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/ConventionalModeController;->enableMaxAspect(Lcom/android/server/wm/ConventionalModePackageMap;Ljava/lang/String;I)Z

    move-result v0

    .line 274
    .local v0, "bUpdated":Z
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/ConventionalModeController;->updatePackageConfiguration(Ljava/lang/String;Z)V

    .line 275
    iget-object v5, p0, Lcom/android/server/wm/ConventionalModeController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 276
    iget-object v5, p0, Lcom/android/server/wm/ConventionalModeController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController;->schedulePackageSave()V

    .line 280
    if-eqz p4, :cond_1

    if-eqz v0, :cond_1

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ConventionalModeController;->killApplication(Ljava/lang/String;I)V

    .line 284
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 260
    return-void

    .line 272
    .local v0, "bUpdated":Z
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/ConventionalModeController;->disableMaxAspect(Lcom/android/server/wm/ConventionalModePackageMap;Ljava/lang/String;I)Z

    move-result v0

    .local v0, "bUpdated":Z
    goto :goto_0
.end method

.method public setMaxAspectPackages(Ljava/util/List;[IZZ)V
    .locals 11
    .param p2, "uids"    # [I
    .param p3, "enable"    # Z
    .param p4, "killProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[IZZ)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController;->checkCallerIsSystemOrPermission()V

    .line 290
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 292
    .local v4, "origId":J
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 293
    .local v0, "N":I
    :goto_0
    array-length v8, p2

    if-eq v0, v8, :cond_1

    .line 294
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong argument size of pkgs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size of uids="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 292
    .end local v0    # "N":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 297
    :cond_1
    const/4 v1, -0x1

    .line 298
    .local v1, "currentUid":I
    const/4 v3, 0x0

    .line 299
    .local v3, "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    const/4 v2, 0x0

    .end local v3    # "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 300
    aget v8, p2, v2

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 301
    .local v7, "uid":I
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 302
    .local v6, "pkg":Ljava/lang/String;
    if-eq v1, v7, :cond_2

    .line 303
    invoke-direct {p0, v7}, Lcom/android/server/wm/ConventionalModeController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/ConventionalModePackageMap;

    move-result-object v3

    .line 304
    .local v3, "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    move v1, v7

    .line 306
    .end local v3    # "maxAspectPackage":Lcom/android/server/wm/ConventionalModePackageMap;
    :cond_2
    if-eqz p3, :cond_4

    .line 307
    invoke-direct {p0, v3, v6, v7}, Lcom/android/server/wm/ConventionalModeController;->enableMaxAspect(Lcom/android/server/wm/ConventionalModePackageMap;Ljava/lang/String;I)Z

    .line 311
    :goto_2
    invoke-direct {p0, v6, p3}, Lcom/android/server/wm/ConventionalModeController;->updatePackageConfiguration(Ljava/lang/String;Z)V

    .line 312
    iget-object v8, p0, Lcom/android/server/wm/ConventionalModeController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 313
    iget-object v8, p0, Lcom/android/server/wm/ConventionalModeController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 309
    :cond_4
    invoke-direct {p0, v3, v6, v7}, Lcom/android/server/wm/ConventionalModeController;->disableMaxAspect(Lcom/android/server/wm/ConventionalModePackageMap;Ljava/lang/String;I)Z

    goto :goto_2

    .line 316
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "uid":I
    :cond_5
    const/4 v8, -0x1

    if-eq v1, v8, :cond_6

    .line 317
    invoke-direct {p0}, Lcom/android/server/wm/ConventionalModeController;->schedulePackageSave()V

    .line 320
    :cond_6
    if-eqz p4, :cond_7

    .line 321
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_7

    .line 322
    aget v8, p2, v2

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 323
    .restart local v7    # "uid":I
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 324
    .restart local v6    # "pkg":Ljava/lang/String;
    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/ConventionalModeController;->killApplication(Ljava/lang/String;I)V

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 328
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "uid":I
    :cond_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    return-void
.end method

.method public showChangeRatioButtonWindow(IILjava/lang/String;I)V
    .locals 3
    .param p1, "navPosition"    # I
    .param p2, "size"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    const/4 v2, 0x3

    .line 703
    iget-boolean v1, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioButtonViewShowing:Z

    if-eqz v1, :cond_1

    .line 704
    iget v1, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowPosition:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowSize:I

    if-ne p2, v1, :cond_1

    .line 705
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mCurrentTopFullOpaquePkg:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 704
    if-eqz v1, :cond_1

    .line 706
    iget v1, p0, Lcom/android/server/wm/ConventionalModeController;->mCurrentTopFullOpaqueUid:I

    if-eq p4, v1, :cond_0

    .line 707
    iput p4, p0, Lcom/android/server/wm/ConventionalModeController;->mCurrentTopFullOpaqueUid:I

    .line 709
    :cond_0
    return-void

    .line 712
    :cond_1
    iput p1, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowPosition:I

    .line 713
    iput p2, p0, Lcom/android/server/wm/ConventionalModeController;->mChangeRatioWindowSize:I

    .line 714
    iput-object p3, p0, Lcom/android/server/wm/ConventionalModeController;->mCurrentTopFullOpaquePkg:Ljava/lang/String;

    .line 715
    iput p4, p0, Lcom/android/server/wm/ConventionalModeController;->mCurrentTopFullOpaqueUid:I

    .line 716
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 717
    iget-object v1, p0, Lcom/android/server/wm/ConventionalModeController;->mConventionalModeControlScheduler:Lcom/android/server/wm/ConventionalModeController$ConventionalModeControlScheduler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 718
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 702
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method
