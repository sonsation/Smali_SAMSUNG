.class public Lcom/android/server/wm/SamsungWindowManagerService;
.super Ljava/lang/Object;
.source "SamsungWindowManagerService.java"

# interfaces
.implements Lcom/android/server/wm/IWindowManagerServiceBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SamsungWindowManagerService$1;,
        Lcom/android/server/wm/SamsungWindowManagerService$H;,
        Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_HANDLER:Z = false

.field private static final MAX_APPTOKEN_WINDOWS:I = 0x32

.field private static final PACKAGE_NAME_GOOGLE_PACKAGE_INSTALLER:Ljava/lang/String; = "com.google.android.packageinstaller"

.field private static final PACKAGE_NAME_GOOGLE_PACKAGE_INSTALLER_CHN:Ljava/lang/String; = "com.samsung.android.packageinstaller"

.field static final TAG:Ljava/lang/String; = "SamsungWindowManager"


# instance fields
.field private final SCREENSHOT_MDM_URI:Landroid/net/Uri;

.field mAudioManager:Landroid/media/AudioManager;

.field mBackgroundAnimationNeeded:Z

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentUserId:I

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mFocusedDisplayId:I

.field final mH:Lcom/android/server/wm/SamsungWindowManagerService$H;

.field mHiddenWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mLastChangedDisplayDensityWm:Ljava/lang/String;

.field private mLastChangedDisplaySize:Ljava/lang/String;

.field private mLastChangedDisplaySizeWm:Ljava/lang/String;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mNaviBarHideMgr:Lcom/android/server/wm/NaviBarHidePolicyManager;

.field private mRequestedRotation:I

.field private mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

.field mScreenCaptureAllowedbyMDM:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/android/server/wm/WindowManagerService;

.field mSettingsObserver:Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;

.field private mVSManager:Lcom/samsung/android/server/virtualspace/VSManager;

.field private mVSMode:Z

