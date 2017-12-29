.class public Lcom/android/server/am/SamsungActivityManagerService;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"

# interfaces
.implements Lcom/android/server/am/IActivityManagerServiceBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;,
        Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;,
        Lcom/android/server/am/SamsungActivityManagerService$MainHandler;,
        Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;,
        Lcom/android/server/am/SamsungActivityManagerService$UiHandler;,
        Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;
    }
.end annotation


# static fields
.field static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field static final ACTION_SETTINGS:Ljava/lang/String; = "android.settings.SETTINGS"

.field private static final CSC_VERSION:Ljava/lang/String;

.field static final DEBUG:Z = true

.field private static final DEBUG_VS:Z = false

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_KEEP_PACKAGES:Ljava/lang/String; = "keep_packages"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_KILL_PACKAGES:Ljava/lang/String; = "kill_packages"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_NAME:Ljava/lang/String; = "name"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_SKIP_SDK_VERSION_CHECK:Ljava/lang/String; = "skip_sdk_version_check"

.field static final MAX_KEEP_ALIVE_ACTIVITIES:I = 0x2

.field static final PERMISSION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.permission.LOCK_TASK_MODE"

.field private static final PRE_BOOT_CSC_FILE:Ljava/io/File;

.field private static final PRE_BOOT_CSC_FILENAME:Ljava/lang/String; = "pre_boot_csc.dat"

.field static final TAG:Ljava/lang/String; = "SamsungActivityManager"

.field private static final TASKWATCHER_FLAG_CONCERN_FRONT:I = 0x1

.field private static final TASKWATCHER_FLAG_REMOVED:I = 0x10

.field private static final TASKWATCHER_FLAG_TASK_DESCRIPTION_SET:I = 0x100