.field private mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/SamsungWindowManagerService;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->SCREENSHOT_MDM_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/SamsungWindowManagerService;Z)Z
    .locals 1
    .param p1, "switchState"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->setCoverConfiguration(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/SamsungWindowManagerService;Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->notifyCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wm/SamsungWindowManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->updateScreenCaptureMDMPolicy(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    .line 154
    new-instance v0, Lcom/android/server/wm/SamsungWindowManagerService$H;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SamsungWindowManagerService$H;-><init>(Lcom/android/server/wm/SamsungWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mH:Lcom/android/server/wm/SamsungWindowManagerService$H;

    .line 160
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3/isScreenCaptureEnabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 159
    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->SCREENSHOT_MDM_URI:Landroid/net/Uri;

    .line 161
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mScreenCaptureAllowedbyMDM:Landroid/util/SparseArray;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mHiddenWindows:Ljava/util/ArrayList;

    .line 166
    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 167
    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentUserId:I

    .line 171
    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySize:Ljava/lang/String;

    .line 172
    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySizeWm:Ljava/lang/String;

    .line 173
    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplayDensityWm:Ljava/lang/String;

    .line 177
    iput-boolean v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBackgroundAnimationNeeded:Z

    .line 184
    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    .line 234
    new-instance v0, Lcom/android/server/wm/SamsungWindowManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SamsungWindowManagerService$1;-><init>(Lcom/android/server/wm/SamsungWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1984
    iput v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I

    .line 1985
    iput v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mRequestedRotation:I

    .line 188
    new-instance v0, Lcom/android/server/wm/ConventionalModeController;

    invoke-direct {v0}, Lcom/android/server/wm/ConventionalModeController;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    .line 191
    sget-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_HIDE_NAVIBAR:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/android/server/wm/NaviBarHidePolicyManager;->getInstance()Lcom/android/server/wm/NaviBarHidePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mNaviBarHideMgr:Lcom/android/server/wm/NaviBarHidePolicyManager;

    .line 186
    :cond_0
    return-void
.end method

.method private checkSizeDensity(III)Z
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "density"    # I

    .prologue
    .line 1232
    if-ge p1, p2, :cond_1

    move v3, p1

    .line 1233
    .local v3, "sw_width":I
    :goto_0
    const/4 v2, 0x0

    .line 1235
    .local v2, "is_wrong":Z
    int-to-double v4, v3

    int-to-double v6, p3

    const-wide/high16 v8, 0x4064000000000000L    # 160.0

    div-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 1232
    .local v0, "cur_sw":I
    const/16 v4, 0x140

    .line 1237
    if-ge v0, v4, :cond_0

    .line 1238
    const/4 v2, 0x1

    .line 1240
    :try_start_0
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wrong parameter app = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1241
    const-string v6, " width = "

    .line 1240
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1241
    const-string v6, " height = "

    .line 1240
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1241
    const-string v6, " density = "

    .line 1240
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1241
    const-string v6, " cur_sw = "

    .line 1240
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    :cond_0
    :goto_1
    return v2

    .end local v0    # "cur_sw":I
    .end local v2    # "is_wrong":Z
    .end local v3    # "sw_width":I
    :cond_1
    move v3, p2

    .line 1232
    goto :goto_0

    .line 1242
    .restart local v0    # "cur_sw":I
    .restart local v2    # "is_wrong":Z
    .restart local v3    # "sw_width":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private convertActivityResultToComponentName(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v10, 0x0

    .line 462
    const/4 v5, 0x0

    .line 463
    .local v5, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 464
    .local v0, "className":Ljava/lang/String;
    const/4 v7, 0x0

    .line 465
    .local v7, "returnComponent":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 467
    .local v2, "length":I
    if-nez p1, :cond_0

    .line 468
    return-object v10

    .line 471
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 472
    .local v6, "rawString":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x1a

    if-gt v8, v9, :cond_2

    .line 473
    :cond_1
    return-object v10

    .line 476
    :cond_2
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "parsingData":[Ljava/lang/String;
    :try_start_0
    array-length v2, v4

    .line 479
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 480
    aget-object v8, v4, v1

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 481
    aget-object v8, v4, v1

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 486
    :cond_3
    array-length v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 487
    const/4 v8, 0x0

    aget-object v5, v4, v8

    .line 488
    .local v5, "pkgName":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    .line 489
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "className":Ljava/lang/String;
    :goto_1
    new-instance v7, Landroid/content/ComponentName;

    .end local v7    # "returnComponent":Landroid/content/ComponentName;
    invoke-direct {v7, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object v7

    .line 479
    .local v0, "className":Ljava/lang/String;
    .restart local v1    # "i":I
    .local v5, "pkgName":Ljava/lang/String;
    .restart local v7    # "returnComponent":Landroid/content/ComponentName;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 491
    .local v5, "pkgName":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x1

    aget-object v0, v4, v8
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "className":Ljava/lang/String;
    goto :goto_1

    .line 495
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v7    # "returnComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 496
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v8, "SamsungWindowManager"

    const-string v9, "package and class name\'s parsing error"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 498
    const/4 v7, 0x0

    .restart local v7    # "returnComponent":Landroid/content/ComponentName;
    goto :goto_2
.end method

.method private findAppWindowInsertionPointLocked(Lcom/android/server/wm/AppWindowToken;II)I
    .locals 21
    .param p1, "target"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "displayId"    # I
    .param p3, "taskId"    # I

    .prologue
    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    .line 592
    .local v9, "targetTask":Lcom/android/server/wm/Task;
    if-nez v9, :cond_0

    .line 593
    const-string v18, "SamsungWindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "findAppWindowInsertionPointLocked: no Task for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " taskId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/16 v18, 0x0

    return v18

    .line 597
    :cond_0
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 598
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v4, :cond_1

    .line 599
    const-string v18, "SamsungWindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "findAppWindowInsertionPointLocked: no DisplayContent for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/16 v18, 0x0

    return v18

    .line 602
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v16

    .line 603
    .local v16, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 605
    .local v2, "NW":I
    const/4 v5, 0x0

    .line 606
    .local v5, "found":Z
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 607
    .local v12, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v11, v18, -0x1

    .local v11, "taskNdx":I
    :goto_0
    if-ltz v11, :cond_c

    .line 608
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    .line 609
    .local v10, "task":Lcom/android/server/wm/Task;
    if-nez v5, :cond_3

    iget v0, v10, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-eq v0, v1, :cond_3

    .line 607
    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 612
    :cond_3
    iget-object v14, v10, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 613
    .local v14, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v14}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v18

    add-int/lit8 v13, v18, -0x1

    .local v13, "tokenNdx":I
    :goto_1
    if-ltz v13, :cond_2

    .line 614
    invoke-virtual {v14, v13}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/AppWindowToken;

    .line 615
    .local v17, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v5, :cond_4

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    .line 616
    const/4 v5, 0x1

    .line 618
    :cond_4
    if-eqz v5, :cond_5

    .line 621
    const-string v18, "SamsungWindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Looking for lower windows in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 623
    const-string v18, "SamsungWindowManager"

    const-string v19, "Skipping token -- currently sending to bottom"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 626
    :cond_6
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    move-result v18

    add-int/lit8 v6, v18, -0x1

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_5

    .line 627
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowState;

    .line 628
    .local v15, "win":Lcom/android/server/wm/WindowState;
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    .local v7, "j":I
    :goto_3
    if-ltz v7, :cond_9

    .line 629
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 630
    .local v3, "cwin":Lcom/android/server/wm/WindowState;
    iget v0, v3, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v18, v0

    if-ltz v18, :cond_8

    .line 631
    add-int/lit8 v8, v2, -0x1

    .local v8, "pos":I
    :goto_4
    if-ltz v8, :cond_8

    .line 632
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_7

    .line 633
    const-string v18, "SamsungWindowManager"

    .line 634
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found child win @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v8, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 633
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    add-int/lit8 v18, v8, 0x1

    return v18

    .line 631
    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 628
    .end local v8    # "pos":I
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 640
    .end local v3    # "cwin":Lcom/android/server/wm/WindowState;
    :cond_9
    add-int/lit8 v8, v2, -0x1

    .restart local v8    # "pos":I
    :goto_5
    if-ltz v8, :cond_b

    .line 641
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v0, v15, :cond_a

    .line 645
    const-string v18, "SamsungWindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found win @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v8, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    add-int/lit8 v18, v8, 0x1

    return v18

    .line 640
    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 626
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    .line 654
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v8    # "pos":I
    .end local v10    # "task":Lcom/android/server/wm/Task;
    .end local v13    # "tokenNdx":I
    .end local v14    # "tokens":Lcom/android/server/wm/AppTokenList;
    .end local v15    # "win":Lcom/android/server/wm/WindowState;
    .end local v17    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_c
    add-int/lit8 v8, v2, -0x1

    .restart local v8    # "pos":I
    :goto_6
    if-ltz v8, :cond_e

    .line 655
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 656
    const-string v18, "SamsungWindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found wallpaper @"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    add-int/lit8 v18, v8, 0x1

    return v18

    .line 654
    :cond_d
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .line 661
    :cond_e
    const-string v18, "SamsungWindowManager"

    const-string v19, "Found nothing. pos @0"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/16 v18, 0x0

    return v18
.end method

.method private isSamsungAnimationDisabledPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1942
    const-string v0, "com.google.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1943
    const-string v0, "com.samsung.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1942
    if-eqz v0, :cond_1

    .line 1944
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1946
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private notifyCoverStateChanged(Z)V
    .locals 7
    .param p1, "isOpen"    # Z

    .prologue
    .line 1670
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 1671
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 1672
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1673
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1674
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    .local v4, "ws":Lcom/android/server/wm/WindowState;
    :try_start_1
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v5, :cond_0

    .line 1677
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5, p1}, Landroid/view/IWindow;->dispatchCoverStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1673
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "ws":Lcom/android/server/wm/WindowState;
    :cond_1
    monitor-exit v6

    .line 1669
    return-void

    .line 1670
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1679
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "windows":Lcom/android/server/wm/WindowList;
    .restart local v4    # "ws":Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1267
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1268
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1271
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1273
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1275
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 1277
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v2, :cond_0

    .line 1279
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1284
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1277
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v3, :cond_2

    .line 1279
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1280
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1276
    .end local v0    # "e":Ljava/io/IOException;
    .local v1, "line":Ljava/lang/String;
    .local v2, "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    .line 1277
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v2, :cond_3

    .line 1279
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1276
    :cond_3
    :goto_5
    throw v5

    .line 1280
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 1276
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1275
    .restart local v1    # "line":Ljava/lang/String;
    .local v2, "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private setCoverConfiguration(Z)Z
    .locals 6
    .param p1, "switchState"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1644
    const/4 v0, 0x0

    .line 1648
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v3, Lcom/android/server/wm/WindowManagerService;->mLastOrientation:I

    .line 1649
    .local v2, "req":I
    if-eqz p1, :cond_2

    .line 1650
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getOrientationLocked()I

    move-result v2

    .line 1656
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v3, Lcom/android/server/policy/PhoneWindowManager;

    .line 1657
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 1656
    invoke-virtual {v3, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->rotationForOrientationLw(II)I

    move-result v1

    .line 1659
    .local v1, "newRotation":I
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eq v3, v1, :cond_1

    .line 1660
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v5, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(ZZ)Z

    move-result v0

    .line 1662
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 1663
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1666
    .end local v0    # "changed":Z
    :cond_1
    return v0

    .line 1651
    .end local v1    # "newRotation":I
    .local v0, "changed":Z
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v3, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isForceHideBySViewCover()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1652
    const-string v3, "SamsungWindowManager"

    const-string v4, "Force update rotation for SView Cover"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, -0x1

    const/4 v4, -0x1

    iput v4, v3, Lcom/android/server/wm/WindowManagerService;->mLastOrientation:I

    goto :goto_0
.end method

.method private updateForcedDisplaySizeDensity(Lcom/android/server/wm/DisplayContent;)V
    .locals 10
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 1250
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1251
    .local v4, "initMinSize":I
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1252
    .local v3, "initMaxSize":I
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1253
    .local v2, "curMinSize":I
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1254
    .local v1, "curMaxSize":I
    int-to-float v6, v2

    int-to-float v7, v4

    div-float v5, v6, v7

    .line 1255
    .local v5, "screenRatio":F
    const-string v6, "persist.sys.display_density"

    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateForcedDisplaySizeDensity screenRatio="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateForcedDisplaySizeDensity ((float)initMaxSize / initMinSize)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-float v8, v3

    int-to-float v9, v4

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateForcedDisplaySizeDensity ((float)curMaxSize / curMinSize)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-float v8, v1

    int-to-float v9, v2

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    int-to-float v6, v3

    int-to-float v7, v4

    div-float/2addr v6, v7

    int-to-float v7, v1

    int-to-float v8, v2

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    const/4 v0, 0x1

    .line 1262
    .local v0, "changed":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v6, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->updateTouchableArea(Z)V

    .line 1249
    return-void

    .line 1261
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method private updateScreenCaptureMDMPolicy(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 2294
    const/4 v1, 0x1

    .line 2296
    .local v1, "isAllowScreenCapture":Z
    const-string v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2295
    invoke-static {v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    .line 2298
    .local v2, "mRestrictionPolicyService":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, p1, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2301
    .end local v1    # "isAllowScreenCapture":Z
    :goto_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isAllowScreenCapture = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2304
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mScreenCaptureAllowedbyMDM:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2305
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->isScreenCaptureDisabledLocked(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v4

    .line 2306
    return-void

    .line 2299
    .restart local v1    # "isAllowScreenCapture":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2308
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isAllowScreenCapture":Z
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->updateCurrentUserPolicy(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 2293
    return-void

    .line 2303
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public adjustCropRectForFixedOrientation(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "outFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 826
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->hasFixedOrientation()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->isFixedOrientation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 828
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 829
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 831
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 832
    .local v0, "tmp":I
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 833
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public adjustMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;ZZ)V
    .locals 15
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "outMatrix"    # Landroid/graphics/Matrix;
    .param p3, "isAnimating"    # Z
    .param p4, "isRotating"    # Z

    .prologue
    .line 2324
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v12, :cond_4

    .line 2325
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v12, v12, 0x4000

    if-eqz v12, :cond_3

    const/4 v5, 0x1

    .line 2327
    .local v5, "isSurfaceView":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v12, :cond_6

    if-eqz p4, :cond_6

    .line 2328
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_5

    const/4 v8, 0x1

    .line 2330
    .local v8, "skipApp":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 2332
    iget-object v12, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v12}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isExpandedDockedStack()Z

    move-result v4

    .line 2334
    :goto_2
    if-eqz v5, :cond_a

    if-eqz p3, :cond_a

    if-eqz v8, :cond_0

    if-eqz v4, :cond_a

    .line 2335
    :cond_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 2336
    .local v10, "surfaceWidth":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 2337
    .local v9, "surfaceHeight":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 2338
    .local v7, "parentWidth":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 2339
    .local v6, "parentHeight":I
    const/4 v12, 0x1

    if-le v10, v12, :cond_2

    const/4 v12, 0x1

    if-le v9, v12, :cond_2

    const/4 v12, 0x1

    if-le v7, v12, :cond_2

    const/4 v12, 0x1

    if-le v6, v12, :cond_2

    .line 2340
    add-int/lit8 v2, v10, 0x2

    .line 2341
    .local v2, "adjustedWidth":I
    add-int/lit8 v1, v9, 0x2

    .line 2342
    .local v1, "adjustedHeight":I
    if-le v7, v2, :cond_8

    int-to-float v12, v2

    int-to-float v13, v10

    div-float v11, v12, v13

    .line 2343
    .local v11, "widthScale":F
    :goto_3
    if-le v6, v1, :cond_9

    int-to-float v12, v1

    int-to-float v13, v9

    div-float v3, v12, v13

    .line 2345
    .local v3, "heightScale":F
    :goto_4
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v11, v12

    if-nez v12, :cond_1

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v3, v12

    if-eqz v12, :cond_2

    .line 2346
    :cond_1
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    int-to-float v13, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v3, v12, v13}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2323
    .end local v1    # "adjustedHeight":I
    .end local v2    # "adjustedWidth":I
    .end local v3    # "heightScale":F
    .end local v6    # "parentHeight":I
    .end local v7    # "parentWidth":I
    .end local v9    # "surfaceHeight":I
    .end local v10    # "surfaceWidth":I
    .end local v11    # "widthScale":F
    :cond_2
    :goto_5
    return-void

    .line 2325
    .end local v5    # "isSurfaceView":Z
    .end local v8    # "skipApp":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "isSurfaceView":Z
    goto/16 :goto_0

    .line 2324
    .end local v5    # "isSurfaceView":Z
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "isSurfaceView":Z
    goto/16 :goto_0

    .line 2328
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "skipApp":Z
    goto :goto_1

    .line 2327
    .end local v8    # "skipApp":Z
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "skipApp":Z
    goto :goto_1

    .line 2330
    :cond_7
    const/4 v4, 0x1

    .local v4, "isMultiWindow":Z
    goto :goto_2

    .line 2342
    .end local v4    # "isMultiWindow":Z
    .restart local v1    # "adjustedHeight":I
    .restart local v2    # "adjustedWidth":I
    .restart local v6    # "parentHeight":I
    .restart local v7    # "parentWidth":I
    .restart local v9    # "surfaceHeight":I
    .restart local v10    # "surfaceWidth":I
    :cond_8
    const/high16 v11, 0x3f800000    # 1.0f

    .restart local v11    # "widthScale":F
    goto :goto_3

    .line 2343
    :cond_9
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "heightScale":F
    goto :goto_4

    .line 2350
    .end local v1    # "adjustedHeight":I
    .end local v2    # "adjustedWidth":I
    .end local v3    # "heightScale":F
    .end local v6    # "parentHeight":I
    .end local v7    # "parentWidth":I
    .end local v9    # "surfaceHeight":I
    .end local v10    # "surfaceWidth":I
    .end local v11    # "widthScale":F
    :cond_a
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mDecorCaptionWindow:Lcom/android/server/wm/WindowState;

    if-eqz v12, :cond_2

    .line 2351
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v12, :cond_2

    .line 2352
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v12, v12, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 2350
    if-eqz v12, :cond_2

    .line 2353
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v12, v12, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    if-eqz v12, :cond_2

    .line 2354
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v12, v12, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v13, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v12, v13, :cond_b

    .line 2356
    return-void

    .line 2358
    :cond_b
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v12, v12, Lcom/android/server/wm/AppWindowAnimator;->mIsAnimatingInTask:Z

    if-eqz v12, :cond_c

    .line 2360
    return-void

    .line 2362
    :cond_c
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 2363
    .restart local v10    # "surfaceWidth":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 2364
    .restart local v9    # "surfaceHeight":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mDecorCaptionWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 2365
    .restart local v7    # "parentWidth":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mDecorCaptionWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 2366
    .restart local v6    # "parentHeight":I
    const/4 v12, 0x1

    if-le v10, v12, :cond_2

    const/4 v12, 0x1

    if-le v9, v12, :cond_2

    const/4 v12, 0x1

    if-le v7, v12, :cond_2

    const/4 v12, 0x1

    if-le v6, v12, :cond_2

    .line 2367
    add-int/lit8 v2, v10, 0x2

    .line 2368
    .restart local v2    # "adjustedWidth":I
    add-int/lit8 v1, v9, 0x2

    .line 2369
    .restart local v1    # "adjustedHeight":I
    if-le v7, v2, :cond_e

    int-to-float v12, v2

    int-to-float v13, v10

    div-float v11, v12, v13

    .line 2370
    .restart local v11    # "widthScale":F
    :goto_6
    if-le v6, v1, :cond_f

    int-to-float v12, v1

    int-to-float v13, v9

    div-float v3, v12, v13

    .line 2372
    .restart local v3    # "heightScale":F
    :goto_7
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v11, v12

    if-nez v12, :cond_d

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v3, v12

    if-eqz v12, :cond_2

    .line 2373
    :cond_d
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    int-to-float v13, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v3, v12, v13}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_5

    .line 2369
    .end local v3    # "heightScale":F
    .end local v11    # "widthScale":F
    :cond_e
    const/high16 v11, 0x3f800000    # 1.0f

    .restart local v11    # "widthScale":F
    goto :goto_6

    .line 2370
    :cond_f
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "heightScale":F
    goto :goto_7
.end method

.method public adjustWindow(Landroid/view/WindowManager$LayoutParams;I)I
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "displayId"    # I

    .prologue
    .line 2160
    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowManagerService;->inVSMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2161
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 2179
    :cond_0
    :goto_0
    return p2

    .line 2164
    :sswitch_0
    const-string v1, "com.samsung.android.hmt.vrsvc"

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2171
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSSession;->getClientDisplayId()I

    move-result v0

    .line 2172
    .local v0, "id":I
    if-eq v0, p2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2173
    move p2, v0

    .line 2174
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' redirected to display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2161
    :sswitch_data_0
    .sparse-switch
        0x7d6 -> :sswitch_0
        0x834 -> :sswitch_1
        0x835 -> :sswitch_1
        0x836 -> :sswitch_1
    .end sparse-switch
.end method

.method public checkAddDisplay(Landroid/view/WindowManager$LayoutParams;I)I
    .locals 8
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "displayId"    # I

    .prologue
    const/4 v7, 0x0

    .line 728
    const/4 v1, 0x0

    .line 729
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-gt v4, v5, :cond_3

    .line 730
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 731
    .local v2, "attachedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    .line 732
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 740
    .end local v1    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "attachedWindow":Lcom/android/server/wm/WindowState;
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 741
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getDisplayId()I

    move-result v0

    .line 742
    .local v0, "appTokenDisplayId":I
    if-eq p2, v0, :cond_2

    .line 743
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->isVirtualScreen(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 744
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->isVirtualScreen(I)Z

    move-result v4

    .line 743
    if-nez v4, :cond_1

    .line 745
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-nez v4, :cond_2

    .line 746
    :cond_1
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VIRTUALSCREEN] addWindow: displayId changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    move p2, v0

    .line 756
    .end local v0    # "appTokenDisplayId":I
    :cond_2
    :goto_1
    return p2

    .line 735
    .restart local v1    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 736
    .local v3, "wToken":Lcom/android/server/wm/WindowToken;
    if-eqz v3, :cond_0

    .line 737
    iget-object v1, v3, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_0

    .line 750
    .end local v1    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "wToken":Lcom/android/server/wm/WindowToken;
    :cond_4
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x960

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_2

    .line 751
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    if-eq p2, v4, :cond_2

    .line 752
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VIRTUALSCREEN] addWindow: displayId changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p2

    goto :goto_1
.end method

.method public checkAnimValue(Landroid/view/WindowManager$LayoutParams;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "enter"    # Z
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "appFrame"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2393
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return v3

    .line 2395
    :cond_0
    if-eqz p2, :cond_1

    .line 2397
    if-eqz p1, :cond_3

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    return v3

    .line 2400
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2401
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_2
    return v3

    .line 2404
    :cond_3
    if-eqz p1, :cond_4

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v1, :cond_4

    .line 2408
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2409
    .local v0, "resId":I
    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    const/high16 v2, 0x1000000

    if-ne v1, v2, :cond_4

    .line 2410
    const/4 v1, 0x1

    return v1

    .line 2414
    .end local v0    # "resId":I
    :cond_4
    return v3
.end method

.method public clearAnimatingWithSavedSurface(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 2418
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2419
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2420
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2421
    .local v2, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingWithSavedSurface()Z

    .line 2419
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2417
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void
.end method

.method clearCocktailPendingBackgroundLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/policy/EdgeWindowPolicy;->getPendingRemoveBackground()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/policy/EdgeWindowPolicy;->getBackgroundWindow()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 449
    .local v0, "cocktailBackground":Lcom/android/server/wm/WindowState;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_1

    .line 450
    :cond_0
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 451
    const-string v3, ", Reason : "

    .line 450
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_1
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/policy/EdgeWindowPolicy;->requestCocktailRotationAnimation(Z)V

    .line 454
    if-eqz v0, :cond_2

    .line 455
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    .line 445
    .end local v0    # "cocktailBackground":Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method

.method public clearForcedDisplaySizeDensity(I)V
    .locals 27
    .param p1, "displayId"    # I

    .prologue
    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 1133
    const-string v22, "android.permission.WRITE_SECURE_SETTINGS"

    .line 1132
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_0

    .line 1135
    new-instance v21, Ljava/lang/SecurityException;

    const-string v22, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1138
    :cond_0
    if-eqz p1, :cond_1

    .line 1139
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Can only set the default display"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1142
    :cond_1
    const-string v21, "SamsungWindowManager"

    const-string v22, "clearForcedDisplaySizeDensity"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1146
    .local v14, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1147
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    .line 1148
    .local v9, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v9, :cond_c

    .line 1149
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    move/from16 v19, v0

    .line 1150
    .local v19, "width":I
    iget v11, v9, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 1151
    .local v11, "height":I
    iget v7, v9, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 1153
    .local v7, "density":I
    const-string v21, "SamsungWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Init Display size : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " density : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v23, "default_display_size_forced"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 1156
    .local v17, "sizeStr":Ljava/lang/String;
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_5

    .line 1157
    const/16 v21, 0x2c

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 1158
    .local v16, "pos":I
    if-lez v16, :cond_2

    const/16 v21, 0x2c

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 1160
    const/16 v21, 0x0

    :try_start_2
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1161
    add-int/lit8 v21, v16, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1162
    const-string v21, "SamsungWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Default Forced Display size : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1170
    .end local v16    # "pos":I
    :cond_2
    :goto_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v23, "default_display_density_forced"

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1171
    .local v8, "densityStr":Ljava/lang/String;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v21

    if-lez v21, :cond_6

    .line 1173
    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1174
    const-string v21, "SamsungWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Default Forced Display density : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1181
    :goto_1
    :try_start_5
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1182
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v11, :cond_7

    .line 1184
    :cond_3
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->mPrevDisplayWidth:I

    .line 1185
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->mPrevDisplayHeight:I

    .line 1186
    move/from16 v0, v19

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1187
    iput v11, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1188
    iput v7, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 1189
    iget-object v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v23, v0

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1191
    const/4 v13, 0x0

    .local v13, "ndx":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_8

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 1193
    .local v6, "d":Lcom/android/server/wm/DisplayContent;
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v21

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->isVirtualScreen(I)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1194
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v21, v0

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mPrevDisplayWidth:I

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 1195
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v21, v0

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mPrevDisplayHeight:I

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 1196
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1197
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1198
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 1199
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    iget v0, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v23, v0

    iget v0, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1191
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1167
    .end local v6    # "d":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "densityStr":Ljava/lang/String;
    .end local v13    # "ndx":I
    :cond_5
    const-string v17, ""

    goto/16 :goto_0

    .line 1178
    .restart local v8    # "densityStr":Ljava/lang/String;
    :cond_6
    const-string v8, ""

    goto/16 :goto_1

    .line 1183
    :cond_7
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v7, :cond_3

    .line 1206
    :cond_8
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v20

    .line 1207
    .local v20, "windows":Lcom/android/server/wm/WindowList;
    if-eqz v20, :cond_b

    .line 1208
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowList;->size()I

    move-result v21

    add-int/lit8 v12, v21, -0x1

    .local v12, "i":I
    :goto_3
    if-ltz v12, :cond_b

    .line 1209
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/WindowState;

    .line 1210
    .local v18, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 1211
    sget-boolean v21, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v21, :cond_9

    const-string v21, "SamsungWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "set mOrientationChanging of "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_9
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 1208
    :cond_a
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 1216
    .end local v12    # "i":I
    .end local v18    # "w":Lcom/android/server/wm/WindowState;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v23, "display_size_forced"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 1221
    const-string v23, "display_density_forced"

    const/16 v24, 0x0

    .line 1220
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v8, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1223
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wm/SamsungWindowManagerService;->updateForcedDisplaySizeDensity(Lcom/android/server/wm/DisplayContent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v7    # "density":I
    .end local v8    # "densityStr":Ljava/lang/String;
    .end local v11    # "height":I
    .end local v17    # "sizeStr":Ljava/lang/String;
    .end local v19    # "width":I
    .end local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_c
    :try_start_6
    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1227
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1131
    return-void

    .line 1146
    .end local v9    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v21

    :try_start_7
    monitor-exit v22

    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1226
    :catchall_1
    move-exception v21

    .line 1227
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1226
    throw v21

    .line 1175
    .restart local v7    # "density":I
    .restart local v8    # "densityStr":Ljava/lang/String;
    .restart local v9    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v11    # "height":I
    .restart local v17    # "sizeStr":Ljava/lang/String;
    .restart local v19    # "width":I
    :catch_0
    move-exception v10

    .local v10, "ex":Ljava/lang/NumberFormatException;
    goto/16 :goto_1

    .line 1163
    .end local v8    # "densityStr":Ljava/lang/String;
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    .restart local v16    # "pos":I
    :catch_1
    move-exception v10

    .restart local v10    # "ex":Ljava/lang/NumberFormatException;
    goto/16 :goto_0
.end method

.method public computeScreenConfiguration(Landroid/content/res/Configuration;I)V
    .locals 10
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 695
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v8, :cond_0

    .line 696
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 698
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 699
    .local v4, "dw":I
    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 700
    .local v5, "dh":I
    iget v0, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v0, v0

    const v2, 0x3bcccccd    # 0.00625f

    mul-float v6, v0, v2

    .line 701
    .local v6, "density":F
    if-gt v4, v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 705
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v3, 0x0

    invoke-interface {v0, v4, v5, v3, v2}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(IIII)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    float-to-int v0, v0

    .line 704
    iput v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 707
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v3, 0x0

    invoke-interface {v0, v4, v5, v3, v2}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(IIII)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    float-to-int v0, v0

    .line 706
    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 709
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v2, 0x0

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowManagerService;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIIFLandroid/content/res/Configuration;)V

    .line 712
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v0, -0x301

    .line 713
    iget v0, v1, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 714
    const/16 v0, 0x200

    .line 712
    :goto_1
    or-int/2addr v0, v2

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 717
    iget v0, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 718
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v4    # "dw":I
    .end local v5    # "dh":I
    .end local v6    # "density":F
    :cond_0
    monitor-exit v9

    .line 692
    return-void

    .line 702
    .restart local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v4    # "dw":I
    .restart local v5    # "dh":I
    .restart local v6    # "density":F
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 715
    :cond_2
    const/16 v0, 0x100

    goto :goto_1

    .line 693
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v4    # "dw":I
    .end local v5    # "dh":I
    .end local v6    # "density":F
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public createSamsungCustomAnimationLocked(Landroid/graphics/Rect;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .locals 11
    .param p1, "displayFrame"    # Landroid/graphics/Rect;
    .param p2, "type"    # I
    .param p3, "taskId"    # I
    .param p4, "enter"    # Z
    .param p5, "frame"    # Landroid/graphics/Rect;
    .param p6, "insets"    # Landroid/graphics/Rect;
    .param p7, "isFixedOrientation"    # Z

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v9

    .line 1846
    .local v9, "isDesktopMode":Z
    if-eqz v9, :cond_2

    if-eqz p4, :cond_1

    const/16 v0, 0x3ea

    if-ne p2, v0, :cond_1

    .line 1848
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1847
    :cond_1
    const/16 v0, 0xd

    if-eq p2, v0, :cond_0

    .line 1851
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    .line 1852
    .local v10, "task":Lcom/android/server/wm/Task;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v3, 0x0

    .line 1853
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    .line 1854
    const/4 v7, -0x1

    move-object v1, p1

    move v2, p2

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    .line 1853
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createSamsungAnimation(Landroid/graphics/Rect;IZZLandroid/graphics/Rect;Landroid/graphics/Rect;IZZ)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1852
    :cond_4
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isResizeableByDockedStack()Z

    move-result v3

    .local v3, "isSplit":Z
    goto :goto_0

    .line 1854
    .end local v3    # "isSplit":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dumpLocked(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .prologue
    .line 2437
    const-string v4, "WINDOW MANAGER BRIDGE (dumpsys window bridge)"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2438
    if-eqz p2, :cond_6

    .line 2439
    array-length v4, p2

    if-ge p3, v4, :cond_6

    .line 2440
    aget-object v1, p2, p3

    .line 2441
    .local v1, "opt":Ljava/lang/String;
    add-int/lit8 p3, p3, 0x1

    .line 2442
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 2443
    :cond_0
    return-void

    .line 2446
    :cond_1
    const-string v4, "conventional"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "c"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2447
    :cond_2
    array-length v4, p2

    if-ge p3, v4, :cond_5

    .line 2448
    aget-object v2, p2, p3

    .line 2449
    .local v2, "pkg":Ljava/lang/String;
    add-int/lit8 p3, p3, 0x1

    .line 2450
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_4

    .line 2451
    :cond_3
    return-void

    .line 2453
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v4, p1, v2}, Lcom/android/server/wm/ConventionalModeController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2455
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_5
    return-void

    .line 2461
    .end local v1    # "opt":Ljava/lang/String;
    :cond_6
    const-string v4, "  mCurrentFocus : "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2462
    const-string v4, "  mLastFocus : "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2464
    const-string v4, "  mCurrentUserId : "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentUserId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2466
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 2467
    const-string v4, "  Hidden windows by force"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2468
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_7

    .line 2469
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2470
    .local v3, "w":Lcom/android/server/wm/WindowState;
    const-string v4, "  Resizing #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 2471
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2468
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2473
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_7
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2476
    .end local v0    # "i":I
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySize:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 2477
    const-string v4, "  Last Changed Display Size : "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySize:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2479
    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySizeWm:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2480
    const-string v4, "  Last Changed WmDisplay Size : "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySizeWm:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2482
    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplayDensityWm:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 2483
    const-string v4, "  Last Changed WmDisplay Density : "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplayDensityWm:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2486
    :cond_b
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "SamsungCoreConfig"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2487
    const-string v4, "    "

    invoke-static {v4, p1}, Lcom/samsung/android/config/SamsungCoreConfig;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2436
    return-void
.end method

.method public existSamsungAnimationDisabledPackage(Landroid/util/ArraySet;Landroid/util/ArraySet;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "openingApp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "closingApp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1950
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1951
    :cond_0
    return v5

    .line 1954
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 1955
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 1956
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 1957
    .local v2, "w":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_3

    .line 1954
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1960
    :cond_3
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->isSamsungAnimationDisabledPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1961
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "existSamsungAnimationDisabledPackage, openingApp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    return v7

    .line 1965
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_7

    .line 1966
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 1967
    .restart local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 1968
    .restart local v2    # "w":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_5

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_6

    .line 1965
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1971
    :cond_6
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->isSamsungAnimationDisabledPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1972
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "existSamsungAnimationDisabledPackage, closingApp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    return v7

    .line 1977
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_7
    return v5
.end method

.method public findForceLocalOrientationWindowLayer()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 762
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 764
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isDimming()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 765
    return v6

    .line 768
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-gtz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 769
    :cond_1
    return v6

    .line 772
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 773
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 774
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .line 775
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 776
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 777
    .local v3, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/view/IWindowStateBridge;->isFixedOrientation()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 778
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfaceController;->getLayer()I

    move-result v5

    return v5

    .line 775
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 781
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_4
    return v6
.end method

.method public findWallpaperLocked()Lcom/android/server/wm/WindowState;
    .locals 5

    .prologue
    .line 1925
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v2

    .line 1926
    .local v2, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1929
    .local v0, "i":I
    :cond_0
    if-lez v0, :cond_1

    .line 1930
    add-int/lit8 v0, v0, -0x1

    .line 1931
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1932
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_0

    .line 1933
    return-object v1

    .line 1936
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public focusChanged(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "lastFocus"    # Lcom/android/server/wm/WindowState;
    .param p2, "newFocus"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1492
    if-eqz p1, :cond_0

    .line 1493
    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 1495
    :cond_0
    iput-object p2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 1491
    return-void
.end method

.method public getCoverStateSwitch()Z
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getCoverStateSwitch()Z

    move-result v0

    return v0
.end method

.method public getCurrentAspect()F
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getCurrentAspect()F

    move-result v0

    return v0
.end method

.method public getDefaultDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    const/4 v3, 0x0

    .line 668
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 670
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 674
    return-object v3

    .line 668
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDefaultDisplaySize(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "outDisplaySize"    # Landroid/graphics/Point;

    .prologue
    .line 2427
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2428
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2429
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 2430
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2426
    return-void

    .line 2427
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDefaultMaxAspect()F
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getDefaultMaxAspect()F

    move-result v0

    return v0
.end method

.method public getDefaultMaxAspect(Ljava/lang/String;)F
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ConventionalModeController;->getDefaultMaxAspect(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFocusedDisplayContentLocked()Lcom/android/server/wm/DisplayContent;
    .locals 3

    .prologue
    .line 2078
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2079
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 2080
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I

    .line 2081
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2083
    :cond_0
    return-object v0
.end method

.method public getFocusedDisplayId()I
    .locals 1

    .prologue
    .line 2114
    iget v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I

    return v0
.end method

.method public getFocusedTaskId()I
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isHomeTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1768
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 1766
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    return v0
.end method

.method public getFocusedWindowInfoForScreenShot(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1772
    .local p1, "outWindowInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1773
    .local v11, "winFrame":Landroid/graphics/Rect;
    const v3, 0x7fffffff

    .local v3, "minLayer":I
    const/4 v2, 0x0

    .line 1774
    .local v2, "maxLayer":I
    iget-object v12, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowManagerService;->getFocusedTaskId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1776
    .local v4, "task":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_5

    .line 1777
    iget-object v9, v4, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1778
    .local v9, "tokens":Lcom/android/server/wm/AppTokenList;
    const/4 v7, 0x0

    .local v7, "tmptoken":I
    :goto_0
    invoke-virtual {v9}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v12

    if-ge v7, v12, :cond_4

    .line 1779
    invoke-virtual {v9, v7}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 1780
    .local v8, "tok":Lcom/android/server/wm/AppWindowToken;
    iget-object v12, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1782
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1783
    iget-object v12, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 1784
    .local v10, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1782
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1787
    :cond_1
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    .line 1788
    .local v6, "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {v11, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1790
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v5

    .line 1791
    .local v5, "tmpLayer":I
    if-ge v5, v3, :cond_2

    .line 1792
    move v3, v5

    .line 1793
    :cond_2
    if-le v5, v2, :cond_0

    .line 1794
    move v2, v5

    goto :goto_2

    .line 1778
    .end local v5    # "tmpLayer":I
    .end local v6    # "tmpRect":Landroid/graphics/Rect;
    .end local v10    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1798
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v8    # "tok":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    iget v12, v11, Landroid/graphics/Rect;->left:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1799
    iget v12, v11, Landroid/graphics/Rect;->top:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1800
    iget v12, v11, Landroid/graphics/Rect;->right:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1801
    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    .end local v7    # "tmptoken":I
    .end local v9    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_5
    return-void
.end method

.method public getFreezeSurfaceLayer(Landroid/view/Display;)I
    .locals 7
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const/16 v6, 0x967

    const/4 v5, 0x0

    .line 272
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 273
    :try_start_0
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-nez v3, :cond_1

    .line 274
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v2

    .line 275
    .local v2, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 276
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 277
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v6, :cond_0

    .line 278
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v3, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v3

    .line 279
    const/16 v5, 0x967

    .line 278
    invoke-interface {v3, v5}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->windowTypeToLayer(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    mul-int/lit16 v3, v3, 0x2710

    monitor-exit v4

    return v3

    .line 275
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1
    monitor-exit v4

    .line 284
    return v5

    .line 272
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getInitialDisplayProperties(I)[I
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    .line 1738
    const/4 v2, 0x3

    new-array v1, v2, [I

    .line 1740
    .local v1, "displayProperties":[I
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1741
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1742
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    const/4 v4, 0x0

    aput v2, v1, v4

    .line 1743
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 1744
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    const/4 v4, 0x2

    aput v2, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1747
    return-object v1

    .line 1740
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getNaviBarHidePackageInfo(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1629
    sget-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_HIDE_NAVIBAR:Z

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mNaviBarHideMgr:Lcom/android/server/wm/NaviBarHidePolicyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/NaviBarHidePolicyManager;->getNaviBarHidePackageInfo(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1632
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPenState()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, -0x1

    const/16 v4, -0x100

    const/16 v5, 0x13

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 222
    .local v1, "sw":I
    if-lez v1, :cond_0

    .line 223
    return v7

    .line 224
    :cond_0
    if-nez v1, :cond_1

    .line 225
    const/4 v2, 0x1

    return v2

    .line 227
    :cond_1
    return v6

    .line 229
    .end local v1    # "sw":I
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SamsungWindowManager"

    const-string v3, "getPenState(). Can\'t get PenState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v6
.end method

.method public getRequestedRotation()I
    .locals 1

    .prologue
    .line 2109
    iget v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mRequestedRotation:I

    return v0
.end method

.method public getScreenCaptureMDMPolicy(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 2313
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mScreenCaptureAllowedbyMDM:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2315
    .local v0, "screenCapturePolicy":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 2316
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2318
    :cond_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreenCaptureMDMPolicy userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " screenCaptureAllowed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public getTransitionSurfaceVS()Landroid/view/SurfaceControl;
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 2047
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string v2, "VSTransitionSurface"

    const/4 v5, -0x1

    const/4 v6, 0x4

    move v4, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public getUserDisplayDensity()I
    .locals 7

    .prologue
    .line 995
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 996
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 997
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 998
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "default_display_density_forced"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, "densityStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    .line 1001
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    .line 1002
    :catch_0
    move-exception v2

    .line 1005
    :cond_0
    :try_start_2
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v3

    .end local v0    # "densityStr":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    .line 1008
    const/4 v3, -0x1

    return v3

    .line 995
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getUserDisplaySize(Landroid/graphics/Point;)V
    .locals 8
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v6, -0x1

    .line 971
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 972
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 973
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 974
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "default_display_size_forced"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 975
    .local v3, "sizeStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 976
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 977
    .local v2, "pos":I
    if-lez v2, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 979
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 980
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 981
    return-void

    .line 982
    :catch_0
    move-exception v1

    .line 986
    .end local v2    # "pos":I
    :cond_0
    :try_start_2
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 987
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v4, p1, Landroid/graphics/Point;->y:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 988
    return-void

    .end local v3    # "sizeStr":Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 991
    iput v6, p1, Landroid/graphics/Point;->y:I

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 970
    return-void

    .line 971
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getVSFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2184
    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowManagerService;->inVSMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2185
    return-object v5

    .line 2189
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSSession;->getClientDisplayId()I

    move-result v1

    .line 2190
    .local v1, "displayId":I
    if-eqz v1, :cond_1

    .line 2191
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2192
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    .line 2193
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->findFocusedWindowLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2194
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x834

    if-ne v3, v4, :cond_1

    .line 2195
    return-object v2

    .line 2200
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    iget v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I

    if-eqz v3, :cond_3

    .line 2201
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2202
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_2

    .line 2203
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->findFocusedWindowLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2204
    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_3

    .line 2205
    return-object v2

    .line 2209
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    iput v6, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I

    .line 2212
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_3
    return-object v5
.end method

.method public getVSManager()Lcom/samsung/android/server/virtualspace/VSManager;
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSManager:Lcom/samsung/android/server/virtualspace/VSManager;

    return-object v0
.end method

.method public getVSPriority(I)I
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-nez v0, :cond_0

    .line 2102
    const/4 v0, -0x1

    return v0

    .line 2104
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getPriority(I)I

    move-result v0

    return v0
.end method

.method public getVisibleWindowInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1499
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1500
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;>;"
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 1501
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 1502
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1503
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1504
    .local v4, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1505
    new-instance v1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;

    invoke-direct {v1}, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;-><init>()V

    .line 1506
    .local v1, "info":Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->packageName:Ljava/lang/String;

    .line 1507
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->name:Ljava/lang/String;

    .line 1508
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v5, v1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->type:I

    .line 1509
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowState;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->focused:Z

    .line 1510
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowState;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->lastFocused:Z

    .line 1511
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1502
    .end local v1    # "info":Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v4    # "ws":Lcom/android/server/wm/WindowState;
    :cond_1
    monitor-exit v6

    .line 1515
    return-object v2

    .line 1500
    .end local v0    # "i":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public hideConventionalModeChangeRatioButton()V
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v0}, Lcom/android/server/wm/ConventionalModeController;->hideChangeRatioButtonWindow()V

    .line 1620
    return-void
.end method

.method public inVSMode()Z
    .locals 1

    .prologue
    .line 2054
    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSMode:Z

    return v0
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 198
    iput-object p2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    .line 200
    new-instance v1, Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;-><init>(Lcom/android/server/wm/SamsungWindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSettingsObserver:Lcom/android/server/wm/SamsungWindowManagerService$SettingsObserver;

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "com.samsung.action.DEBUG_RECONFIGURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ConventionalModeController;->init(Lcom/android/server/wm/SamsungWindowManagerService;)V

    .line 212
    sget-boolean v1, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_HIDE_NAVIBAR:Z

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mNaviBarHideMgr:Lcom/android/server/wm/NaviBarHidePolicyManager;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/NaviBarHidePolicyManager;->init(Lcom/android/server/wm/SamsungWindowManagerService;)V

    .line 216
    :cond_1
    const-string v1, "HighEnd"

    invoke-static {v1}, Lcom/android/server/wm/animation/SamsungAnimationCreatorFactory;->getSamsungAnimationCreator(Ljava/lang/String;)Lcom/android/server/wm/animation/SamsungAnimationCreator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    .line 196
    return-void
.end method

.method public isBackgroundAnimationNeeded()Z
    .locals 1

    .prologue
    .line 1611
    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBackgroundAnimationNeeded:Z

    return v0
.end method

.method public isDesktopModeChanging()Z
    .locals 2

    .prologue
    .line 1693
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    .line 1694
    .local v0, "desktopService":Lcom/android/server/desktopmode/DesktopModeService;
    if-eqz v0, :cond_0

    .line 1695
    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending()Z

    move-result v1

    return v1

    .line 1699
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDesktopModeForPreparing()Z
    .locals 2

    .prologue
    .line 1704
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    .line 1705
    .local v0, "desktopService":Lcom/android/server/desktopmode/DesktopModeService;
    if-eqz v0, :cond_0

    .line 1706
    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing()Z

    move-result v1

    return v1

    .line 1709
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDesktopModeLoadingScreenShowing()Z
    .locals 2

    .prologue
    .line 1729
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    .line 1730
    .local v0, "desktopService":Lcom/android/server/desktopmode/DesktopModeService;
    if-eqz v0, :cond_0

    .line 1731
    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeLoadingScreenShowing()Z

    move-result v1

    return v1

    .line 1734
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDrawnAppWindow(I)Z
    .locals 10
    .param p1, "displayId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2243
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 2244
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 2245
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2246
    .local v0, "N":I
    const/4 v2, 0x0

    .line 2247
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_7

    .line 2248
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 2249
    .local v4, "ws":Lcom/android/server/wm/WindowState;
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_0

    .line 2250
    move-object v2, v4

    .line 2252
    :cond_0
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2247
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2253
    :cond_2
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    .line 2254
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v9, :cond_5

    .line 2256
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2257
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->isWaitingForOpening()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2258
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    .line 2256
    if-eqz v5, :cond_1

    .line 2259
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x100000

    and-int/2addr v5, v7

    if-eqz v5, :cond_4

    .line 2260
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    monitor-exit v6

    .line 2264
    return v9

    .line 2255
    :cond_5
    :try_start_1
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_6
    monitor-exit v6

    .line 2261
    return v8

    .end local v4    # "ws":Lcom/android/server/wm/WindowState;
    :cond_7
    monitor-exit v6

    .line 2269
    return v8

    .line 2243
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public isKnoxDesktopModeLocked()Z
    .locals 2

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    .line 1720
    const-string v1, "desktopmode"

    .line 1719
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLCDDetached()Z
    .locals 6

    .prologue
    .line 1288
    const/4 v2, 0x0

    .line 1289
    .local v2, "ret":Z
    const-string v0, "/sys/class/lcd/panel/window_type"

    .line 1290
    .local v0, "SYSFS_LCD_ID":Ljava/lang/String;
    const-string v3, "/sys/class/lcd/panel/window_type"

    invoke-direct {p0, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    .local v1, "resultId":Ljava/lang/String;
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LCD resultId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const-string v3, "ff ff ff"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1295
    const/4 v2, 0x1

    .line 1298
    :cond_0
    return v2
.end method

.method public isMaxAspectComponentEx(Landroid/content/ComponentName;I)I
    .locals 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I

    .prologue
    .line 1567
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v5, 0x80

    invoke-interface {v3, p1, v5, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1568
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 1569
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ConventionalModeController;->isMaxAspectComponent(Landroid/content/pm/ActivityInfo;)I

    move-result v3

    return v3

    .line 1571
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v6, 0x80

    invoke-interface {v3, v4, v6, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1572
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ConventionalModeController;->isMaxAspectPackage(Landroid/content/pm/ApplicationInfo;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1574
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 1575
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMaxAspectComponent : failed to get ActivityInfo for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const/4 v3, 0x0

    return v3
.end method

.method public isMaxAspectPackage(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ConventionalModeController;->isMaxAspectPackage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isMaxAspectPackageEx(Ljava/lang/String;I)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1555
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x80

    invoke-interface {v2, p1, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1556
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ConventionalModeController;->isMaxAspectPackage(Landroid/content/pm/ApplicationInfo;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1557
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1558
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMaxAspectPackageEx : failed to get ApplicationInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/4 v2, 0x0

    return v2
.end method

.method public isProcessKillforMaxAspect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ConventionalModeController;->isProcessKillforMaxAspect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isScreenCaptureDisabledLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 391
    const/4 v0, -0x1

    .line 392
    .local v0, "userid":I
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentUserId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 393
    iget v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentUserId:I

    .line 398
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->isScreenCaptureDisabledLocked(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SamsungWindowManagerService;->getScreenCaptureMDMPolicy(I)Z

    move-result v1

    :goto_1
    return v1

    .line 395
    :cond_0
    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_0

    .line 398
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public launchHomeForDesktopMode()V
    .locals 1

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->launchHomeForDesktopMode()V

    .line 1758
    return-void
.end method

.method public moveTaskToDisplayLocked(III)V
    .locals 25
    .param p1, "taskId"    # I
    .param p2, "prevDisplayId"    # I
    .param p3, "targetDisplayId"    # I

    .prologue
    .line 516
    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    .line 517
    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_a

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v22

    const/16 v23, 0x12d

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 527
    :cond_0
    const-string v22, "SamsungWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "moveTaskToDisplay() : taskId="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " display("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 528
    const-string v24, "=>"

    .line 527
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 528
    const-string v24, ") caller="

    .line 527
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 528
    const/16 v24, 0x4

    invoke-static/range {v24 .. v24}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v24

    .line 527
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/Task;

    .line 530
    .local v15, "task":Lcom/android/server/wm/Task;
    if-nez v15, :cond_1

    .line 531
    return-void

    .line 533
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    .line 534
    .local v13, "prevDisplayContent":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    .line 538
    .local v14, "targetDisplayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v15, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v16, v0

    .line 539
    .local v16, "tokenListOfTask":Lcom/android/server/wm/AppTokenList;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v22

    add-int/lit8 v17, v22, -0x1

    .local v17, "tokenNdx":I
    :goto_0
    if-ltz v17, :cond_7

    .line 540
    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 541
    .local v5, "appToken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getDisplayId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 543
    .local v7, "displayOfToken":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v5, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v20, v0

    .line 544
    .local v20, "windowsOfToken":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 545
    .local v4, "NW":I
    if-lez v4, :cond_2

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 548
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_6

    .line 549
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    .line 550
    .local v19, "win":Lcom/android/server/wm/WindowState;
    sget-boolean v22, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MOVEMENT:Z

    if-eqz v22, :cond_3

    const-string v22, "SamsungWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Tmp removing app window "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " at display "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 552
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    .line 553
    .local v9, "j":I
    :goto_2
    if-lez v9, :cond_5

    .line 554
    add-int/lit8 v9, v9, -0x1

    .line 555
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 556
    .local v6, "cwin":Lcom/android/server/wm/WindowState;
    sget-boolean v22, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MOVEMENT:Z

    if-eqz v22, :cond_4

    const-string v22, "SamsungWindowManager"

    .line 557
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Tmp removing child window "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 556
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 548
    .end local v6    # "cwin":Lcom/android/server/wm/WindowState;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 539
    .end local v9    # "j":I
    .end local v19    # "win":Lcom/android/server/wm/WindowState;
    :cond_6
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_0

    .line 565
    .end local v4    # "NW":I
    .end local v5    # "appToken":Lcom/android/server/wm/AppWindowToken;
    .end local v7    # "displayOfToken":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "i":I
    .end local v20    # "windowsOfToken":Lcom/android/server/wm/WindowList;
    :cond_7
    iget-object v0, v15, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v18, v0

    .line 566
    .local v18, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v11

    .line 567
    .local v11, "numTokens":I
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/AppWindowToken;

    iget v0, v15, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p3

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->findAppWindowInsertionPointLocked(Lcom/android/server/wm/AppWindowToken;II)I

    move-result v12

    .line 568
    .local v12, "pos":I
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v0, v11, :cond_9

    .line 569
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/AppWindowToken;

    .line 570
    .local v21, "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 571
    .restart local v4    # "NW":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v4, :cond_8

    .line 572
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    .line 573
    .restart local v19    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowState;->moveToDisplayLocked(Lcom/android/server/wm/DisplayContent;)Z

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result v10

    .line 575
    .local v10, "newPos":I
    move v12, v10

    .line 577
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 571
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 579
    .end local v10    # "newPos":I
    .end local v19    # "win":Lcom/android/server/wm/WindowState;
    :cond_8
    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->setDisplayId(I)V

    .line 568
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 581
    .end local v4    # "NW":I
    .end local v8    # "i":I
    .end local v21    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_9
    iget-object v0, v13, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/wm/DimLayerController;->removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 582
    iget-object v0, v14, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    move-object/from16 v22, v0

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    move-object/from16 v22, v0

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    .line 514
    .end local v11    # "numTokens":I
    .end local v12    # "pos":I
    .end local v13    # "prevDisplayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "targetDisplayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "task":Lcom/android/server/wm/Task;
    .end local v16    # "tokenListOfTask":Lcom/android/server/wm/AppTokenList;
    .end local v17    # "tokenNdx":I
    .end local v18    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_a
    return-void
.end method

.method public notifyDisplayBoundsUpdated(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/virtualspace/VSSession;->onDisplayBoundsUpdated(ILandroid/graphics/Rect;)V

    .line 2087
    :cond_0
    return-void
.end method

.method public notifyUpdatedAppOrientation(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v0, :cond_0

    .line 2096
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/virtualspace/VSSession;->onUpdatedAppOrientation(II)V

    .line 2094
    :cond_0
    return-void
.end method

.method public notifyUpdatedDisplayTopTask(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "taskId"    # I

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    if-eqz v0, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/virtualspace/VSSession;->onTopTaskUpdated(II)V

    .line 2041
    :cond_0
    return-void
.end method

.method public overridePendingAppTransitionCustomScaleDown(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1822
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->updateAppTransitionStartValues(Landroid/graphics/Rect;)V

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionCustomScaleDown(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1820
    return-void

    .line 1821
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public overridePendingAppTransitionCustomScaleUp(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1812
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->updateAppTransitionStartValues(Landroid/graphics/Rect;)V

    .line 1815
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionCustomScaleUp(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1810
    return-void

    .line 1811
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public performLayout()V
    .locals 2

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2006
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2004
    return-void

    .line 2005
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public prepareAddWindowLw(Lcom/android/server/wm/WindowState;)I
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 261
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 263
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAddWindowLw - exceeded windows limit 50 < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, -0x5

    return v0

    .line 268
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepareDesktopTaskBar(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->prepareDesktopTaskBar(Z)V

    .line 1750
    return-void
.end method

.method public prepareSurfaceBeforeFreezing([I)V
    .locals 13
    .param p1, "displayIds"    # [I

    .prologue
    .line 2218
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 2219
    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 2220
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    array-length v10, p1

    if-ge v6, v10, :cond_2

    .line 2221
    aget v4, p1, v6

    .line 2222
    .local v4, "displayId":I
    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 2223
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v10, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v9

    .line 2224
    .local v9, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 2225
    .local v0, "N":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v0, :cond_1

    .line 2226
    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 2227
    .local v8, "win":Lcom/android/server/wm/WindowState;
    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 2228
    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "child$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2229
    .local v1, "child":Lcom/android/server/wm/WindowState;
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2219
    .end local v0    # "N":I
    .end local v1    # "child":Lcom/android/server/wm/WindowState;
    .end local v2    # "child$iterator":Ljava/util/Iterator;
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "displayId":I
    .end local v7    # "j":I
    .end local v8    # "win":Lcom/android/server/wm/WindowState;
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2225
    .restart local v0    # "N":I
    .restart local v2    # "child$iterator":Ljava/util/Iterator;
    .restart local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v4    # "displayId":I
    .restart local v7    # "j":I
    .restart local v8    # "win":Lcom/android/server/wm/WindowState;
    .restart local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2220
    .end local v2    # "child$iterator":Ljava/util/Iterator;
    .end local v8    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "displayId":I
    .end local v7    # "j":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_2
    monitor-exit v11

    .line 2234
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 2237
    const-wide/16 v10, 0x10

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2217
    :goto_3
    return-void

    .line 2238
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/InterruptedException;
    goto :goto_3
.end method

.method public readForcedDisplayPropertiesLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 8
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 1302
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 1305
    .local v2, "baseScreenRatio":D
    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowManagerService;->isLCDDetached()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1306
    const-string v4, "SamsungWindowManager"

    const-string v5, "LCD detached.. skip to set high performance concept"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    return-void

    .line 1310
    :cond_0
    const-string v4, "HIGH"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEF_PERFORMANCE_MODE"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1311
    const-string v4, "SamsungWindowManager"

    const-string v5, "didn\'t set high performance mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1316
    :cond_1
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1317
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1319
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readForcedDisplayPropertiesLocked size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1320
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1319
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1320
    const-string v6, " baseScreenRatio: "

    .line 1319
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1324
    const-string v5, "display_density_forced"

    .line 1323
    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1326
    .local v0, "baseDensityStr":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1328
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    :goto_0
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readForcedDisplayPropertiesLocked density: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const-string v4, "persist.sys.display_density"

    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    int-to-double v6, v5

    mul-double/2addr v6, v2

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    return-void

    .line 1329
    :catch_0
    move-exception v1

    .line 1330
    .local v1, "ex":Ljava/lang/NumberFormatException;
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    goto :goto_0

    .line 1333
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    goto :goto_0
.end method

.method public restoreFromForceUserActivityTimeout(ZLcom/android/server/wm/WindowState;)V
    .locals 6
    .param p1, "isSyswin"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    const-wide/16 v4, -0x1

    .line 2384
    if-nez p1, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v0, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v2, 0x146a

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2385
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput-wide v4, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 2386
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput-wide v4, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 2380
    :cond_0
    return-void
.end method

.method public restoreSizeDensityIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 14
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/16 v13, 0x2c

    const/4 v12, 0x0

    .line 1342
    const/4 v8, 0x0

    .local v8, "width":I
    const/4 v5, 0x0

    .local v5, "height":I
    const/4 v2, 0x0

    .line 1343
    .local v2, "density":I
    const-wide/16 v0, 0x0

    .line 1344
    .local v0, "currentRatio":D
    iget-object v9, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1345
    const-string v10, "display_size_forced"

    .line 1344
    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1346
    .local v7, "sizeStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1348
    .local v3, "densityStr":Ljava/lang/String;
    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSizeDensityIfNeeded sizeStr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 1350
    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1351
    .local v6, "pos":I
    if-lez v6, :cond_0

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-ne v9, v6, :cond_0

    .line 1353
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v7, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1354
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1360
    :cond_0
    iget-object v9, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1361
    const-string v10, "display_density_forced"

    .line 1360
    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1362
    .local v3, "densityStr":Ljava/lang/String;
    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSizeDensityIfNeeded densityStr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 1364
    return-void

    .line 1355
    .local v3, "densityStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1356
    .local v4, "ex":Ljava/lang/NumberFormatException;
    return-void

    .line 1366
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    .local v3, "densityStr":Ljava/lang/String;
    :cond_1
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-double v10, v9

    iget v9, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v12, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-double v12, v9

    div-double v0, v10, v12

    .line 1367
    iget v9, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    int-to-double v10, v9

    mul-double/2addr v10, v0

    double-to-int v2, v10

    .line 1368
    iput v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 1369
    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "density is null, currentRatio = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " density = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    .end local v3    # "densityStr":Ljava/lang/String;
    .end local v6    # "pos":I
    :cond_2
    return-void
.end method

.method public rotateDisplay(II)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "rotation"    # I

    .prologue
    .line 2024
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2025
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2026
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 2027
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iput p2, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 2029
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .local v2, "tmp":I
    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2030
    iget v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    .line 2031
    iget v2, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v3, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v3, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 2032
    iget v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v3, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v3, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 2034
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3, p1, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 2035
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->performTraversalInTransactionFromWindowManager()V

    .line 2037
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 2023
    return-void

    .line 2024
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v2    # "tmp":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public saveAllMaxAspectPackages()V
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v0}, Lcom/android/server/wm/ConventionalModeController;->saveAllConventionalModePackageMaps()V

    .line 1600
    return-void
.end method

.method public setAnimationTriggerActivity(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->setAnimationTriggerActivity(I)V

    .line 1830
    :cond_0
    return-void
.end method

.method public setAnimationTriggerLauncherScreen(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->setAnimationTriggerLauncherScreen(I)V

    .line 1837
    :cond_0
    return-void
.end method

.method public setAppEnterExitAnimationForWallpaperLocked(Lcom/android/server/wm/WindowState;Landroid/util/ArraySet;Landroid/util/ArraySet;I)V
    .locals 18
    .param p1, "wallpaper"    # Lcom/android/server/wm/WindowState;
    .param p4, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1858
    .local p2, "openingApp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p3, "closingApp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1859
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v1

    .line 1858
    if-eqz v1, :cond_1

    .line 1860
    :cond_0
    return-void

    .line 1863
    :cond_1
    const/4 v11, 0x0

    .line 1864
    .local v11, "a":Landroid/view/animation/Animation;
    const/16 v1, 0xc

    move/from16 v0, p4

    if-ne v0, v1, :cond_9

    .line 1865
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 1866
    .local v12, "appsCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v12, :cond_6

    .line 1867
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/AppWindowToken;

    .line 1868
    .local v17, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v16

    .line 1869
    .local v16, "w":Lcom/android/server/wm/WindowState;
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 1870
    :cond_2
    return-void

    .line 1872
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1873
    return-void

    .line 1875
    :cond_4
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->isSamsungAnimationDisabledPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1876
    return-void

    .line 1866
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1880
    .end local v16    # "w":Lcom/android/server/wm/WindowState;
    .end local v17    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createSamsungAnimation(Landroid/graphics/Rect;IZZLandroid/graphics/Rect;Landroid/graphics/Rect;IZZ)Landroid/view/animation/Animation;

    move-result-object v11

    .line 1917
    .end local v11    # "a":Landroid/view/animation/Animation;
    .end local v12    # "appsCount":I
    :goto_1
    if-eqz v11, :cond_7

    .line 1918
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1919
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1920
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1857
    :cond_7
    return-void

    .line 1880
    .restart local v11    # "a":Landroid/view/animation/Animation;
    .restart local v12    # "appsCount":I
    :cond_8
    const/4 v11, 0x0

    goto :goto_1

    .line 1882
    .end local v12    # "appsCount":I
    .end local v13    # "i":I
    :cond_9
    const/4 v13, 0x0

    .restart local v13    # "i":I
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v14

    .local v14, "n":I
    :goto_2
    if-ge v13, v14, :cond_e

    .line 1883
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/AppWindowToken;

    .line 1884
    .restart local v17    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v16

    .line 1885
    .restart local v16    # "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 1886
    .local v15, "task":Lcom/android/server/wm/Task;
    if-eqz v16, :cond_a

    if-nez v15, :cond_b

    .line 1887
    :cond_a
    return-void

    .line 1886
    :cond_b
    iget-object v1, v15, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_a

    iget-object v1, v15, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v1, :cond_a

    .line 1889
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1890
    return-void

    .line 1892
    :cond_c
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->isSamsungAnimationDisabledPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1893
    return-void

    .line 1882
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1896
    .end local v15    # "task":Lcom/android/server/wm/Task;
    .end local v16    # "w":Lcom/android/server/wm/WindowState;
    .end local v17    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_e
    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/util/ArraySet;->size()I

    move-result v14

    :goto_3
    if-ge v13, v14, :cond_15

    .line 1897
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/AppWindowToken;

    .line 1898
    .restart local v17    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v16

    .line 1899
    .restart local v16    # "w":Lcom/android/server/wm/WindowState;
    if-eqz v16, :cond_f

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 1901
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v1, :cond_10

    .line 1902
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->skipWallpaperAnimation(Z)V

    .line 1904
    :cond_10
    return-void

    .line 1900
    :cond_11
    const/4 v1, 0x1

    if-ne v14, v1, :cond_12

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    .line 1899
    if-nez v1, :cond_f

    .line 1906
    :cond_12
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1907
    return-void

    .line 1909
    :cond_13
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->isSamsungAnimationDisabledPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1910
    return-void

    .line 1896
    :cond_14
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1914
    .end local v16    # "w":Lcom/android/server/wm/WindowState;
    .end local v17    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungAnimationCreator:Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createSamsungAnimation(Landroid/graphics/Rect;IZZLandroid/graphics/Rect;Landroid/graphics/Rect;IZZ)Landroid/view/animation/Animation;

    move-result-object v11

    .local v11, "a":Landroid/view/animation/Animation;
    goto/16 :goto_1

    .local v11, "a":Landroid/view/animation/Animation;
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method public setBackgroundAnimationNeeded(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1607
    iput-boolean p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mBackgroundAnimationNeeded:Z

    .line 1606
    return-void
.end method

.method public setDesktopTaskBar(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->setDesktopTaskBar(Z)V

    .line 1754
    return-void
.end method

.method public setDisplayRotation(IIZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "rotation"    # I
    .param p3, "update"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2011
    if-eqz p1, :cond_0

    .line 2012
    const-string v0, "SamsungWindowManager"

    const-string v1, "Rotating non main display not supported in this version"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    return-void

    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2016
    :try_start_0
    iput p2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mRequestedRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2018
    if-eqz p3, :cond_1

    .line 2019
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 2010
    :cond_1
    return-void

    .line 2015
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setDisplaySizeDensity()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    const/4 v8, 0x0

    .line 1378
    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowManagerService;->isLCDDetached()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1379
    :cond_0
    const-string v5, "SamsungWindowManager"

    const-string v6, "skip to set setting value"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    return-void

    .line 1383
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_size_forced"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1384
    .local v4, "sizeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_density_forced"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1386
    .local v2, "densityStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1387
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_4

    .line 1388
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 1390
    :cond_2
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1391
    .local v1, "baseSizeStr":Ljava/lang/String;
    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1393
    .local v0, "baseDensityStr":Ljava/lang/String;
    const-string v5, "SamsungWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDisplaySizeDensity size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " baseDensityStr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1396
    const-string v6, "display_size_forced"

    .line 1395
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1397
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1398
    const-string v6, "display_density_forced"

    .line 1397
    invoke-static {v5, v6, v0, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1400
    const-string v5, "HIGH"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEF_PERFORMANCE_MODE"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1401
    const-string v5, "SamsungWindowManager"

    const-string v6, "set vzw requirement"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v10

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-double v6, v6

    mul-double/2addr v6, v10

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1404
    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-double v6, v5

    mul-double/2addr v6, v10

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1407
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1408
    const-string v6, "default_display_size_forced"

    .line 1407
    invoke-static {v5, v6, v1, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1409
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1410
    const-string v6, "default_display_density_forced"

    .line 1409
    invoke-static {v5, v6, v0, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1374
    .end local v0    # "baseDensityStr":Ljava/lang/String;
    .end local v1    # "baseSizeStr":Ljava/lang/String;
    :cond_4
    return-void

    .line 1389
    :cond_5
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_0
.end method

.method public setFocusedApp(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->convertActivityResultToComponentName(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->updateTopActivity(Landroid/content/ComponentName;)V

    .line 245
    return-void
.end method

.method public setFocusedDisplay(IZ)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "update"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2059
    const/4 v1, -0x1

    .line 2060
    .local v1, "stackId":I
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2061
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    monitor-exit v4

    .line 2062
    return v3

    .line 2063
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2064
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    .line 2065
    iput p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 2069
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2070
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2071
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getDisplayId()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    if-ne v5, p1, :cond_2

    :goto_0
    monitor-exit v4

    return v2

    .line 2060
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    move v2, v3

    .line 2071
    goto :goto_0

    .line 2069
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method public setFocusedDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 2119
    iput p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mFocusedDisplayId:I

    .line 2118
    return-void
.end method

.method public setForcedDisplayRotation(II)V
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "rotation"    # I

    .prologue
    const/4 v8, 0x1

    .line 1429
    const-string v5, "SamsungWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setForcedDisplayRotation Id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Rotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 1431
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1432
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    .line 1433
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 1434
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    if-eq p2, v8, :cond_1

    .line 1435
    const/4 v5, 0x3

    if-ne p2, v5, :cond_2

    const/4 v4, 0x1

    .line 1436
    .local v4, "rotated":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 1437
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1438
    .local v3, "dw":I
    :goto_1
    if-eqz v4, :cond_4

    .line 1439
    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1440
    .local v0, "dh":I
    :goto_2
    iput p2, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 1441
    iput v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1442
    iput v0, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1443
    iget v5, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v5, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 1444
    iput v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    .line 1445
    iput v0, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 1446
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5, p1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 1448
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1449
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1450
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "dh":I
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "dw":I
    .end local v4    # "rotated":Z
    :cond_0
    monitor-exit v6

    .line 1428
    return-void

    .line 1434
    .restart local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_1
    const/4 v4, 0x1

    .restart local v4    # "rotated":Z
    goto :goto_0

    .line 1435
    .end local v4    # "rotated":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "rotated":Z
    goto :goto_0

    .line 1437
    :cond_3
    :try_start_1
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .restart local v3    # "dw":I
    goto :goto_1

    .line 1439
    :cond_4
    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "dh":I
    goto :goto_2

    .line 1430
    .end local v0    # "dh":I
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "dw":I
    .end local v4    # "rotated":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setForcedDisplaySizeDensity(IIIIZZ)V
    .locals 28
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I
    .param p5, "bDefault"    # Z
    .param p6, "saveSettings"    # Z

    .prologue
    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    .line 1013
    const-string v23, "android.permission.WRITE_SECURE_SETTINGS"

    .line 1012
    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_0

    .line 1015
    new-instance v22, Ljava/lang/SecurityException;

    const-string v23, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1018
    :cond_0
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->checkSizeDensity(III)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1019
    :cond_1
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "input illegalArgument"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1022
    :cond_2
    const-string v22, "SamsungWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "setForcedDisplaySizeDensity w="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " h="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " density="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " default="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySize:Ljava/lang/String;

    .line 1026
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySize:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySize:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1030
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1032
    .local v16, "ident":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1034
    const/16 v8, 0xc8

    .line 1035
    .local v8, "MIN_WIDTH":I
    const/16 v7, 0xc8

    .line 1036
    .local v7, "MIN_HEIGHT":I
    const/4 v6, 0x2

    .line 1037
    .local v6, "MAX_SCALE":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    .line 1038
    .local v12, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v12, :cond_4

    .line 1039
    const/16 v22, 0xc8

    move/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1040
    const/16 v22, 0xc8

    move/from16 v0, p3

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1042
    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    move/from16 v19, v0

    .line 1043
    .local v19, "prevDensity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1044
    if-eqz p6, :cond_5

    .line 1083
    :goto_1
    if-eqz p6, :cond_c

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 1086
    const-string v24, "display_size_forced"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1085
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 1088
    const-string v24, "display_density_forced"

    .line 1089
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 1087
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1090
    if-eqz p5, :cond_b

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 1092
    const-string v24, "default_display_size_forced"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 1091
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 1094
    const-string v24, "default_display_density_forced"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 1093
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1123
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wm/SamsungWindowManagerService;->updateForcedDisplaySizeDensity(Lcom/android/server/wm/DisplayContent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v19    # "prevDensity":I
    :cond_4
    :try_start_3
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1127
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1011
    return-void

    .line 1045
    .restart local v19    # "prevDensity":I
    :cond_5
    :try_start_4
    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Lcom/android/server/wm/DisplayContent;->mPrevDisplayWidth:I

    .line 1046
    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Lcom/android/server/wm/DisplayContent;->mPrevDisplayHeight:I

    .line 1047
    move/from16 v0, p2

    iput v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1048
    move/from16 v0, p3

    iput v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1049
    move/from16 v0, p4

    iput v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 1050
    iget-object v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v24, v0

    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1053
    const/16 v18, 0x0

    .local v18, "ndx":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/DisplayContent;

    .line 1055
    .local v9, "d":Lcom/android/server/wm/DisplayContent;
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v22

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->isVirtualScreen(I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1056
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v22, v0

    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mPrevDisplayWidth:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 1057
    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v22, v0

    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mPrevDisplayHeight:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 1058
    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1059
    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1060
    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 1061
    iget-object v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v24, v0

    iget v0, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1053
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 1067
    .end local v9    # "d":Lcom/android/server/wm/DisplayContent;
    :cond_7
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v21

    .line 1068
    .local v21, "windows":Lcom/android/server/wm/WindowList;
    if-eqz v21, :cond_a

    .line 1069
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowList;->size()I

    move-result v22

    add-int/lit8 v15, v22, -0x1

    .local v15, "i":I
    :goto_4
    if-ltz v15, :cond_a

    .line 1070
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    .line 1071
    .local v20, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    .line 1072
    sget-boolean v22, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v22, :cond_8

    const-string v22, "SamsungWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "set mOrientationChanging of "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_8
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 1069
    :cond_9
    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 1077
    .end local v15    # "i":I
    .end local v20    # "w":Lcom/android/server/wm/WindowState;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1032
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v18    # "ndx":I
    .end local v19    # "prevDensity":I
    .end local v21    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v22

    :try_start_5
    monitor-exit v23

    throw v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1126
    .end local v6    # "MAX_SCALE":I
    .end local v7    # "MIN_HEIGHT":I
    .end local v8    # "MIN_WIDTH":I
    :catchall_1
    move-exception v22

    .line 1127
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    throw v22

    .line 1095
    .restart local v6    # "MAX_SCALE":I
    .restart local v7    # "MIN_HEIGHT":I
    .restart local v8    # "MIN_WIDTH":I
    .restart local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v19    # "prevDensity":I
    :cond_b
    :try_start_6
    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mPrevDisplayWidth:I

    move/from16 v22, v0

    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 1096
    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mPrevDisplayHeight:I

    move/from16 v22, v0

    iget v0, v12, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v24, "default_display_density_forced"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1098
    .local v11, "densityStr":Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v22

    if-lez v22, :cond_3

    .line 1099
    const/4 v10, 0x0

    .line 1101
    .local v10, "defaultDensity":I
    :try_start_7
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1102
    const-string v22, "SamsungWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "previous default density : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1106
    :goto_5
    if-eqz v10, :cond_3

    .line 1107
    int-to-float v0, v10

    move/from16 v22, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    mul-float v22, v22, v24

    move/from16 v0, v22

    float-to-int v10, v0

    .line 1108
    :try_start_8
    const-string v22, "SamsungWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "current default density : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 1110
    const-string v24, "default_display_density_forced"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 1109
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1118
    .end local v10    # "defaultDensity":I
    .end local v11    # "densityStr":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/SamsungWindowManagerService;->isDesktopModeChanging()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->updateDeskTopUiMode()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 1103
    .restart local v10    # "defaultDensity":I
    .restart local v11    # "densityStr":Ljava/lang/String;
    :catch_0
    move-exception v14

    .local v14, "ex":Ljava/lang/NumberFormatException;
    goto :goto_5

    .line 1027
    .end local v6    # "MAX_SCALE":I
    .end local v7    # "MIN_HEIGHT":I
    .end local v8    # "MIN_WIDTH":I
    .end local v10    # "defaultDensity":I
    .end local v11    # "densityStr":Ljava/lang/String;
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "ex":Ljava/lang/NumberFormatException;
    .end local v16    # "ident":J
    .end local v19    # "prevDensity":I
    :catch_1
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public setMaxAspectPackage(Ljava/lang/String;IZZ)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enable"    # Z
    .param p4, "killProcess"    # Z

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/ConventionalModeController;->setMaxAspectPackage(Ljava/lang/String;IZZ)V

    .line 1588
    return-void
.end method

.method public setMaxAspectPackages(Ljava/util/List;[IZ)V
    .locals 2
    .param p2, "uids"    # [I
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[IZ)V"
        }
    .end annotation

    .prologue
    .line 1596
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/ConventionalModeController;->setMaxAspectPackages(Ljava/util/List;[IZZ)V

    .line 1594
    return-void
.end method

.method public setNaviBarHidePackage(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "disable"    # Z

    .prologue
    .line 1636
    sget-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_HIDE_NAVIBAR:Z

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mNaviBarHideMgr:Lcom/android/server/wm/NaviBarHidePolicyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/NaviBarHidePolicyManager;->setNaviBarHidetPackage(Ljava/lang/String;IZ)V

    .line 1635
    :cond_0
    return-void
.end method

.method public setVSManager(Lcom/samsung/android/server/virtualspace/VSManager;)V
    .locals 0
    .param p1, "service"    # Lcom/samsung/android/server/virtualspace/VSManager;

    .prologue
    .line 1991
    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSManager:Lcom/samsung/android/server/virtualspace/VSManager;

    .line 1990
    return-void
.end method

.method public setVSSession(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .locals 1
    .param p1, "session"    # Lcom/samsung/android/server/virtualspace/VSSession;

    .prologue
    .line 1999
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2000
    .local v0, "vsMode":Z
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSMode:Z

    .line 2001
    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mVSSession:Lcom/samsung/android/server/virtualspace/VSSession;

    .line 1998
    return-void

    .line 1999
    .end local v0    # "vsMode":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWmForcedDisplayLog(II)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 1417
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 1418
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySizeWm:Ljava/lang/String;

    .line 1419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySizeWm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplaySizeWm:Ljava/lang/String;

    .line 1415
    :goto_0
    return-void

    .line 1421
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplayDensityWm:Ljava/lang/String;

    .line 1422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplayDensityWm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mLastChangedDisplayDensityWm:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1424
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public shouldForceHideIfNeeded(Lcom/android/server/wm/WindowState;ZZ)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "keyguardOn"    # Z
    .param p3, "allowWhenLocked"    # Z

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 252
    .local v0, "needForceHide":Z
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->shouldForceHideIfNeeded(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v0

    .line 254
    .local v0, "needForceHide":Z
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x962

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x963

    if-ne v1, v2, :cond_1

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isRecentsTaskShowing()Z

    move-result v1

    or-int/2addr v0, v1

    .line 257
    :cond_1
    return v0
.end method

.method public showConventionalModeChangeRatioButton(IILjava/lang/String;I)V
    .locals 1
    .param p1, "navPosition"    # I
    .param p2, "size"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mConventionalModeCtr:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/ConventionalModeController;->showChangeRatioButtonWindow(IILjava/lang/String;I)V

    .line 1614
    return-void
.end method

.method public stopFreezingDisplayLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->clearCocktailPendingBackgroundLocked(Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 438
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display_rotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 426
    :cond_1
    return-void
.end method

.method public updateBounds()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 2125
    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowManagerService;->inVSMode()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2126
    return-void

    .line 2127
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2128
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 2129
    .local v6, "numDisplays":I
    const/4 v4, 0x0

    .local v4, "displayNdx":I
    :goto_0
    if-ge v4, v6, :cond_5

    .line 2130
    iget-object v9, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2131
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 2132
    .local v2, "displayId":I
    if-eqz v2, :cond_1

    .line 2129
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2134
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2135
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 2136
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "w$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 2137
    .local v7, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2138
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7df

    if-eq v9, v10, :cond_2

    .line 2143
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v9

    invoke-interface {v9}, Lcom/samsung/android/view/IWindowStateBridge;->getAspectRatioFrame()Landroid/graphics/Rect;

    move-result-object v5

    .line 2144
    .local v5, "frame":Landroid/graphics/Rect;
    if-nez v5, :cond_3

    .line 2145
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    .line 2147
    :cond_3
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 2153
    .end local v5    # "frame":Landroid/graphics/Rect;
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_4
    iget v9, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v10, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v11, v11, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 2154
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/SamsungWindowManagerService;->notifyDisplayBoundsUpdated(ILandroid/graphics/Rect;)V

    goto :goto_1

    .line 2123
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "displayId":I
    .end local v3    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v8    # "w$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v2, 0x1

    .line 505
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mH:Lcom/android/server/wm/SamsungWindowManagerService$H;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SamsungWindowManagerService$H;->removeMessages(I)V

    .line 506
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 507
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 508
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 509
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mH:Lcom/android/server/wm/SamsungWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SamsungWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 503
    return-void
.end method

.method public updateCurrentUserPolicy(I)V
    .locals 11
    .param p1, "newUserId"    # I

    .prologue
    .line 402
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 403
    :try_start_0
    iput p1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mCurrentUserId:I

    .line 404
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 405
    .local v5, "numDisplays":I
    const/4 v3, 0x0

    .local v3, "displayNdx":I
    :goto_0
    if-ge v3, v5, :cond_5

    .line 406
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 407
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 408
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, p1}, Lcom/android/server/wm/WindowManagerService;->isScreenCaptureDisabledLocked(I)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->getScreenCaptureMDMPolicy(I)Z

    move-result v8

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 409
    .local v1, "disabled":Ljava/lang/Boolean;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 410
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_4

    .line 411
    invoke-virtual {v7, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 413
    .local v6, "win":Lcom/android/server/wm/WindowState;
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_2

    .line 410
    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 408
    .end local v0    # "N":I
    .end local v1    # "disabled":Ljava/lang/Boolean;
    .end local v4    # "i":I
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    .line 417
    .restart local v0    # "N":I
    .restart local v1    # "disabled":Ljava/lang/Boolean;
    .restart local v4    # "i":I
    .restart local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_3

    iget v8, v6, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-ne p1, v8, :cond_0

    .line 420
    :cond_3
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 402
    .end local v0    # "N":I
    .end local v1    # "disabled":Ljava/lang/Boolean;
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "displayNdx":I
    .end local v4    # "i":I
    .end local v5    # "numDisplays":I
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 405
    .restart local v0    # "N":I
    .restart local v1    # "disabled":Ljava/lang/Boolean;
    .restart local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v3    # "displayNdx":I
    .restart local v4    # "i":I
    .restart local v5    # "numDisplays":I
    .restart local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "disabled":Ljava/lang/Boolean;
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "i":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_5
    monitor-exit v9

    .line 401
    return-void
.end method

.method public updateDimBounds(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1519
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->needFullScreenDimBounds()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1520
    if-eqz p1, :cond_0

    .line 1521
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1522
    .local v0, "logicalDisplayRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1523
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1524
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->getAppDisplayRect(Landroid/graphics/Rect;)V

    .line 1525
    const/4 v1, 0x1

    return v1

    .line 1529
    .end local v0    # "logicalDisplayRect":Landroid/graphics/Rect;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updateDisplayAndOrientationLocked(I)V
    .locals 7
    .param p1, "uiMode"    # I

    .prologue
    .line 679
    const/4 v2, 0x0

    .local v2, "ndx":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 680
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 681
    .local v0, "d":Lcom/android/server/wm/DisplayContent;
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->isVirtualScreen(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 682
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 683
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/WindowManagerService;->updateDisplayAndOrientationLocked(IIZ)Landroid/view/DisplayInfo;

    move-result-object v3

    .line 684
    .local v3, "updatedDisplayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v1, v3}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 685
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->updateConfigurationLocked(I)V

    .line 679
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "updatedDisplayInfo":Landroid/view/DisplayInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 677
    .end local v0    # "d":Lcom/android/server/wm/DisplayContent;
    :cond_1
    return-void
.end method

.method public updateFixedOrientationFrameIfNeeded(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "outFrame"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 839
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->isFixedOrientation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 840
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 842
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 846
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 847
    .local v0, "tmp":I
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 848
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 849
    const/4 v1, 0x1

    return v1

    .line 843
    .end local v0    # "tmp":I
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 845
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 852
    :cond_2
    return v3
.end method

.method public updateFixedOrientationWindowInTransactionLocked(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 33
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 856
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v20, v3, 0xc

    .line 859
    .local v20, "fixedOrientationFlag":I
    if-eqz v20, :cond_a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v3, :cond_a

    .line 860
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v16, v0

    .line 861
    .local v16, "attachedWindowAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 862
    .local v11, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    .line 863
    .local v32, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v27, v0

    .line 865
    .local v27, "selfTransformation":Z
    if-eqz v16, :cond_b

    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    if-eqz v3, :cond_b

    .line 866
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    .line 867
    :goto_0
    if-eqz v11, :cond_c

    iget-boolean v3, v11, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    if-eqz v3, :cond_c

    .line 868
    iget-object v13, v11, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 869
    :goto_1
    new-instance v24, Landroid/graphics/Matrix;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Matrix;-><init>()V

    .line 870
    .local v24, "matrix":Landroid/graphics/Matrix;
    const/16 v18, 0x0

    .line 871
    .local v18, "deltaRot":I
    const/4 v14, 0x0

    .local v14, "appWidth":I
    const/4 v12, 0x0

    .line 872
    .local v12, "appHeight":I
    const/16 v26, 0x0

    .local v26, "screenWidth":I
    const/16 v25, 0x0

    .line 873
    .local v25, "screenHeight":I
    const/16 v17, 0x0

    .line 874
    .local v17, "baseRotation":I
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v19

    .line 875
    .local v19, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, v19

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ge v3, v4, :cond_d

    const/16 v22, 0x1

    .line 877
    .local v22, "isPort":Z
    :goto_2
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v26, v0

    .line 878
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v25, v0

    .line 880
    const/4 v3, 0x4

    move/from16 v0, v20

    if-ne v0, v3, :cond_10

    .line 881
    if-eqz v22, :cond_e

    move-object/from16 v0, v19

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v3, :cond_0

    move-object/from16 v0, v19

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 882
    :cond_0
    const/16 v17, 0x1

    .line 886
    :cond_1
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 887
    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 897
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v18

    .line 899
    packed-switch v18, :pswitch_data_0

    .line 917
    :goto_5
    if-eqz v15, :cond_5

    .line 918
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_4

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_4

    .line 919
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v30

    .line 920
    .local v30, "surfaceWidth":I
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v29

    .line 921
    .local v29, "surfaceHeight":I
    const/4 v3, 0x1

    move/from16 v0, v30

    if-le v0, v3, :cond_4

    const/4 v3, 0x1

    move/from16 v0, v29

    if-le v0, v3, :cond_4

    .line 922
    add-int/lit8 v10, v30, 0x2

    .line 923
    .local v10, "adjustedWidth":I
    add-int/lit8 v9, v29, 0x2

    .line 924
    .local v9, "adjustedHeight":I
    int-to-float v3, v10

    move/from16 v0, v30

    int-to-float v4, v0

    div-float v31, v3, v4

    .line 925
    .local v31, "widthScale":F
    int-to-float v3, v9

    move/from16 v0, v29

    int-to-float v4, v0

    div-float v21, v3, v4

    .line 926
    .local v21, "heightScale":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v31, v3

    if-nez v3, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v21, v3

    if-eqz v3, :cond_4

    .line 927
    :cond_3
    move/from16 v0, v30

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move/from16 v0, v29

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 931
    .end local v9    # "adjustedHeight":I
    .end local v10    # "adjustedWidth":I
    .end local v21    # "heightScale":F
    .end local v29    # "surfaceHeight":I
    .end local v30    # "surfaceWidth":I
    .end local v31    # "widthScale":F
    :cond_4
    invoke-virtual {v15}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 933
    :cond_5
    if-eqz v13, :cond_6

    .line 934
    invoke-virtual {v13}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 937
    :cond_6
    const/16 v28, 0x0

    .line 938
    .local v28, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v3, :cond_7

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    if-nez v3, :cond_7

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v28

    .line 943
    .end local v28    # "spec":Landroid/view/MagnificationSpec;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    if-eqz v3, :cond_8

    .line 944
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v28

    .line 949
    :cond_8
    if-eqz v28, :cond_9

    invoke-virtual/range {v28 .. v28}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 954
    :cond_9
    :goto_6
    const/16 v3, 0x9

    new-array v0, v3, [F

    move-object/from16 v23, v0

    .line 955
    .local v23, "mTmpFloats":[F
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 956
    const/4 v3, 0x0

    aget v4, v23, v3

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v4, v5

    aput v4, v23, v3

    .line 957
    const/4 v3, 0x4

    aget v4, v23, v3

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v4, v5

    aput v4, v23, v3

    .line 958
    const/4 v3, 0x3

    aget v4, v23, v3

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v4, v5

    aput v4, v23, v3

    .line 959
    const/4 v3, 0x1

    aget v4, v23, v3

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v4, v5

    aput v4, v23, v3

    .line 961
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v4, 0x2

    aget v4, v23, v4

    .line 962
    const/4 v5, 0x5

    aget v5, v23, v5

    const/4 v6, 0x0

    .line 961
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 963
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 964
    const/4 v4, 0x0

    aget v4, v23, v4

    const/4 v5, 0x3

    aget v5, v23, v5

    .line 965
    const/4 v6, 0x1

    aget v6, v23, v6

    const/4 v7, 0x4

    aget v7, v23, v7

    const/4 v8, 0x0

    .line 963
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    .line 855
    .end local v11    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v12    # "appHeight":I
    .end local v14    # "appWidth":I
    .end local v16    # "attachedWindowAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v17    # "baseRotation":I
    .end local v18    # "deltaRot":I
    .end local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22    # "isPort":Z
    .end local v23    # "mTmpFloats":[F
    .end local v24    # "matrix":Landroid/graphics/Matrix;
    .end local v25    # "screenHeight":I
    .end local v26    # "screenWidth":I
    .end local v27    # "selfTransformation":Z
    .end local v32    # "win":Lcom/android/server/wm/WindowState;
    :cond_a
    return-void

    .line 866
    .restart local v11    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .restart local v16    # "attachedWindowAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v27    # "selfTransformation":Z
    .restart local v32    # "win":Lcom/android/server/wm/WindowState;
    :cond_b
    const/4 v15, 0x0

    .local v15, "attachedTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_0

    .line 868
    .end local v15    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_c
    const/4 v13, 0x0

    .local v13, "appTransformation":Landroid/view/animation/Transformation;
    goto/16 :goto_1

    .line 875
    .end local v13    # "appTransformation":Landroid/view/animation/Transformation;
    .restart local v12    # "appHeight":I
    .restart local v14    # "appWidth":I
    .restart local v17    # "baseRotation":I
    .restart local v18    # "deltaRot":I
    .restart local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v24    # "matrix":Landroid/graphics/Matrix;
    .restart local v25    # "screenHeight":I
    .restart local v26    # "screenWidth":I
    :cond_d
    const/16 v22, 0x0

    .restart local v22    # "isPort":Z
    goto/16 :goto_2

    .line 883
    :cond_e
    if-nez v22, :cond_1

    move-object/from16 v0, v19

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_f

    move-object/from16 v0, v19

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 884
    :cond_f
    const/16 v17, 0x1

    goto/16 :goto_3

    .line 888
    :cond_10
    const/16 v3, 0x8

    move/from16 v0, v20

    if-ne v0, v3, :cond_2

    .line 889
    if-eqz v22, :cond_13

    move-object/from16 v0, v19

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_11

    move-object/from16 v0, v19

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 890
    :cond_11
    const/16 v17, 0x1

    .line 894
    :cond_12
    :goto_7
    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 895
    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto/16 :goto_4

    .line 891
    :cond_13
    if-nez v22, :cond_12

    move-object/from16 v0, v19

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v3, :cond_14

    move-object/from16 v0, v19

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    .line 892
    :cond_14
    const/16 v17, 0x1

    goto :goto_7

    .line 901
    :pswitch_0
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_5

    .line 904
    :pswitch_1
    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 905
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v3, v12, v3

    int-to-float v3, v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_5

    .line 908
    :pswitch_2
    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 909
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v4, v12, v4

    int-to-float v4, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_5

    .line 912
    :pswitch_3
    const/high16 v3, 0x43870000    # 270.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 913
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, v14, v4

    int-to-float v4, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_5

    .line 950
    :cond_15
    move-object/from16 v0, v28

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    move-object/from16 v0, v28

    iget v4, v0, Landroid/view/MagnificationSpec;->scale:F

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 951
    move-object/from16 v0, v28

    iget v3, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move-object/from16 v0, v28

    iget v4, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_6

    .line 899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateSurfacesInTransactionLocked()Z
    .locals 11

    .prologue
    .line 785
    iget-object v9, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 786
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v6, 0x0

    .line 787
    .local v6, "needsUpdateSurfaceMatrix":Z
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v8

    .line 788
    .local v8, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 789
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .line 790
    .local v3, "i":I
    const/4 v4, -0x1

    .line 791
    .local v4, "indexOfFirstFixedOrientationWindow":I
    const/4 v1, -0x1

    .line 793
    .local v1, "animLayerOfFirstFixedOrientationWindow":I
    :goto_0
    if-ltz v3, :cond_1

    .line 794
    invoke-virtual {v8, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 795
    .local v7, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v9

    invoke-interface {v9}, Lcom/samsung/android/view/IWindowStateBridge;->isFixedOrientation()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 796
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0, v9}, Lcom/android/server/wm/SamsungWindowManagerService;->updateFixedOrientationWindowInTransactionLocked(Lcom/android/server/wm/WindowStateAnimator;)V

    .line 797
    const/4 v6, 0x1

    .line 798
    const/4 v9, -0x1

    if-ne v4, v9, :cond_0

    .line 799
    move v4, v3

    .line 800
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 793
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 805
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    if-nez v6, :cond_2

    .line 806
    return v6

    .line 809
    :cond_2
    add-int/lit8 v5, v0, -0x1

    .local v5, "j":I
    :goto_1
    if-le v5, v4, :cond_4

    .line 810
    invoke-virtual {v8, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 811
    .restart local v7    # "w":Lcom/android/server/wm/WindowState;
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v9, v1, :cond_3

    .line 812
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v9, :cond_3

    .line 813
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    .line 814
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowSurfaceController;->setAlpha(F)V

    .line 809
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 819
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_4
    return v6
.end method

.method public updateWindowLockedIfNeeded(Lcom/android/server/wm/WindowState;I)Z
    .locals 11
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayId"    # I

    .prologue
    const/high16 v9, 0x80000

    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 288
    if-eqz p2, :cond_0

    return v7

    .line 290
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/samsung/android/view/IWindowStateBridge;->setHideBySViewCover(Z)V

    .line 291
    sget-boolean v5, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v5, :cond_1

    .line 292
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/policy/AODWindowPolicy;->isNightClockVisible()Z

    move-result v5

    .line 291
    if-eqz v5, :cond_1

    .line 292
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    if-eqz v5, :cond_8

    .line 307
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v5, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isForceHideBySViewCover()Z

    move-result v5

    .line 306
    if-eqz v5, :cond_10

    .line 309
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v5, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v5

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, p1, v8}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 310
    invoke-virtual {p1, v7, v7}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v0

    .line 311
    .local v0, "changedByCover":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/samsung/android/view/IWindowStateBridge;->setHideBySViewCover(Z)V

    .line 312
    if-eqz v0, :cond_3

    .line 313
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v9

    if-eqz v5, :cond_d

    move v2, v6

    .line 314
    .local v2, "showWhenLock":Z
    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v5, :cond_2

    .line 315
    const-string v5, "SamsungWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cover Policy - turning screen on: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iput-boolean v7, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 317
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreenPackage:Ljava/lang/String;

    .line 318
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mUid:I

    iput v8, v5, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreenUid:I

    .line 319
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v8, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 322
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 331
    .end local v2    # "showWhenLock":Z
    :cond_3
    :goto_1
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    .line 332
    const-string v5, "SamsungWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mForceHidingByCover Now policy hidden: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v0    # "changedByCover":Z
    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    .line 344
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v5, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 345
    .local v1, "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_5

    iget v5, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v8, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v5, v8, :cond_6

    .line 349
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v6, v5, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 357
    :cond_6
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x100000

    and-int/2addr v5, v8

    if-eqz v5, :cond_7

    .line 358
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v8, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 359
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v7, v10}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 361
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v5, :cond_7

    .line 362
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const-string v8, "updateWindowsAndWallpaperLocked 5"

    .line 363
    iget-object v9, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v7

    .line 362
    invoke-virtual {v5, v8, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 367
    .end local v1    # "currentFocus":Lcom/android/server/wm/WindowState;
    :cond_7
    return v6

    .line 293
    :cond_8
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v5

    .line 294
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 293
    invoke-interface {v5, p1, v8}, Lcom/android/server/policy/AODWindowPolicy;->canBeForceHiddenByNightClock(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 295
    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v5, :cond_c

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v9

    if-nez v5, :cond_a

    .line 296
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v5, v8}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v9, 0x7d0

    invoke-interface {v8, v9}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v8

    if-lt v5, v8, :cond_b

    move v5, v6

    .line 295
    :goto_3
    if-nez v5, :cond_9

    .line 297
    invoke-virtual {p1, v7}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 298
    const-string v5, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hide by AOD "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 300
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_9
    return v6

    :cond_a
    move v5, v6

    .line 295
    goto :goto_3

    :cond_b
    move v5, v7

    .line 296
    goto :goto_3

    :cond_c
    move v5, v7

    .line 295
    goto :goto_3

    .restart local v0    # "changedByCover":Z
    :cond_d
    move v2, v7

    .line 313
    goto/16 :goto_0

    .line 325
    .restart local v2    # "showWhenLock":Z
    :sswitch_0
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 326
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 334
    .end local v0    # "changedByCover":Z
    .end local v2    # "showWhenLock":Z
    :cond_e
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v5, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 335
    invoke-virtual {p1, v7, v7}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v0

    .line 336
    .restart local v0    # "changedByCover":Z
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    .line 337
    const-string v5, "SamsungWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Now policy shown: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 340
    .end local v0    # "changedByCover":Z
    :cond_f
    const/4 v0, 0x0

    .local v0, "changedByCover":Z
    goto/16 :goto_2

    .line 369
    .end local v0    # "changedByCover":Z
    :cond_10
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13

    .line 370
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "w$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 371
    .local v3, "w":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 372
    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    .line 373
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v6, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 374
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6, v10}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 376
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v5, :cond_11

    .line 377
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 378
    const-string v6, "updateWindowsAndWallpaperLocked s1"

    .line 379
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 380
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v9

    .line 379
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v8

    .line 377
    invoke-virtual {v5, v6, v8}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto :goto_4

    .line 384
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_12
    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 387
    .end local v4    # "w$iterator":Ljava/util/Iterator;
    :cond_13
    return v7

    .line 322
    :sswitch_data_0
    .sparse-switch
        0x7d9 -> :sswitch_0
        0x8b2 -> :sswitch_0
    .end sparse-switch
.end method