.field static final gForceKeepProcess:[Ljava/lang/String;

.field static final gForceKillPackages:[Ljava/lang/String;

.field private static mRelaxedBroadcastActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAllTaskWatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/app/ITaskWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mAlreadyDumpOnce:Z

.field final mAppNotRespodingProcs:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field final mGrabedIntentSenderRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/am/PendingIntentRecord$Key;",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mHideNonVSStacks:Z

.field mKeepAliveActivities:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleChangeDump:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;

.field private mMovingAllTasksToFreeform:Z

.field mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

.field mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

.field mSecBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mTaskState:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTaskWatchers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/app/ITaskWatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUiHandler:Landroid/os/Handler;

.field private mVSClientActivity:Lcom/android/server/am/ActivityRecord;

.field private mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field private mVSStack:Lcom/android/server/am/ActivityStack;

.field private mVSVisible:Z

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field saveDumpRunnable:Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/SamsungActivityManagerService;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/SamsungActivityManagerService;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/am/SamsungActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/am/SamsungActivityManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/SamsungActivityManagerService;Lcom/android/server/am/ActivityStack;)V
    .locals 0
    .param p1, "avoidStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->restoreFocusLocked(Lcom/android/server/am/ActivityStack;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/SamsungActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 173
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    aput-object v3, v2, v4

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->gForceKillPackages:[Ljava/lang/String;

    .line 174
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.tencent.mm:exdevice"

    aput-object v3, v2, v4

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->gForceKeepProcess:[Ljava/lang/String;

    .line 182
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    .line 1548
    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    .line 1563
    const-string v2, "ril.official_cscver"

    const-string v3, "DUMMY"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    .line 1567
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1568
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1569
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "pre_boot_csc.dat"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 151
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAppNotRespodingProcs:Ljava/util/WeakHashMap;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mGrabedIntentSenderRecords:Ljava/util/HashMap;

    .line 189
    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;

    invoke-direct {v0, p0}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;-><init>(Lcom/android/server/am/SamsungActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangeDump:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;

    .line 472
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    .line 473
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    .line 474
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    .line 755
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    .line 1384
    iput-boolean v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMovingAllTasksToFreeform:Z

    .line 1738
    iput-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1739
    iput-boolean v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAlreadyDumpOnce:Z

    .line 1765
    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;

    invoke-direct {v0, p0}, Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;-><init>(Lcom/android/server/am/SamsungActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->saveDumpRunnable:Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;

    .line 221
    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    .line 223
    iput-object p2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 225
    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SamsungActivityManagerService$MainHandler;-><init>(Lcom/android/server/am/SamsungActivityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mHandler:Landroid/os/Handler;

    .line 226
    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$UiHandler;

    invoke-direct {v0, p0}, Lcom/android/server/am/SamsungActivityManagerService$UiHandler;-><init>(Lcom/android/server/am/SamsungActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mUiHandler:Landroid/os/Handler;

    .line 228
    const-string v0, "SamsungActivityManager"

    const-string v1, "SamsungActivityManagerService created."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method private checkContainer(Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "metaData"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1983
    if-eqz p2, :cond_0

    const-string v2, "com.samsung.android.vs.container"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1985
    const/4 v1, -0x1

    .line 1987
    .local v1, "permission":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.virtualspace.permission.SEM_USE_VIRTUAL_SPACE"

    invoke-interface {v2, v3, p1, p3}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1990
    :goto_0
    if-eqz v1, :cond_2

    .line 1991
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v2, :cond_1

    .line 1992
    const-string v2, "SamsungActivityManager"

    const-string v3, "App doesn\'t have the permission to start in VS container"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    return v4

    .line 1984
    .end local v1    # "permission":I
    :cond_0
    return v4

    .line 1995
    .restart local v1    # "permission":I
    :cond_1
    const-string v2, "SamsungActivityManager"

    const-string v3, "App doesn\'t have the permission to start in VS container, ignored on eng build"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 1988
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private clearStackLocked(Lcom/android/server/am/ActivityStack;Z)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "destroy"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1890
    if-nez p1, :cond_0

    .line 1891
    return-void

    .line 1895
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 1896
    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->restoreFocusLocked(Lcom/android/server/am/ActivityStack;)V

    .line 1899
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    .line 1900
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStarter;->removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V

    .line 1901
    if-eqz p2, :cond_3

    .line 1902
    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 1903
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :goto_0
    if-eqz v0, :cond_2

    .line 1904
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V

    .line 1906
    :cond_2
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 1907
    iput-object v1, p1, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1908
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->detachStack(I)V

    .line 1889
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    .line 1902
    goto :goto_0
.end method

.method private collectFullscreenFreeformTasksLocked(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1485
    .local p1, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1486
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1487
    .local v0, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_1

    .line 1488
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 1489
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "tr$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1490
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1491
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1483
    .end local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v3    # "tr$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private findContainerForActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 2018
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_0

    .line 2019
    return-object v3

    .line 2021
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2022
    :goto_0
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->checkContainer(Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2023
    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    .line 2024
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->startVSContainerLocked()Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    return-object v1

    .line 2021
    :cond_1
    const/4 v0, 0x0

    .local v0, "metaData":Landroid/os/Bundle;
    goto :goto_0

    .line 2026
    .end local v0    # "metaData":Landroid/os/Bundle;
    :cond_2
    return-object v3
.end method

.method private getDefaultHomePackageName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1336
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1337
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1338
    const/high16 v3, 0x10000

    .line 1337
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1339
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 1340
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 1342
    :cond_0
    return-object v4
.end method

.method private getIntentBoolean(Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 2061
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2062
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 2063
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2065
    .end local v1    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 2068
    :cond_0
    return p3
.end method

.method private getVSStackLocked(I)Lcom/android/server/am/ActivityStack;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2009
    if-eqz p1, :cond_0

    .line 2010
    return-object v0

    .line 2011
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_1

    .line 2012
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    .line 2014
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method private initRelaxedBroadcastActions()V
    .locals 5

    .prologue
    .line 1115
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107009d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, "actions":[Ljava/lang/String;
    array-length v0, v1

    .line 1117
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 1118
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    .line 1119
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1120
    sget-object v3, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1114
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private isConventionalMode(Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 1853
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    .line 1854
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/SamsungWindowManagerService;->isMaxAspectComponentEx(Landroid/content/ComponentName;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1855
    return v3

    .line 1858
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->isConventionalMode:Z

    if-nez v0, :cond_1

    .line 1859
    const-string v0, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConventionalMode : packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1864
    :cond_2
    return v3
.end method

.method private isExcludedTaskOrNonRecentTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v2, 0x0

    .line 1347
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 1349
    const/high16 v1, 0x800000

    .line 1348
    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1350
    :cond_0
    const-string v0, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExcludedTaskOrNonRecentTask(), Task ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/4 v0, 0x1

    return v0

    .line 1354
    :cond_1
    return v2
.end method

.method private isKeepAliveTask(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 1274
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 1275
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->isKeepWhiteList(Ljava/lang/String;)Z

    move-result v0

    .line 1274
    :cond_0
    :goto_0
    return v0

    .line 1275
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isStartableInDesktopMode(Lcom/android/server/am/TaskRecord;)Z
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1373
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "activity$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 1374
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 1375
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v2

    .line 1376
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1375
    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyRunnable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1377
    const/4 v2, 0x0

    return v2

    .line 1381
    .end local v0    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private moveTaskToFreeformStackOrRelayoutLocked(Lcom/android/server/am/TaskRecord;Z)V
    .locals 17
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "isTopTask"    # Z

    .prologue
    .line 1502
    const/4 v15, 0x0

    .line 1503
    .local v15, "isDefaultWindowLayout":Z
    const/4 v5, 0x0

    .line 1504
    .local v5, "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1505
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 1506
    .local v16, "rootActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v16, :cond_0

    .line 1507
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v2}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->updateDexCompatLaunchPolicy(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;)V

    .line 1510
    :cond_0
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/am/TaskRecord;->mDexCompatLaunchPolicy:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 1511
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_2

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v1, :cond_2

    .line 1512
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 1513
    .local v5, "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    iget v1, v5, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-gtz v1, :cond_1

    iget v1, v5, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v1, :cond_4

    :cond_1
    const/4 v15, 0x1

    .line 1515
    .end local v5    # "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    :cond_2
    :goto_0
    if-nez v15, :cond_3

    .line 1516
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getDexDefaultWidth()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getDexDefaultHeight()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v15, 0x1

    .line 1522
    .end local v16    # "rootActivity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1523
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v5}, Lcom/android/server/am/ActivityStack;->layoutTaskInStack(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    .line 1524
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    const/4 v6, 0x2

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 1499
    :goto_2
    return-void

    .line 1513
    .restart local v5    # "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    .restart local v16    # "rootActivity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget v1, v5, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v1, v5, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    const/4 v15, 0x0

    goto :goto_0

    .line 1516
    .end local v5    # "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    :cond_5
    const/4 v15, 0x0

    goto :goto_1

    .line 1527
    .end local v16    # "rootActivity":Lcom/android/server/am/ActivityRecord;
    :cond_6
    const/4 v4, 0x0

    .line 1528
    .local v4, "defaultBounds":Landroid/graphics/Rect;
    if-eqz v15, :cond_7

    .line 1529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1530
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1531
    const/4 v6, 0x0

    .line 1529
    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v14

    .line 1532
    .local v14, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getTaskPositioner()Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1533
    new-instance v4, Landroid/graphics/Rect;

    .end local v4    # "defaultBounds":Landroid/graphics/Rect;
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1534
    .local v4, "defaultBounds":Landroid/graphics/Rect;
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getTaskPositioner()Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v1

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/LaunchingTaskPositioner;->getDefaultTaskBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Z)V

    .line 1538
    .end local v4    # "defaultBounds":Landroid/graphics/Rect;
    .end local v14    # "freeformStack":Lcom/android/server/am/ActivityStack;
    :cond_7
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 1539
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1540
    const-string v11, "Desktop mode"

    .line 1541
    if-eqz p2, :cond_8

    const/4 v13, 0x0

    .line 1540
    :goto_3
    const/4 v8, 0x2

    .line 1541
    const/4 v12, 0x0

    move/from16 v9, p2

    move/from16 v10, p2

    .line 1539
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;ZZ)Z

    goto :goto_2

    .line 1541
    :cond_8
    const/4 v13, 0x1

    goto :goto_3
.end method

.method private removeAllExcludedTaskInRecentTasksLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1358
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v0

    .line 1359
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1360
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1361
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1362
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 1363
    const/high16 v4, 0x800000

    .line 1362
    and-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 1359
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1366
    :cond_1
    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAllExcludedTaskInRecentTasksLocked(), Task ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4, v6, v6}, Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZZ)Z

    goto :goto_1

    .line 1357
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void
.end method

.method private restoreFocusLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 5
    .param p1, "avoidStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 1876
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1877
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    const/4 v0, 0x0

    .line 1878
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1879
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 1880
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v3, :cond_2

    .line 1881
    if-eq v0, p1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1884
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    if-eqz v0, :cond_1

    .line 1885
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 1875
    :cond_1
    return-void

    .line 1878
    .restart local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private startVSContainerLocked()Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1966
    new-instance v3, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;

    invoke-direct {v3, p0}, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;-><init>(Lcom/android/server/am/SamsungActivityManagerService;)V

    .line 1967
    .local v3, "state":Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x3

    invoke-virtual {v4, v6, v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->createVirtualActivityContainer(Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;I)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-result-object v0

    .line 1968
    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    .line 1969
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1970
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 1971
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1972
    invoke-virtual {v3}, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v6

    iget v7, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setSurface(Landroid/view/Surface;III)V

    .line 1974
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getDisplayId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/SamsungWindowManagerService;->rotateDisplay(II)V

    .line 1977
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1978
    return-object v0
.end method

.method private testExitVS(Lcom/android/server/am/ActivityRecord;)Z
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 2030
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-nez v0, :cond_0

    .line 2031
    return v6

    .line 2032
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->isVrActivity:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v1, "off_vs"

    invoke-direct {p0, v0, v1, v6}, Lcom/android/server/am/SamsungActivityManagerService;->getIntentBoolean(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2038
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/am/SamsungActivityManagerService;->getVSStackLocked(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 2039
    .local v8, "vsStack":Lcom/android/server/am/ActivityStack;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v0, v8, :cond_2

    .line 2042
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v3, v3, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 2044
    .local v7, "fullScreenStack":Lcom/android/server/am/ActivityStack;
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 2045
    const-string v5, "moveOffVSStack"

    move v4, v3

    .line 2044
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z

    .line 2048
    .end local v7    # "fullScreenStack":Lcom/android/server/am/ActivityStack;
    :cond_2
    invoke-virtual {p0, v6, v3}, Lcom/android/server/am/SamsungActivityManagerService;->clearStacks(IZ)V

    .line 2050
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0, v0, v6}, Lcom/android/server/am/SamsungActivityManagerService;->clearStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 2051
    iput-object v9, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2052
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V

    .line 2053
    return v3

    .line 2033
    .end local v8    # "vsStack":Lcom/android/server/am/ActivityStack;
    :cond_3
    return v6
.end method

.method private visibilityUpdated()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2003
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2004
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2002
    return-void
.end method


# virtual methods
.method public addAbortedBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .locals 3
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 974
    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 975
    iget v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    .line 973
    return-void
.end method

.method public addBroadcastSummaryHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .locals 4
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 963
    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->broadcastIntentToStringLocked(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 964
    iget-wide v0, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 965
    iget-wide v0, p2, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v2, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 966
    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 967
    iget v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    .line 962
    :cond_0
    return-void
.end method

.method public addCustomStartingWindowData(Lcom/android/server/am/ActivityRecord;)Ljava/lang/String;
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 855
    const/4 v1, 0x0

    .line 856
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 859
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 858
    if-nez v2, :cond_0

    .line 860
    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 858
    if-nez v2, :cond_0

    .line 861
    const-string v2, "android.settings.SETTINGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 858
    if-eqz v2, :cond_1

    .line 863
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->addCustomStartingWinodwData(Ljava/lang/String;Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, "key":Ljava/lang/String;
    return-object v1

    .line 869
    .local v1, "key":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public applyConventionalMode(Lcom/android/server/am/ActivityRecord;)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1821
    if-eqz p1, :cond_0

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->isVrActivity:Z

    if-eqz v5, :cond_1

    .line 1848
    :cond_0
    return v4

    .line 1822
    :cond_1
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_0

    .line 1823
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->isConventionalMode:Z

    .line 1824
    .local v2, "prevConventionalMode":Z
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1825
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1826
    .local v0, "packageName":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1827
    .local v1, "pid":I
    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->isConventionalMode(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1828
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->isConventionalMode:Z

    .line 1829
    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPackageConfigurationController:Lcom/android/server/PackageConfigurationController;

    invoke-interface {v5, v0, v3}, Lcom/android/server/PackageConfigurationController;->getAspectRatio(Ljava/lang/String;Z)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 1830
    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPackageConfigurationController:Lcom/android/server/PackageConfigurationController;

    iget-object v6, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/SamsungWindowManagerService;->getDefaultMaxAspect(Ljava/lang/String;)F

    move-result v6

    invoke-interface {v5, v0, v6}, Lcom/android/server/PackageConfigurationController;->enableConventionalModeInternal(Ljava/lang/String;F)Z

    .line 1832
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPackageConfigurationController:Lcom/android/server/PackageConfigurationController;

    invoke-interface {v5, v0}, Lcom/android/server/PackageConfigurationController;->isApplicationStarted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1833
    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPackageConfigurationController:Lcom/android/server/PackageConfigurationController;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-interface {v5, v0, v6, v1}, Lcom/android/server/PackageConfigurationController;->onApplicationStarted(Ljava/lang/String;II)V

    .line 1834
    const-string v5, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enable ConventionalMode app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "pid":I
    :cond_3
    :goto_0
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->isConventionalMode:Z

    if-eq v2, v5, :cond_5

    :goto_1
    return v3

    .line 1837
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v1    # "pid":I
    :cond_4
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->isConventionalMode:Z

    .line 1838
    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPackageConfigurationController:Lcom/android/server/PackageConfigurationController;

    invoke-interface {v5, v0}, Lcom/android/server/PackageConfigurationController;->disableConventionalModeInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1839
    const-string v5, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disable ConventionalMode app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPackageConfigurationController:Lcom/android/server/PackageConfigurationController;

    invoke-interface {v5, v0, v1}, Lcom/android/server/PackageConfigurationController;->onApplicationStopped(Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "pid":I
    :cond_5
    move v3, v4

    .line 1844
    goto :goto_1
.end method

.method broadcastIntentToStringLocked(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 980
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public broadcastQueueForIntent(Landroid/content/Intent;Z)Lcom/android/server/am/BroadcastQueue;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isFg"    # Z

    .prologue
    .line 914
    if-eqz p2, :cond_1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 914
    if-eqz v0, :cond_1

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSecBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    return-object v0

    .line 918
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 991
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2}, Ljava/io/CharArrayWriter;-><init>()V

    .line 992
    .local v2, "writer":Ljava/io/CharArrayWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 993
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 994
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "    "

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 995
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public clearCaller()V
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangeDump:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;

    invoke-virtual {v0}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->clearCaller()V

    .line 1636
    return-void
.end method

.method public clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    if-nez v0, :cond_0

    .line 893
    return-void

    .line 895
    :cond_0
    if-nez p1, :cond_1

    .line 896
    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungStartingWindowManager;->clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V

    .line 891
    return-void
.end method

.method public clearHomeStack()V
    .locals 10

    .prologue
    .line 1314
    iget-object v6, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 1315
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1316
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_2

    .line 1317
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 1318
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->getDefaultHomePackageName()Ljava/lang/String;

    move-result-object v0

    .line 1319
    .local v0, "defaultHomePkgName":Ljava/lang/String;
    const-string v5, "SamsungActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearHomeStack(), defaultHomePkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1321
    const-string v8, ", homeStack="

    .line 1319
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "task$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1323
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    .line 1324
    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1325
    :cond_1
    const-string v5, "SamsungActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearHomeStack(), removing task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v8, 0x1

    .line 1327
    const/4 v9, 0x1

    .line 1326
    invoke-virtual {v5, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1314
    .end local v0    # "defaultHomePkgName":Ljava/lang/String;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "task$iterator":Ljava/util/Iterator;
    .end local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    monitor-exit v6

    .line 1312
    return-void
.end method

.method public clearStacks(IZ)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "destroy"    # Z

    .prologue
    .line 2128
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2129
    if-nez p1, :cond_1

    .line 2130
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0, v2, p2}, Lcom/android/server/am/SamsungActivityManagerService;->clearStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 2131
    if-eqz p2, :cond_0

    .line 2132
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    .line 2143
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 2127
    return-void

    .line 2135
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 2136
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-nez v1, :cond_2

    monitor-exit v3

    .line 2137
    return-void

    .line 2139
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2140
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-direct {p0, v2, p2}, Lcom/android/server/am/SamsungActivityManagerService;->clearStackLocked(Lcom/android/server/am/ActivityStack;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2139
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2128
    .end local v0    # "stackNdx":I
    .end local v1    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public createBroadcastQueues(I)[Lcom/android/server/am/BroadcastQueue;
    .locals 8
    .param p1, "origSize"    # I

    .prologue
    .line 905
    add-int/lit8 v0, p1, 0x1

    new-array v7, v0, [Lcom/android/server/am/BroadcastQueue;

    .line 906
    .local v7, "broadcastQueues":[Lcom/android/server/am/BroadcastQueue;
    new-instance v0, Lcom/android/server/am/BroadcastQueue;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mHandler:Landroid/os/Handler;

    .line 907
    const-string v3, "sec"

    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    .line 906
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZ)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSecBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 908
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSecBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    aput-object v0, v7, p1

    .line 909
    return-object v7
.end method

.method public dumpForBroadcastQueueLocked(Lcom/android/server/am/BroadcastQueue;Ljava/io/PrintWriter;Z)V
    .locals 9
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z

    .prologue
    const/4 v8, -0x1

    .line 1021
    const/4 v0, -0x1

    .line 1022
    .local v0, "i":I
    const/4 v2, 0x0

    .line 1023
    .local v2, "printed":Z
    iget v3, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    .local v3, "ringIndex":I
    move v1, v3

    .local v1, "lastIndex":I
    move v4, v3

    .line 1025
    .end local v3    # "ringIndex":I
    .end local p3    # "needSep":Z
    .local v4, "ringIndex":I
    :cond_0
    sget v6, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    invoke-virtual {p1, v4, v8, v6}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v4

    .line 1026
    iget-object v6, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Ljava/lang/String;

    aget-object v5, v6, v4

    .line 1027
    .local v5, "str":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 1042
    :goto_0
    if-ne v4, v3, :cond_0

    .line 1044
    const/4 v0, -0x1

    .line 1045
    const/4 v2, 0x0

    .line 1046
    iget v3, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    .end local v4    # "ringIndex":I
    .restart local v3    # "ringIndex":I
    move v1, v3

    move v4, v3

    .line 1048
    .end local v3    # "ringIndex":I
    .restart local v4    # "ringIndex":I
    :cond_1
    sget v6, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    invoke-virtual {p1, v4, v8, v6}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v4

    .line 1049
    iget-object v6, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    aget-object v5, v6, v4

    .line 1050
    if-nez v5, :cond_5

    .line 1065
    :goto_1
    if-ne v4, v3, :cond_1

    .line 1014
    return-void

    .line 1030
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1031
    if-nez v2, :cond_4

    .line 1032
    if-eqz p3, :cond_3

    .line 1033
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1035
    :cond_3
    const/4 p3, 0x1

    .line 1036
    .local p3, "needSep":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Aborted Historical broadcasts ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    const/4 v2, 0x1

    .line 1039
    .end local p3    # "needSep":Z
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Aborted Historical Broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1053
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 1054
    if-nez v2, :cond_7

    .line 1055
    if-eqz p3, :cond_6

    .line 1056
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1058
    :cond_6
    const/4 p3, 0x1

    .line 1059
    .restart local p3    # "needSep":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Delayed Historical broadcasts ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    const/4 v2, 0x1

    .line 1062
    .end local p3    # "needSep":Z
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Delayed Historical Broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public dumpGrabIntentLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 420
    const-string v3, "ACTIVITY MANAGER GRABED PENDING INTENTS"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, "printed":Z
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mGrabedIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 424
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mGrabedIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 425
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/PendingIntentRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 427
    .local v2, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz p3, :cond_1

    if-eqz v2, :cond_0

    .line 428
    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    :cond_1
    const/4 v1, 0x1

    .line 432
    if-eqz v2, :cond_0

    .line 433
    const-string v3, "  * "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 434
    if-eqz p2, :cond_0

    .line 435
    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_2
    return v1
.end method

.method public dumpLocaleChangedHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangeDump:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->dumpLocaleChangedHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 1626
    return-void
.end method

.method public executeAutoCapture(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 880
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 881
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 882
    const/4 v1, 0x0

    return v1

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SamsungStartingWindowManager;->executeAutoCapture(Landroid/view/IApplicationToken;)Z

    .line 885
    const/4 v1, 0x1

    return v1
.end method

.method public findActivityContainer(I)Landroid/app/IActivityContainer;
    .locals 10
    .param p1, "pid"    # I

    .prologue
    const/4 v9, 0x0

    .line 2100
    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2101
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 2102
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-eqz v3, :cond_2

    .line 2103
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "stack$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2104
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 2105
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz v6, :cond_0

    .line 2106
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "task$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 2107
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2108
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v7, p1, :cond_1

    .line 2109
    iget-object v7, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v7

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "stack$iterator":Ljava/util/Iterator;
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "task$iterator":Ljava/util/Iterator;
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_2
    monitor-exit v8

    .line 2114
    return-object v9

    .line 2100
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public forwardInput(Landroid/app/IActivityContainer;I)V
    .locals 4
    .param p1, "container"    # Landroid/app/IActivityContainer;
    .param p2, "displayId"    # I

    .prologue
    .line 2119
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2120
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object v1, v0

    .line 2121
    .local v1, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v1, :cond_1

    .line 2122
    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    if-ne p2, v2, :cond_0

    const/4 p2, -0x1

    .end local p2    # "displayId":I
    :cond_0
    iput p2, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mInputForwardDisplayId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 2118
    return-void

    .line 2119
    .end local v1    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getCallingActivityToken(I)Landroid/os/IBinder;
    .locals 7
    .param p1, "pid"    # I

    .prologue
    const/4 v6, 0x0

    .line 2074
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2076
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2077
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "pr":Lcom/android/server/am/ProcessRecord;
    :try_start_2
    monitor-exit v5

    .line 2079
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    monitor-exit v4

    .line 2080
    return-object v6

    .line 2076
    .end local v0    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2074
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2081
    .restart local v0    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_1
    :try_start_4
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    .line 2082
    const-string v3, "SamsungActivityManager"

    const-string v5, "more than one activity"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    :cond_2
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2085
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_3

    .line 2086
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v4

    return-object v3

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    monitor-exit v4

    .line 2089
    return-object v6
.end method

.method public getExtraPolicyForMultiResolution()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1256
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->getDesktopModeKillPolicy()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getGrabedIntentSendersLocked()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/IIntentSender;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 403
    .local v1, "pirMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/content/IIntentSender;>;"
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mGrabedIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 405
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mGrabedIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 406
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/PendingIntentRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 408
    .local v2, "rec":Lcom/android/server/am/PendingIntentRecord;
    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v3}, Lcom/android/server/am/PendingIntentRecord$Key;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 411
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_0
    return-object v1
.end method

.method public getLaunchStackVS(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2170
    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->findContainerForActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-result-object v0

    .line 2171
    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    .line 2172
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v1

    .line 2175
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/SamsungWindowManagerService;->inVSMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2176
    return-object v3

    .line 2179
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-ne v1, v2, :cond_2

    .line 2181
    return-object v3

    .line 2184
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v2, "on_vs_display"

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/am/SamsungActivityManagerService;->getIntentBoolean(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2187
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v1, :cond_3

    .line 2188
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v1

    .line 2191
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->testExitVS(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2192
    return-object v3

    .line 2196
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/am/SamsungActivityManagerService;->getVSStackLocked(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method public getMatchingOrderedReceiver(Landroid/os/IBinder;I)Lcom/android/server/am/BroadcastRecord;
    .locals 3
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "queueIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 951
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    .line 952
    .local v0, "broadcastQueues":[Lcom/android/server/am/BroadcastQueue;
    if-ltz p2, :cond_0

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 953
    aget-object v1, v0, p2

    if-eqz v1, :cond_0

    .line 954
    aget-object v1, v0, p2

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueue;->getMatchingOrderedReceiver(Landroid/os/IBinder;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    return-object v1

    .line 956
    :cond_0
    return-object v2
.end method

.method public getResumedActivityVS()Lcom/android/server/am/ActivityRecord;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2289
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->inVSMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2290
    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    if-eqz v0, :cond_0

    .line 2291
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0

    .line 2293
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1

    .line 2294
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 2297
    :cond_1
    return-object v1
.end method

.method public getTaskInfoFromTaskIdLocked(III)Landroid/os/Bundle;
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .prologue
    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 740
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_0

    .line 741
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 742
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "userId"

    iget v3, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 743
    const-string v2, "taskType"

    iget v3, v1, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 744
    const-string v2, "lastTaskDescription"

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 745
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 746
    const-string v2, "componentName"

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-object v0
.end method

.method public getTopTaskId()I
    .locals 3

    .prologue
    .line 1279
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 1280
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumedAppLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1281
    .local v0, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 1282
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1284
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_1

    .line 1285
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    .line 1284
    if-eqz v1, :cond_1

    .line 1286
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    .line 1288
    :cond_1
    const/4 v1, -0x1

    monitor-exit v2

    return v1

    .line 1279
    .end local v0    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getTopTaskIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1293
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1294
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/SamsungActivityManagerService;->getTopTaskId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1295
    .local v1, "topTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1296
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1297
    .local v0, "rootActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1298
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .end local v0    # "rootActivity":Lcom/android/server/am/ActivityRecord;
    :cond_0
    monitor-exit v3

    .line 1301
    return-object v5

    .line 1293
    .end local v1    # "topTask":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public grabIntentSenderLocked(Landroid/content/IIntentSender;Ljava/lang/String;[J)Landroid/content/IIntentSender;
    .locals 18
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "outTime"    # [J

    .prologue
    move-object/from16 v14, p1

    .line 382
    check-cast v14, Lcom/android/server/am/PendingIntentRecord;

    .line 383
    .local v14, "rec":Lcom/android/server/am/PendingIntentRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v4, v14, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v3, v14, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v10, v3, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 387
    .local v10, "flags":I
    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v10, v3

    .line 389
    new-instance v2, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 390
    iget-object v3, v14, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iget-object v4, v14, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v14, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v4, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 391
    iget-object v4, v14, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v7, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    iget-object v4, v14, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v4, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iget-object v4, v14, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v4, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iget-object v4, v14, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v11, v4, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    iget-object v4, v14, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v12, v4, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move-object/from16 v4, p2

    .line 389
    invoke-direct/range {v2 .. v12}, Lcom/android/server/am/PendingIntentRecord$Key;-><init>(ILjava/lang/String;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 392
    .local v2, "newKey":Lcom/android/server/am/PendingIntentRecord$Key;
    new-instance v13, Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v13, v3, v2, v4}, Lcom/android/server/am/PendingIntentRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PendingIntentRecord$Key;I)V

    .line 393
    .local v13, "newRec":Lcom/android/server/am/PendingIntentRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 394
    .local v16, "time":J
    iget-object v3, v13, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/PendingIntentRecord$Key;->setTime(J)V

    .line 395
    const/4 v3, 0x0

    aput-wide v16, p3, v3

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SamsungActivityManagerService;->mGrabedIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-object v13
.end method

.method public hasKeepAliveActivitiesLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 790
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 791
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/SamsungActivityManagerService;->isKeepAliveActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 792
    const/4 v2, 0x1

    return v2

    .line 795
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hideNonVSStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2232
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/SamsungWindowManagerService;->inVSMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2233
    return v1

    .line 2234
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    if-eqz v2, :cond_2

    .line 2239
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mHideNonVSStacks:Z

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-eq p1, v2, :cond_3

    :goto_0
    return v0

    .line 2234
    :cond_2
    iget v2, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v2, :cond_1

    .line 2237
    return v0

    :cond_3
    move v0, v1

    .line 2239
    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 232
    return-void
.end method

.method public initBroadcastQueues([Lcom/android/server/am/BroadcastQueue;)V
    .locals 2
    .param p1, "broadcastQueues"    # [Lcom/android/server/am/BroadcastQueue;

    .prologue
    .line 939
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 940
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 941
    aget-object v1, p1, v0

    iput v0, v1, Lcom/android/server/am/BroadcastQueue;->mQueueIdx:I

    .line 939
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 945
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->initRelaxedBroadcastActions()V

    .line 938
    return-void
.end method

.method public isCscVerChanged()Z
    .locals 10

    .prologue
    .line 1573
    const/4 v4, 0x0

    .line 1574
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 1576
    .local v0, "dis":Ljava/io/DataInputStream;
    const-string v7, "DUMMY"

    sget-object v8, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1577
    const-string v7, "SamsungActivityManager"

    const-string v8, "csc version of property is wrong"

    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v7, v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1580
    :cond_0
    const-string v6, "DUMMY"

    .line 1582
    .local v6, "prevCscVer":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    sget-object v7, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1583
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    const/16 v8, 0x400

    invoke-direct {v7, v5, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v1, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1584
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v0    # "dis":Ljava/io/DataInputStream;
    move-result-object v6

    .line 1589
    if-eqz v5, :cond_1

    .line 1591
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v0, "dis":Ljava/io/DataInputStream;
    move-object v4, v5

    .line 1596
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    sget-object v7, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_2
    return v7

    .line 1592
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1586
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v0, "dis":Ljava/io/DataInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 1587
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v7, "SamsungActivityManager"

    const-string v8, "Failure reading pre boot csc"

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1589
    if-eqz v4, :cond_2

    .line 1591
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 1592
    :catch_2
    move-exception v3

    goto :goto_1

    .line 1585
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    .line 1589
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    if-eqz v4, :cond_2

    .line 1591
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 1592
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1588
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1589
    :goto_5
    if-eqz v4, :cond_3

    .line 1591
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1588
    :cond_3
    :goto_6
    throw v7

    .line 1592
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 1596
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v7, 0x1

    goto :goto_2

    .line 1588
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v0, "dis":Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1585
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v0, "dis":Ljava/io/DataInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v0, "dis":Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1586
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v0, "dis":Ljava/io/DataInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v0, "dis":Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public isFgBroadcastQueue(Lcom/android/server/am/BroadcastQueue;)Z
    .locals 1
    .param p1, "broadcastQueue"    # Lcom/android/server/am/BroadcastQueue;

    .prologue
    .line 931
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSecBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    if-ne p1, v0, :cond_0

    .line 932
    const/4 v0, 0x1

    return v0

    .line 934
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKeepAliveActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKnoxDesktopModeLocked()Z
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    .line 1268
    :goto_0
    return v0

    .line 1269
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovingAllTasksToFreeformLocked()Z
    .locals 1

    .prologue
    .line 1387
    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMovingAllTasksToFreeform:Z

    return v0
.end method

.method public isPendingBroadcastProcessLocked(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSecBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSecBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastQueue;->isPendingBroadcastProcessLocked(I)Z

    move-result v0

    return v0

    .line 926
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRelaxedBroadcastAction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1127
    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    const/4 v0, 0x1

    return v0

    .line 1130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isTopTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 478
    .local v0, "state":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTrimApplicaionsScheduled()Z
    .locals 1

    .prologue
    .line 1555
    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVSManagedStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 2
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v0, 0x0

    .line 2163
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_0

    .line 2164
    return v0

    .line 2165
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isVSStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 2
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v0, 0x0

    .line 2158
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V
    .locals 35
    .param p1, "minTargetSdk"    # I
    .param p2, "maxProcState"    # I
    .param p3, "extraPolicy"    # Landroid/os/Bundle;

    .prologue
    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    const-string v30, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v29

    if-eqz v29, :cond_0

    .line 1138
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Permission Denial: killAllBackgroundProcessesExcept() from pid="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1139
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v30

    .line 1138
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1139
    const-string v30, ", uid="

    .line 1138
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1139
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v30

    .line 1138
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1140
    const-string v30, " requires "

    .line 1138
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1140
    const-string v30, "android.permission.KILL_BACKGROUND_PROCESSES"

    .line 1138
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1141
    .local v24, "msg":Ljava/lang/String;
    const-string v29, "SamsungActivityManager"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v29, Ljava/lang/SecurityException;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1145
    .end local v24    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1147
    .local v12, "callingId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    monitor-enter v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1148
    const/16 v20, 0x0

    .line 1149
    .local v20, "isExtraPolicy":Z
    const/16 v16, 0x0

    .line 1150
    .local v16, "extraPolicyName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1151
    .local v15, "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 1152
    .local v14, "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v28, 0x0

    .line 1153
    .local v28, "skipSdkVersionCheck":Z
    if-eqz p3, :cond_7

    .line 1154
    const/16 v20, 0x1

    .line 1155
    :try_start_1
    const-string v29, "name"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1156
    .local v16, "extraPolicyName":Ljava/lang/String;
    const-string v29, "kill_packages"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v29

    move-object/from16 v0, v29

    check-cast v0, Ljava/util/HashSet;

    move-object v15, v0

    .line 1157
    .local v15, "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v29, "keep_packages"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v29

    move-object/from16 v0, v29

    check-cast v0, Ljava/util/HashSet;

    move-object v14, v0

    .line 1158
    .local v14, "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v29, "skip_sdk_version_check"

    const/16 v31, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 1164
    .end local v14    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v28    # "skipSdkVersionCheck":Z
    :goto_0
    const/4 v11, 0x1

    .line 1170
    .local v11, "doRestartSystemUi":Z
    if-eqz v11, :cond_1

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    .line 1172
    const-string v29, "SamsungActivityManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "killAllProcesses mSystemUIProcessRecord="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->killed:Z

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "kill all background except(policy="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    move/from16 v29, v0

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    .line 1176
    const-string v29, "sys.skip_lockscreen"

    const-string v31, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :cond_1
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    .local v27, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 1184
    .local v8, "NP":I
    const/16 v19, 0x0

    .local v19, "ip":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v8, :cond_11

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 1186
    .local v10, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 1187
    .local v7, "NA":I
    const/16 v18, 0x0

    .local v18, "ia":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v7, :cond_10

    .line 1188
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 1189
    .local v9, "app":Lcom/android/server/am/ProcessRecord;
    const/16 v23, 0x0

    .line 1190
    .local v23, "killProcess":Z
    const/16 v22, 0x0

    .line 1191
    .local v22, "killByExtraPolicy":Z
    const/16 v21, 0x0

    .line 1193
    .local v21, "keepAliveByExtraPolicy":Z
    iget v0, v9, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v29, v0

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 1194
    const/16 v23, 0x1

    .line 1197
    :cond_2
    sget-object v31, Lcom/android/server/am/SamsungActivityManagerService;->gForceKillPackages:[Ljava/lang/String;

    const/16 v29, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    :goto_3
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    aget-object v26, v31, v29

    .line 1198
    .local v26, "pkg":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 1199
    const/16 v23, 0x1

    .line 1204
    .end local v26    # "pkg":Ljava/lang/String;
    :cond_3
    sget-object v31, Lcom/android/server/am/SamsungActivityManagerService;->gForceKeepProcess:[Ljava/lang/String;

    const/16 v29, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    :goto_4
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_4

    aget-object v25, v31, v29

    .line 1205
    .local v25, "p":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 1206
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessRecord;->setKeepAlive(I)V

    .line 1211
    .end local v25    # "p":Ljava/lang/String;
    :cond_4
    if-eqz v20, :cond_5

    .line 1212
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1213
    .restart local v26    # "pkg":Ljava/lang/String;
    if-eqz v15, :cond_a

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 1214
    const/16 v22, 0x1

    .line 1226
    .end local v26    # "pkg":Ljava/lang/String;
    :cond_5
    :goto_5
    iget-boolean v0, v9, Lcom/android/server/am/ProcessRecord;->removed:Z

    move/from16 v29, v0

    if-eqz v29, :cond_c

    .line 1227
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    :cond_6
    :goto_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 1160
    .end local v7    # "NA":I
    .end local v8    # "NP":I
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v11    # "doRestartSystemUi":Z
    .end local v18    # "ia":I
    .end local v19    # "ip":I
    .end local v21    # "keepAliveByExtraPolicy":Z
    .end local v22    # "killByExtraPolicy":Z
    .end local v23    # "killProcess":Z
    .end local v27    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v14, "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v15, "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v16, "extraPolicyName":Ljava/lang/String;
    .restart local v28    # "skipSdkVersionCheck":Z
    :cond_7
    const-string v16, "multi-resolution"

    .local v16, "extraPolicyName":Ljava/lang/String;
    goto/16 :goto_0

    .line 1197
    .end local v14    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v28    # "skipSdkVersionCheck":Z
    .restart local v7    # "NA":I
    .restart local v8    # "NP":I
    .restart local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v11    # "doRestartSystemUi":Z
    .restart local v18    # "ia":I
    .restart local v19    # "ip":I
    .restart local v21    # "keepAliveByExtraPolicy":Z
    .restart local v22    # "killByExtraPolicy":Z
    .restart local v23    # "killProcess":Z
    .restart local v26    # "pkg":Ljava/lang/String;
    .restart local v27    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_8
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 1204
    .end local v26    # "pkg":Ljava/lang/String;
    .restart local v25    # "p":Ljava/lang/String;
    :cond_9
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 1215
    .end local v25    # "p":Ljava/lang/String;
    .restart local v26    # "pkg":Ljava/lang/String;
    :cond_a
    if-eqz v14, :cond_b

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 1216
    const/16 v21, 0x1

    goto :goto_5

    .line 1219
    :cond_b
    if-eqz v16, :cond_5

    const-string v29, "DeX"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 1220
    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_5

    .line 1221
    const/16 v21, 0x1

    goto :goto_5

    .line 1228
    .end local v26    # "pkg":Ljava/lang/String;
    :cond_c
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessRecord;->isKeepAlive(I)Z

    move-result v29

    if-nez v29, :cond_6

    .line 1229
    if-nez v21, :cond_6

    .line 1230
    if-nez v28, :cond_d

    if-ltz p1, :cond_d

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    .line 1231
    :cond_d
    if-ltz p2, :cond_e

    iget v0, v9, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    if-le v0, v1, :cond_f

    .line 1233
    :cond_e
    :goto_7
    const/16 v29, 0x1

    move/from16 v0, v29

    iput-boolean v0, v9, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 1234
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 1147
    .end local v7    # "NA":I
    .end local v8    # "NP":I
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v11    # "doRestartSystemUi":Z
    .end local v16    # "extraPolicyName":Ljava/lang/String;
    .end local v18    # "ia":I
    .end local v19    # "ip":I
    .end local v21    # "keepAliveByExtraPolicy":Z
    .end local v22    # "killByExtraPolicy":Z
    .end local v23    # "killProcess":Z
    .end local v27    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v29

    :try_start_2
    monitor-exit v30

    throw v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1247
    .end local v20    # "isExtraPolicy":Z
    :catchall_1
    move-exception v29

    .line 1248
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1247
    throw v29

    .line 1231
    .restart local v7    # "NA":I
    .restart local v8    # "NP":I
    .restart local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v11    # "doRestartSystemUi":Z
    .restart local v16    # "extraPolicyName":Ljava/lang/String;
    .restart local v18    # "ia":I
    .restart local v19    # "ip":I
    .restart local v20    # "isExtraPolicy":Z
    .restart local v21    # "keepAliveByExtraPolicy":Z
    .restart local v22    # "killByExtraPolicy":Z
    .restart local v23    # "killProcess":Z
    .restart local v27    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_f
    if-nez v23, :cond_e

    if-nez v22, :cond_e

    .line 1232
    :try_start_3
    const-string v29, "force-keep-alive"

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 1228
    if-eqz v29, :cond_6

    goto :goto_7

    .line 1184
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v21    # "keepAliveByExtraPolicy":Z
    .end local v22    # "killByExtraPolicy":Z
    .end local v23    # "killProcess":Z
    :cond_10
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 1242
    .end local v7    # "NA":I
    .end local v10    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v18    # "ia":I
    :cond_11
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1243
    .local v6, "N":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_8
    move/from16 v0, v17

    if-ge v0, v6, :cond_12

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/am/ProcessRecord;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "kill all background except(policy="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1243
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    :cond_12
    :try_start_4
    monitor-exit v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1248
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1135
    return-void
.end method

.method public moveActivityIfNeeded(Lcom/android/server/am/ActivityRecord;)Z
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 2244
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->inVSMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-nez v0, :cond_1

    .line 2245
    :cond_0
    return v3

    .line 2248
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_3

    .line 2249
    :cond_2
    return v6

    .line 2252
    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2253
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    if-ne v7, v0, :cond_4

    .line 2254
    return v3

    .line 2257
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->testExitVS(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2258
    return v3

    .line 2261
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mHideNonVSStacks:Z

    if-nez v0, :cond_6

    .line 2262
    return v3

    .line 2266
    :cond_6
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2267
    return v3

    .line 2270
    :cond_7
    invoke-direct {p0, v6}, Lcom/android/server/am/SamsungActivityManagerService;->getVSStackLocked(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 2271
    .local v8, "vsStack":Lcom/android/server/am/ActivityStack;
    if-eqz v8, :cond_8

    if-ne v7, v8, :cond_9

    .line 2272
    :cond_8
    return v3

    .line 2275
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    const-string v5, "moveToVSStack"

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public moveAllTasksToStack(II)V
    .locals 13
    .param p1, "targetStackId"    # I
    .param p2, "topTaskId"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1392
    iget-object v9, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 1393
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    .local v0, "fullscreenFreeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-ne p1, v11, :cond_7

    .line 1406
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMovingAllTasksToFreeform:Z

    .line 1422
    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/server/am/ActivityManagerService;->moveTasksToFullscreenStack(IZ)V

    .line 1424
    const/4 v2, 0x1

    .line 1425
    .local v2, "s":I
    :goto_0
    const/4 v8, 0x4

    .line 1424
    if-gt v2, v8, :cond_5

    .line 1426
    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1427
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_1

    .line 1425
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1428
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 1431
    .local v7, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 1432
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1433
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1431
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1436
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/am/SamsungActivityManagerService;->isExcludedTaskOrNonRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1437
    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v10, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v8, v10, v11, v12}, Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1392
    .end local v0    # "fullscreenFreeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "s":I
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 1439
    .restart local v0    # "fullscreenFreeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v1    # "i":I
    .restart local v2    # "s":I
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :cond_3
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/am/SamsungActivityManagerService;->isStartableInDesktopMode(Lcom/android/server/am/TaskRecord;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1440
    const/4 v8, 0x0

    invoke-direct {p0, v4, v8}, Lcom/android/server/am/SamsungActivityManagerService;->moveTaskToFreeformStackOrRelayoutLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1441
    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/IMultiWindowManagerServiceBridge;

    .line 1442
    const/4 v10, 0x2

    .line 1441
    invoke-interface {v8, v4, v10}, Lcom/android/server/am/IMultiWindowManagerServiceBridge;->setHiddenTaskLocked(Lcom/android/server/am/TaskRecord;I)V

    goto :goto_2

    .line 1444
    :cond_4
    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v10, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v8, v10, v11, v12}, Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZZ)Z

    goto :goto_2

    .line 1449
    .end local v1    # "i":I
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/am/SamsungActivityManagerService;->collectFullscreenFreeformTasksLocked(Ljava/util/ArrayList;)V

    .line 1450
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->removeAllExcludedTaskInRecentTasksLocked()V

    .line 1452
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMovingAllTasksToFreeform:Z

    .line 1472
    .end local v2    # "s":I
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "task$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1473
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleReportMultiWindowModeChanged(Lcom/android/server/am/TaskRecord;)V

    goto :goto_3

    .line 1453
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "task$iterator":Ljava/util/Iterator;
    :cond_7
    if-ne p1, v10, :cond_6

    .line 1455
    invoke-direct {p0, v0}, Lcom/android/server/am/SamsungActivityManagerService;->collectFullscreenFreeformTasksLocked(Ljava/util/ArrayList;)V

    .line 1457
    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1458
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_6

    .line 1459
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 1461
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .restart local v1    # "i":I
    :goto_4
    if-ltz v1, :cond_6

    .line 1462
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1463
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->positionTaskInStackLocked(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1461
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .end local v1    # "i":I
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v5    # "task$iterator":Ljava/util/Iterator;
    :cond_8
    monitor-exit v9

    .line 1478
    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1390
    return-void
.end method

.method public moveTaskToBackLocked(IZLandroid/os/Bundle;)Z
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "keepAlive"    # Z
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 759
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 760
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_4

    .line 761
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 762
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 763
    return v2

    .line 765
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 766
    .local v1, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    .line 767
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 768
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, p1, v2, p3}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZLandroid/os/Bundle;)Z

    move-result v2

    :cond_2
    return v2

    .line 770
    :cond_3
    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max count exceeded! Cannot set keepAlive for taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 775
    .end local v1    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    return v2
.end method

.method public notifyTaskDescriptionSetLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 724
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 725
    .local v0, "watcherList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/samsung/android/app/ITaskWatcher;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 726
    return-void

    .line 729
    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v1, :cond_1

    .line 730
    const-string v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyTaskDescriptionSetLocked: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_1
    const/16 v1, 0x100

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V

    .line 722
    return-void
.end method

.method public notifyTaskRemovedLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 683
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 684
    .local v1, "watcherList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/samsung/android/app/ITaskWatcher;>;"
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 685
    return-void

    .line 688
    :cond_0
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v2, :cond_1

    .line 689
    const-string v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyTaskRemoved: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->isTopTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x11

    .line 693
    .local v0, "flags":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/SamsungActivityManagerService;->sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V

    .line 681
    return-void

    .line 692
    .end local v0    # "flags":I
    :cond_2
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public notifyTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toFront"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->isTopTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    xor-int v0, v2, p2

    .line 701
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 704
    .local v1, "watcherList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/samsung/android/app/ITaskWatcher;>;"
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 705
    return-void

    .line 708
    :cond_0
    if-eqz v0, :cond_3

    .line 709
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v2, :cond_1

    .line 710
    const-string v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyTaskToFront: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTaskToFront="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/SamsungActivityManagerService;->sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V

    .line 698
    :cond_2
    :goto_0
    return-void

    .line 714
    :cond_3
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v2, :cond_2

    .line 715
    const-string v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyTaskToFront: [no change] taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTaskToFront="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLockTaskModeChanged(I)V
    .locals 6
    .param p1, "lockTaskModeState"    # I

    .prologue
    .line 449
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 451
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->onLockTaskModeChanged(I)V

    .line 453
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_SupportBroadcastScreenPinning"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "status"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 459
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 460
    .local v2, "pinIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v3, "enable"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 463
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const-string v5, "com.samsung.android.permission.LOCK_TASK_MODE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 448
    return-void

    .line 449
    .end local v0    # "enabled":Z
    .end local v2    # "pinIntent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method public printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "i"    # I
    .param p4, "now"    # J

    .prologue
    .line 1000
    const-string v0, ", [disp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v0, v0, p3

    invoke-static {v0, v1, p4, p5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1002
    const-string v0, ", fin="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    invoke-static {v0, v1, p4, p5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1004
    const-string v0, ", dur="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1005
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v2, v2, p3

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1010
    :goto_0
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    return-void

    .line 1008
    :cond_0
    const-string v0, "--"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryRegisteredReceiverPackages(Landroid/content/Intent;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1072
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1073
    .local v5, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1074
    .local v6, "callingUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    .line 1076
    .local v13, "callingAppId":I
    const/16 v4, 0x3e8

    if-eq v13, v4, :cond_0

    const/16 v4, 0x3e9

    if-ne v13, v4, :cond_1

    .line 1087
    :cond_0
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1088
    .local v19, "registeredReceiverPackages":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1089
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 1090
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v16

    .line 1092
    .local v16, "origId":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1093
    const-string v10, "queryRegisteredReceiverPackages"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move/from16 v7, p3

    .line 1092
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 1095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mReceiverResolver:Lcom/android/server/IntentResolver;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v7, v2}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v20

    .line 1096
    .local v20, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    if-eqz v20, :cond_3

    .line 1097
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 1099
    .local v18, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_2

    .line 1100
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/BroadcastFilter;

    .line 1101
    .local v12, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v4, v12, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1099
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1077
    .end local v12    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v14    # "i":I
    .end local v16    # "origId":J
    .end local v18    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "registeredReceiverPackages":[Ljava/lang/String;
    .end local v20    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    :cond_1
    const/16 v4, 0x7d0

    if-eq v13, v4, :cond_0

    const/16 v4, 0x3ea

    if-eq v13, v4, :cond_0

    .line 1078
    const/16 v4, 0x403

    if-eq v13, v4, :cond_0

    if-eqz v6, :cond_0

    .line 1081
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: not allowed to query registered receiver packages from pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1082
    const-string v7, ", uid="

    .line 1081
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1083
    .local v15, "msg":Ljava/lang/String;
    const-string v4, "SamsungActivityManager"

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1103
    .end local v15    # "msg":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v16    # "origId":J
    .restart local v18    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v19    # "registeredReceiverPackages":[Ljava/lang/String;
    .restart local v20    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    :cond_2
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v19, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1106
    .end local v14    # "i":I
    .end local v18    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v21

    .line 1108
    return-object v19

    .line 1105
    .end local v20    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    :catchall_0
    move-exception v4

    .line 1106
    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1105
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1088
    .end local v16    # "origId":J
    :catchall_1
    move-exception v4

    monitor-exit v21

    throw v4
.end method

.method public recordLocaleChangedHistory(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .locals 1
    .param p1, "from"    # Landroid/os/LocaleList;
    .param p2, "to"    # Landroid/os/LocaleList;

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangeDump:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->recordLocaleChangedHistory(Landroid/os/LocaleList;Landroid/os/LocaleList;)V

    .line 1641
    return-void
.end method

.method registerAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V
    .locals 1
    .param p1, "watcher"    # Lcom/samsung/android/app/ITaskWatcher;

    .prologue
    .line 520
    if-eqz p1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 518
    :cond_0
    return-void
.end method

.method public registerAppNotRespondingProcLocked(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I

    .prologue
    .line 320
    if-lez p2, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAppNotRespodingProcs:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_0
    return-void
.end method

.method public registerTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;IIZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "watcher"    # Lcom/samsung/android/app/ITaskWatcher;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "allowed"    # Z

    .prologue
    const/4 v4, -0x1

    .line 484
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v1, :cond_0

    .line 485
    const-string v2, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerTaskWatcher: taskId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p1, v4, :cond_2

    const-string v1, "ALL"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", watcher="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " allowed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    if-eqz p5, :cond_4

    .line 489
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 490
    if-ne p1, v4, :cond_3

    .line 491
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->registerAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v2

    .line 482
    return-void

    .line 485
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 493
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 494
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->registerTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 489
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 500
    :cond_4
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot registerTaskWatcher from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method registerTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "watcher"    # Lcom/samsung/android/app/ITaskWatcher;

    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 509
    .local v0, "watcherList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/samsung/android/app/ITaskWatcher;>;"
    if-nez v0, :cond_0

    .line 510
    new-instance v0, Landroid/os/RemoteCallbackList;

    .end local v0    # "watcherList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/samsung/android/app/ITaskWatcher;>;"
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 511
    .restart local v0    # "watcherList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/samsung/android/app/ITaskWatcher;>;"
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_0
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 505
    return-void
.end method

.method removeAllRecentTasksLocked(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 278
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v0

    .line 279
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 280
    if-nez v1, :cond_1

    .line 281
    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_1

    .line 279
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 285
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    and-int/lit8 v3, p1, 0x40

    if-eqz v3, :cond_2

    .line 291
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/am/SamsungActivityManagerService;->isKeepAliveTask(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    .line 289
    if-nez v3, :cond_0

    .line 295
    :cond_2
    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/SamsungActivityManagerService;->removeTaskByIdIfNeededLocked(Lcom/android/server/am/TaskRecord;I)V

    goto :goto_1

    .line 297
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public removeGrabedIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord$Key;)V
    .locals 1
    .param p1, "inKey"    # Lcom/android/server/am/PendingIntentRecord$Key;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mGrabedIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    return-void
.end method

.method public removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->removeProcessNameUnsafelyLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 344
    .local v0, "removed":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-eq v0, p3, :cond_0

    iget v1, p3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v1, :cond_0

    .line 345
    const-string v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeProcessNameSafelyLocked: remove unintended!! removed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    :cond_0
    return-void
.end method

.method removeTaskByIdIfNeededLocked(Lcom/android/server/am/TaskRecord;I)V
    .locals 7
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-eq v4, v5, :cond_0

    .line 302
    const/4 v0, 0x0

    .line 305
    .local v0, "hasProfile":Z
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/UserController;->getProfileIds(I)Ljava/util/Set;

    move-result-object v1

    .line 306
    .local v1, "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 309
    return-void

    .line 313
    .end local v0    # "hasProfile":Z
    .end local v1    # "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    and-int/lit8 v6, p2, 0x10

    if-nez v6, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZZ)Z

    .line 300
    return-void
.end method

.method public removeTaskLocked(II)Z
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 262
    and-int/lit8 v1, p2, 0x8

    if-nez v1, :cond_0

    .line 263
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->removeAllRecentTasksLocked(I)Z

    move-result v1

    return v1

    .line 268
    :cond_1
    and-int/lit8 v1, p2, 0x10

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 269
    .local v0, "removeFromRecents":Z
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 271
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 269
    :cond_2
    return v1

    .line 268
    .end local v0    # "removeFromRecents":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "removeFromRecents":Z
    goto :goto_0

    .line 270
    :catchall_0
    move-exception v1

    .line 271
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_4

    .line 272
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 270
    :cond_4
    throw v1
.end method

.method public resetActivityKeepAlive(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    return-void
.end method

.method public resumeVSStackIfNeeded(Lcom/android/server/am/ActivityStack;)V
    .locals 4
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v3, 0x0

    .line 2280
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v1, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v1, "resumeVS"

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V

    .line 2283
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v3, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 2279
    :cond_0
    return-void
.end method

.method public saveDumpLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1753
    const-string v0, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "systemui died mApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,pers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->saveDumpRunnable:Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;

    iput-object p2, v0, Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;->e:Ljava/lang/Exception;

    .line 1756
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->saveDumpRunnable:Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "systemui died mApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,pers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;->msg:Ljava/lang/String;

    .line 1758
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1759
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "saveDump"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1760
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1762
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->saveDumpRunnable:Lcom/android/server/am/SamsungActivityManagerService$SaveDumpRunnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1752
    return-void
.end method

.method public saveDumpOnceLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1743
    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAlreadyDumpOnce:Z

    if-nez v0, :cond_0

    .line 1744
    return-void

    .line 1747
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAlreadyDumpOnce:Z

    .line 1748
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/SamsungActivityManagerService;->saveDumpLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/Exception;)V

    .line 1742
    return-void
.end method

.method public scheduleTrimApplicaions(Z)V
    .locals 2
    .param p1, "scheduled"    # Z

    .prologue
    .line 1551
    sget-object v1, Lcom/android/server/am/SamsungActivityManagerService;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1550
    return-void

    .line 1551
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V
    .locals 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I

    .prologue
    .line 582
    iget-object v9, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-virtual {v9, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 583
    .local v5, "state":Ljava/lang/Boolean;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 585
    :goto_0
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_7

    const/4 v0, 0x1

    .line 586
    .local v0, "concernFront":Z
    :goto_1
    and-int/lit8 v9, p2, 0x10

    if-eqz v9, :cond_8

    const/4 v4, 0x1

    .line 587
    .local v4, "removed":Z
    :goto_2
    and-int/lit16 v9, p2, 0x100

    if-eqz v9, :cond_9

    const/4 v6, 0x1

    .line 589
    .local v6, "taskDescriptionSet":Z
    :goto_3
    iget-object v9, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v9

    if-lez v9, :cond_d

    .line 590
    iget-object v9, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 591
    .local v2, "i":I
    :cond_0
    :goto_4
    if-lez v2, :cond_c

    .line 592
    add-int/lit8 v2, v2, -0x1

    .line 594
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/ITaskWatcher;

    .line 595
    .local v7, "watcher":Lcom/samsung/android/app/ITaskWatcher;
    if-eqz v6, :cond_2

    .line 596
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_1

    .line 597
    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "All Sending onTaskDescriptionSet for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_1
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskDescriptionSet(I)V

    .line 601
    :cond_2
    if-eqz v0, :cond_4

    .line 602
    if-eqz v3, :cond_a

    .line 603
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_3

    .line 604
    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "All Sending onTaskToFront for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_3
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskToFront(I)V

    .line 614
    :cond_4
    :goto_5
    if-eqz v4, :cond_0

    .line 615
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_5

    .line 616
    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "All Sending onTaskRemoved for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_5
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskRemoved(I)V

    goto/16 :goto_4

    .line 620
    .end local v7    # "watcher":Lcom/samsung/android/app/ITaskWatcher;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto/16 :goto_4

    .line 583
    .end local v0    # "concernFront":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v4    # "removed":Z
    .end local v6    # "taskDescriptionSet":Z
    :cond_6
    const/4 v3, 0x0

    .local v3, "prevFront":Z
    goto/16 :goto_0

    .line 585
    .end local v3    # "prevFront":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "concernFront":Z
    goto/16 :goto_1

    .line 586
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "removed":Z
    goto/16 :goto_2

    .line 587
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "taskDescriptionSet":Z
    goto/16 :goto_3

    .line 608
    .restart local v2    # "i":I
    .restart local v7    # "watcher":Lcom/samsung/android/app/ITaskWatcher;
    :cond_a
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_b

    .line 609
    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "All Sending onTaskToBack for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_b
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskToBack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 625
    .end local v7    # "watcher":Lcom/samsung/android/app/ITaskWatcher;
    :cond_c
    iget-object v9, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 628
    .end local v2    # "i":I
    :cond_d
    iget-object v9, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v9, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RemoteCallbackList;

    .line 629
    .local v8, "watcherList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/samsung/android/app/ITaskWatcher;>;"
    if-nez v8, :cond_e

    .line 630
    return-void

    .line 632
    :cond_e
    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 633
    .restart local v2    # "i":I
    :cond_f
    :goto_6
    if-lez v2, :cond_17

    .line 634
    add-int/lit8 v2, v2, -0x1

    .line 636
    :try_start_1
    invoke-virtual {v8, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/ITaskWatcher;

    .line 637
    .restart local v7    # "watcher":Lcom/samsung/android/app/ITaskWatcher;
    if-eqz v6, :cond_11

    .line 638
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_10

    .line 639
    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending onTaskDescriptionSet for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_10
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskDescriptionSet(I)V

    .line 643
    :cond_11
    if-eqz v0, :cond_13

    .line 644
    if-eqz v3, :cond_15

    .line 645
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_12

    .line 646
    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending onTaskToFront for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_12
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskToFront(I)V

    .line 656
    :cond_13
    :goto_7
    if-eqz v4, :cond_f

    .line 657
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_14

    .line 658
    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending onTaskRemoved for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_14
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskRemoved(I)V

    goto/16 :goto_6

    .line 662
    .end local v7    # "watcher":Lcom/samsung/android/app/ITaskWatcher;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto/16 :goto_6

    .line 650
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v7    # "watcher":Lcom/samsung/android/app/ITaskWatcher;
    :cond_15
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_16

    .line 651
    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending onTaskToBack for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_16
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskToBack(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 667
    .end local v7    # "watcher":Lcom/samsung/android/app/ITaskWatcher;
    :cond_17
    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 669
    if-eqz v4, :cond_19

    .line 670
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_18

    .line 671
    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Watched task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has been removed."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_18
    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->kill()V

    .line 674
    iget-object v9, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v9, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget-object v9, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-virtual {v9, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_19
    return-void
.end method

.method public setCaller(Ljava/lang/String;)V
    .locals 1
    .param p1, "proc_str"    # Ljava/lang/String;

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangeDump:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDump;->setCaller(Ljava/lang/String;)V

    .line 1631
    return-void
.end method

.method public setCustomImage(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "rotation"    # I

    .prologue
    const/4 v4, 0x0

    .line 802
    const/4 v7, 0x0

    .line 803
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v8, 0x0

    .line 804
    .local v8, "result":Z
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    .line 805
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    monitor-exit v0

    .line 808
    if-nez v7, :cond_0

    .line 809
    return v8

    .line 804
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 813
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iget v3, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    :cond_1
    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->setCustomImage(Ljava/lang/String;Landroid/os/Bundle;ILjava/io/FileDescriptor;I)Z

    move-result v8

    .line 814
    .local v8, "result":Z
    if-eqz p2, :cond_2

    .line 815
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 821
    .end local v8    # "result":Z
    :cond_2
    :goto_0
    return v8

    .line 817
    :catch_0
    move-exception v6

    .line 818
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCustomImageForPackage(Landroid/content/ComponentName;ILandroid/os/ParcelFileDescriptor;I)Z
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "taskUserId"    # I
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "rotation"    # I

    .prologue
    const/4 v4, 0x0

    .line 826
    const/4 v9, 0x0

    .line 828
    .local v9, "result":Z
    const/4 v8, 0x0

    .line 831
    .local v8, "info":Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 836
    .local v8, "info":Landroid/content/pm/ActivityInfo;
    if-nez v8, :cond_0

    .line 837
    return v9

    .line 832
    .local v8, "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v6

    .line 833
    .local v6, "e":Landroid/os/RemoteException;
    return v9

    .line 841
    .end local v6    # "e":Landroid/os/RemoteException;
    .local v8, "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    :cond_1
    move v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->setCustomImage(Ljava/lang/String;Landroid/os/Bundle;ILjava/io/FileDescriptor;I)Z

    move-result v9

    .line 842
    .local v9, "result":Z
    if-eqz p3, :cond_2

    .line 843
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 849
    .end local v9    # "result":Z
    :cond_2
    :goto_0
    return v9

    .line 845
    :catch_1
    move-exception v7

    .line 846
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCustomStartingWindowParams(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungStartingWindowManager;->setCustomStartingWindowParams(Landroid/os/Bundle;)Z

    .line 875
    const/4 v0, 0x1

    return v0
.end method

.method public setHideNonVSStacks(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 2148
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 2149
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mHideNonVSStacks:Z

    .line 2150
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2147
    return-void

    .line 2148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 239
    sget-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v0}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SamsungWindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    .line 241
    sget-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_STARTING_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v0}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SamsungStartingWindowManager;

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungStartingWindowManager:Lcom/android/server/wm/SamsungStartingWindowManager;

    .line 246
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 247
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setSystemService(Ljava/lang/Object;)V

    .line 248
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService;->setSystemService(Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->getVSManager()Lcom/samsung/android/server/virtualspace/VSManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->getVSManager()Lcom/samsung/android/server/virtualspace/VSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/virtualspace/VSManager;->setSamsungActivityManager(Lcom/android/server/am/SamsungActivityManagerService;)V

    .line 237
    :cond_0
    return-void
.end method

.method public skipProcessContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 352
    .local v0, "curApp":Lcom/android/server/am/ProcessRecord;
    if-eq v0, p1, :cond_0

    .line 354
    const-string v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipProcessContentProviderPublishTimedOutLocked: true for invalid app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v1, 0x1

    return v1

    .line 357
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public skipReusedAppNotRespondingProc(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "annotation"    # Ljava/lang/String;

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 329
    .local v1, "result":Z
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAppNotRespodingProcs:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 331
    .local v0, "initialPid":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    monitor-exit v3

    .line 333
    if-eqz v1, :cond_0

    .line 334
    const-string v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skipReusedAppNotRespondingProc: return true for app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", initialPid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    return v1

    .line 331
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 329
    .end local v0    # "initialPid":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public trimOnlyThumbnailForTaskLocked(Lcom/android/server/am/RecentTasks;Lcom/android/server/am/TaskRecord;I)V
    .locals 5
    .param p1, "recent"    # Lcom/android/server/am/RecentTasks;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "max"    # I

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v0

    .line 365
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 366
    invoke-virtual {p1, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 367
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    if-eq p2, v2, :cond_0

    .line 368
    iget v3, p2, Lcom/android/server/am/TaskRecord;->userId:I

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, v4, :cond_1

    .line 365
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_1
    if-le v1, p3, :cond_0

    .line 372
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->freeLastThumbnail()V

    goto :goto_1

    .line 363
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void
.end method

.method unregisterAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V
    .locals 1
    .param p1, "watcher"    # Lcom/samsung/android/app/ITaskWatcher;

    .prologue
    .line 574
    if-eqz p1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 572
    :cond_0
    return-void
.end method

.method public unregisterTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;IIZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "watcher"    # Lcom/samsung/android/app/ITaskWatcher;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "allowed"    # Z

    .prologue
    const/4 v4, -0x1

    .line 529
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v1, :cond_0

    .line 530
    const-string v2, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterTaskWatcher: taskId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p1, v4, :cond_2

    const-string v1, "ALL"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", watcher="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " callingUid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " allowed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    if-eqz p5, :cond_4

    .line 534
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 535
    if-ne p1, v4, :cond_3

    .line 536
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->unregisterAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v2

    .line 527
    return-void

    .line 530
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 538
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 539
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_1

    .line 540
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->unregisterTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 534
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 545
    :cond_4
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot unregisterTaskWatcher from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method unregisterTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "watcher"    # Lcom/samsung/android/app/ITaskWatcher;

    .prologue
    .line 552
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 553
    .local v2, "watcherList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/samsung/android/app/ITaskWatcher;>;"
    if-eqz v2, :cond_0

    .line 554
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 556
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 557
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_0
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 563
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 564
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    .line 565
    invoke-virtual {p0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->resetActivityKeepAlive(Lcom/android/server/am/ActivityRecord;)V

    .line 562
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 550
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-void
.end method

.method public updateOomAdj()V
    .locals 2

    .prologue
    .line 2094
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 2095
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2093
    return-void

    .line 2094
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updatePreBootCscFile()V
    .locals 7

    .prologue
    .line 1600
    const/4 v3, 0x0

    .line 1601
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 1603
    .local v0, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v5, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1604
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x400

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1605
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_2
    sget-object v5, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    .end local v0    # "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1610
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1611
    if-eqz v1, :cond_0

    .line 1613
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .local v0, "dos":Ljava/io/DataOutputStream;
    move-object v3, v4

    .line 1599
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 1614
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 1616
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1606
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v0, "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 1607
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v5, "SamsungActivityManager"

    const-string v6, "Failure writing last done pre-boot receivers"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1608
    sget-object v5, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1610
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1611
    if-eqz v0, :cond_1

    .line 1613
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 1614
    :catch_2
    move-exception v2

    .line 1616
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1609
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1610
    :goto_3
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1611
    if-eqz v0, :cond_2

    .line 1613
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1609
    :cond_2
    :goto_4
    throw v5

    .line 1614
    :catch_3
    move-exception v2

    .line 1616
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1609
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .local v0, "dos":Ljava/io/DataOutputStream;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1606
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v0, "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .local v0, "dos":Ljava/io/DataOutputStream;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public updatedTopTask(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v4, 0x0

    .line 2201
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v2, :cond_2

    .line 2203
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne p2, v2, :cond_1

    const/4 v1, 0x1

    .line 2204
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    if-eq v2, v1, :cond_0

    .line 2205
    iput-boolean v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    .line 2206
    const-string v2, "sys.vs.visible"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V

    .line 2210
    :cond_0
    return-void

    .line 2203
    .end local v1    # "visible":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_0

    .line 2213
    .end local v1    # "visible":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/SamsungWindowManagerService;->inVSMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2214
    return-void

    .line 2216
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v0

    .line 2217
    .local v0, "displayId":I
    if-nez v0, :cond_4

    .line 2218
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-eq v2, v3, :cond_5

    .line 2221
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0, v2, v4}, Lcom/android/server/am/SamsungActivityManagerService;->clearStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 2222
    const/4 p2, 0x0

    .line 2227
    .end local p2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    if-eqz p2, :cond_6

    iget v2, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_1
    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/SamsungWindowManagerService;->notifyUpdatedDisplayTopTask(II)V

    .line 2200
    return-void

    .line 2223
    .restart local p2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSStack:Lcom/android/server/am/ActivityStack;

    if-eq p1, v2, :cond_4

    .line 2224
    return-void

    .line 2227
    .end local p2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    const/4 v2, -0x1

    goto :goto_1
.end method
