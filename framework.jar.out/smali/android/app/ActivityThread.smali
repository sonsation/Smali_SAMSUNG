.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$ActivityConfigChangeData;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$DropBoxReporter;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$EventLoggingReporter;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$NewIntentData;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ProviderKey;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$RequestAssistContextExtras;,
        Landroid/app/ActivityThread$ResultData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$StopInfo;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;
    }
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x4

.field private static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_BROADCAST:Z = false

.field public static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_MEMORY_TRIM:Z = false

.field static final DEBUG_MESSAGES:Z = false

.field private static final DEBUG_ORDER:Z = false

.field private static final DEBUG_PROVIDER:Z = false

.field private static final DEBUG_RESULTS:Z = false

.field private static final DEBUG_SERVICE:Z = false

.field private static final DONT_REPORT:I = 0x2

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s"

.field private static final HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field private static final IS_OVERLAY_THEMES_ENABLED:Z = true

.field private static final LOG_AM_ON_PAUSE_CALLED:I = 0x7545

.field private static final LOG_AM_ON_RESUME_CALLED:I = 0x7546

.field private static final LOG_AM_ON_STOP_CALLED:I = 0x7561

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final ONE_COUNT_COLUMN_HEADER:Ljava/lang/String; = "%21s %8s"

.field private static final REPORT_TO_ACTIVITY:Z = true

.field public static final SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field private static final USER_LEAVING:I = 0x1

.field static final localLOGV:Z

.field public static sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

.field private static volatile sCurrentActivityThread:Landroid/app/ActivityThread;

.field private static final sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static sFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

.field static volatile sMainThreadHandler:Landroid/os/Handler;

.field static volatile sPackageManager:Landroid/content/pm/IPackageManager;

.field private static final sThemeSync:Ljava/lang/Object;


# instance fields
.field final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field private mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

.field final mBackupAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field mCompatConfiguration:Landroid/content/res/Configuration;

.field mConfiguration:Landroid/content/res/Configuration;

.field mCoreSettings:Landroid/os/Bundle;

.field mCurDefaultDisplayDpi:I

.field mDensityCompatMode:Z

.field private mDssScale:F

.field final mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field mGcIdlerScheduled:Z

.field final mH:Landroid/app/ActivityThread$H;

.field mInitialApplication:Landroid/app/Application;

.field mInstrumentation:Landroid/app/Instrumentation;

.field mInstrumentationAppDir:Ljava/lang/String;

.field mInstrumentationLibDir:Ljava/lang/String;

.field mInstrumentationPackageName:Ljava/lang/String;

.field mInstrumentationSplitAppDirs:[Ljava/lang/String;

.field mInstrumentedAppDir:Ljava/lang/String;

.field mInstrumentedLibDir:Ljava/lang/String;

.field mInstrumentedSplitAppDirs:[Ljava/lang/String;

.field mJitEnabled:Z

.field mLastAssistStructures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/assist/AssistStructure;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastSessionId:I

.field mLifecycleSeq:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation
.end field

.field final mLocalProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalProvidersByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLooper:Landroid/os/Looper;

.field private mMainThreadConfig:Landroid/content/res/Configuration;

.field private mNavigationBarColor:I

.field mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

.field mNumVisibleActivities:I

.field final mOnPauseListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingConfiguration:Landroid/content/res/Configuration;

.field mProfiler:Landroid/app/ActivityThread$Profiler;

.field final mProviderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProviderRefCountMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mResourcePackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourcesManager:Landroid/app/ResourcesManager;

.field final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field mSomeActivitiesChanged:Z

.field private mSystemContext:Landroid/app/ContextImpl;

.field mSystemThread:Z

.field mThemeAppIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailCanvas:Landroid/graphics/Canvas;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method static synthetic -get0(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/app/ActivityThread;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/ActivityThread;->getLifecycleSeq()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->dumpGraphicsInfo(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic -wrap10(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpContextRelationInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic -wrap13(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap14(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap15(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method static synthetic -wrap16(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInMultiWindowMode"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleMultiWindowModeChanged(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic -wrap17(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$NewIntentData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V

    return-void
.end method

.method static synthetic -wrap18(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z
    .param p6, "seq"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZIZI)V

    return-void
.end method

.method static synthetic -wrap19(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInPipMode"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handlePictureInPictureModeChanged(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/ActivityThread;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleActivityDisplayIdChanged(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic -wrap20(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static synthetic -wrap21(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 0
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    return-void
.end method

.method static synthetic -wrap22(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V
    .locals 0
    .param p1, "res"    # Landroid/app/ActivityThread$ResultData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V

    return-void
.end method

.method static synthetic -wrap23(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static synthetic -wrap24(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap25(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mwSettings"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetMultiWindowSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap26(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic -wrap27(Landroid/app/ActivityThread;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityThread;->handleStartBinderTracking()V

    return-void
.end method

.method static synthetic -wrap28(Landroid/app/ActivityThread;Landroid/os/IBinder;ZII)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z
    .param p3, "configChanges"    # I
    .param p4, "seq"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZII)V

    return-void
.end method

.method static synthetic -wrap29(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static synthetic -wrap30(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap31(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic -wrap32(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    return-void
.end method

.method static synthetic -wrap33(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic -wrap34(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap35(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic -wrap36(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method static synthetic -wrap37(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic -wrap38(Landroid/app/ActivityThread;ILjava/lang/Object;III)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "seq"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;III)V

    return-void
.end method

.method static synthetic -wrap39(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/os/LocaleList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newLocaleList"    # Landroid/os/LocaleList;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 347
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sThemeSync:Ljava/lang/Object;

    .line 354
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    .line 355
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->sFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    .line 3256
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    .line 204
    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ApplicationThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 246
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 247
    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$H;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 248
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 251
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 253
    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    iput-object v0, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 267
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    .line 271
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 272
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 273
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 274
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 275
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 276
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 277
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 278
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 279
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 280
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 292
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 291
    iput-object v0, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 294
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 293
    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    iput-object v0, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 297
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 303
    iput v2, p0, Landroid/app/ActivityThread;->mLifecycleSeq:I

    .line 333
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 332
    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 335
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 334
    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 337
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 336
    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 339
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 338
    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    .line 342
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 341
    iput-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 344
    new-instance v0, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 345
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 348
    iput-object v1, p0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    .line 352
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 358
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/ActivityThread;->mDssScale:F

    .line 2011
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 3970
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 3971
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 3972
    iput-object v1, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 3973
    iput-object v1, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 4415
    const v0, -0xa0a0b

    iput v0, p0, Landroid/app/ActivityThread;->mNavigationBarColor:I

    .line 2262
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2261
    return-void
.end method

.method private attach(Z)V
    .locals 7
    .param p1, "system"    # Z

    .prologue
    .line 6404
    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    .line 6405
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 6406
    if-nez p1, :cond_0

    .line 6407
    new-instance v4, Landroid/app/ActivityThread$1;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Landroid/view/ViewRootImpl;->addFirstDrawHandler(Ljava/lang/Runnable;)V

    .line 6413
    const-string/jumbo v4, "<pre-initialized>"

    .line 6414
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 6413
    invoke-static {v4, v5}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 6415
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 6416
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 6418
    .local v3, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6423
    new-instance v4, Landroid/app/ActivityThread$2;

    invoke-direct {v4, p0, v3}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V

    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->addGcWatcher(Ljava/lang/Runnable;)V

    .line 6467
    .end local v3    # "mgr":Landroid/app/IActivityManager;
    :goto_0
    new-instance v4, Landroid/app/ActivityThread$DropBoxReporter;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$DropBoxReporter;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Llibcore/io/DropBox;->setReporter(Llibcore/io/DropBox$Reporter;)V

    .line 6469
    new-instance v4, Landroid/app/ActivityThread$3;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$3;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 6403
    return-void

    .line 6419
    .restart local v3    # "mgr":Landroid/app/IActivityManager;
    :catch_0
    move-exception v2

    .line 6420
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 6447
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v3    # "mgr":Landroid/app/IActivityManager;
    :cond_0
    const-string/jumbo v4, "system_process"

    .line 6448
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 6447
    invoke-static {v4, v5}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 6450
    :try_start_1
    new-instance v4, Landroid/app/Instrumentation;

    invoke-direct {v4}, Landroid/app/Instrumentation;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 6452
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 6451
    invoke-static {p0, v4}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 6453
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v4, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 6456
    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->getInstance()Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5, v0}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;->createContext(Landroid/content/Context;Landroid/content/Context;)V

    .line 6459
    iget-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6460
    .end local v0    # "context":Landroid/app/ContextImpl;
    :catch_1
    move-exception v1

    .line 6461
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    .line 6462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to instantiate Application():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6461
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    .line 4936
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 4937
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 4938
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4939
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 4940
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 4941
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 4940
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 4935
    :goto_0
    return-void

    .line 4943
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static checkAndUpdateLifecycleSeq(ILandroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)Z
    .locals 2
    .param p0, "seq"    # I
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 4317
    if-nez p1, :cond_0

    .line 4318
    return v1

    .line 4320
    :cond_0
    iget v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    if-ge p0, v0, :cond_1

    .line 4323
    const/4 v0, 0x0

    return v0

    .line 4325
    :cond_1
    iput p0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    .line 4326
    return v1
.end method

.method static final cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 5
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p1, "force"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3802
    iget-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    .line 3805
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v1, :cond_1

    .line 3806
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 3807
    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 3806
    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3808
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 3809
    .local v0, "wtoken":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 3810
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    .line 3811
    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Activity"

    .line 3810
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3814
    .end local v0    # "wtoken":Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 3815
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 3816
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 3801
    return-void

    .line 3803
    :cond_2
    return-void
.end method

.method private createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/Activity;)Landroid/content/Context;
    .locals 12
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x0

    .line 2937
    const/4 v3, 0x0

    .line 2939
    .local v3, "displayId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v9, v10}, Landroid/app/IActivityManager;->getActivityDisplayId(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2945
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v11, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 2944
    invoke-static {p0, v9, v10, v3, v11}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 2946
    .local v0, "appContext":Landroid/app/ContextImpl;
    invoke-virtual {v0, p2}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 2947
    move-object v1, v0

    .line 2949
    .local v1, "baseContext":Landroid/content/Context;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    .line 2953
    .local v4, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const-string/jumbo v9, "debug.second-display.pkg"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2954
    .local v7, "pkgName":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2965
    :cond_0
    :goto_0
    return-object v1

    .line 2940
    .end local v0    # "appContext":Landroid/app/ContextImpl;
    .end local v1    # "baseContext":Landroid/content/Context;
    .end local v4    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v7    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 2941
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 2955
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v0    # "appContext":Landroid/app/ContextImpl;
    .restart local v1    # "baseContext":Landroid/content/Context;
    .restart local v4    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v7    # "pkgName":Ljava/lang/String;
    :cond_1
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v9, v9, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 2954
    if-eqz v9, :cond_0

    .line 2956
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v9

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_0

    aget v6, v9, v8

    .line 2957
    .local v6, "id":I
    if-eqz v6, :cond_2

    .line 2959
    invoke-virtual {v0, v6}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v2

    .line 2960
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v0, v2}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 2956
    .end local v2    # "display":Landroid/view/Display;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method private static createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "override"    # Landroid/content/res/Configuration;

    .prologue
    .line 5028
    if-nez p1, :cond_0

    .line 5029
    return-object p0

    .line 5031
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5032
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 5033
    return-object v0
.end method

.method private createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    .line 3976
    iget-object v5, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 3978
    .local v5, "thumbnail":Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 3979
    :try_start_0
    iget v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 3981
    .local v6, "w":I
    if-gez v6, :cond_4

    .line 3982
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3983
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x1050002

    .line 3984
    .local v7, "wId":I
    const v3, 0x1050001

    .line 3985
    .local v3, "hId":I
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 3986
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "h":I
    iput v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 3992
    .end local v3    # "hId":I
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v7    # "wId":I
    :goto_0
    if-lez v6, :cond_0

    if-lez v2, :cond_0

    .line 3993
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 3994
    sget-object v9, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 3993
    invoke-static {v8, v6, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3995
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 3999
    .end local v2    # "h":I
    .end local v6    # "w":I
    :cond_0
    if-eqz v5, :cond_3

    .line 4000
    iget-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 4001
    .local v0, "cv":Landroid/graphics/Canvas;
    if-nez v0, :cond_1

    .line 4002
    new-instance v0, Landroid/graphics/Canvas;

    .end local v0    # "cv":Landroid/graphics/Canvas;
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .restart local v0    # "cv":Landroid/graphics/Canvas;
    iput-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 4005
    :cond_1
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4006
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v5, v0}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 4007
    iput-object v5, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 4008
    const/4 v5, 0x0

    .line 4010
    .end local v5    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4023
    .end local v0    # "cv":Landroid/graphics/Canvas;
    :cond_3
    :goto_1
    return-object v5

    .line 3988
    .restart local v5    # "thumbnail":Landroid/graphics/Bitmap;
    .restart local v6    # "w":I
    :cond_4
    iget v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "h":I
    goto :goto_0

    .line 4013
    .end local v2    # "h":I
    .end local v5    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v6    # "w":I
    :catch_0
    move-exception v1

    .line 4014
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 4015
    new-instance v8, Ljava/lang/RuntimeException;

    .line 4016
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to create thumbnail of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4017
    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    .line 4016
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4018
    const-string/jumbo v10, ": "

    .line 4016
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4018
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4016
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4015
    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 4020
    :cond_5
    const/4 v5, 0x0

    .local v5, "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public static currentActivityThread()Landroid/app/ActivityThread;
    .locals 1

    .prologue
    .line 1969
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1995
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1996
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    :cond_0
    return-object v1
.end method

.method public static currentOpPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1977
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1978
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1979
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1978
    :cond_0
    return-object v1
.end method

.method public static currentPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1983
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1984
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v2, :cond_0

    .line 1985
    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1984
    :cond_0
    return-object v1
.end method

.method public static currentProcessName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1989
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1990
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v2, :cond_0

    .line 1991
    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 1990
    :cond_0
    return-object v1
.end method

.method private deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3058
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3059
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3060
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/ReferrerIntent;

    .line 3061
    .local v2, "intent":Lcom/android/internal/content/ReferrerIntent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/content/ReferrerIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3062
    invoke-virtual {v2}, Lcom/android/internal/content/ReferrerIntent;->prepareToEnterProcess()V

    .line 3063
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 3064
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V

    .line 3059
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3057
    .end local v2    # "intent":Lcom/android/internal/content/ReferrerIntent;
    :cond_0
    return-void
.end method

.method private deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4458
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 4459
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4460
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResultInfo;

    .line 4462
    .local v3, "ri":Landroid/app/ResultInfo;
    :try_start_0
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 4463
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4464
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 4468
    :cond_0
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v3, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    .line 4469
    iget v6, v3, Landroid/app/ResultInfo;->mRequestCode:I

    iget v7, v3, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v8, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    .line 4468
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4459
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4470
    :catch_0
    move-exception v1

    .line 4471
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4472
    new-instance v4, Ljava/lang/RuntimeException;

    .line 4473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failure delivering result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4474
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 4473
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4475
    const-string/jumbo v6, ": "

    .line 4473
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4475
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4473
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4472
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4457
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ri":Landroid/app/ResultInfo;
    :cond_2
    return-void
.end method

.method private native dumpGraphicsInfo(Ljava/io/FileDescriptor;)V
.end method

.method public static dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V
    .locals 26
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p2, "checkin"    # Z
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "pid"    # I
    .param p7, "processName"    # Ljava/lang/String;
    .param p8, "nativeMax"    # J
    .param p10, "nativeAllocated"    # J
    .param p12, "nativeFree"    # J
    .param p14, "dalvikMax"    # J
    .param p16, "dalvikAllocated"    # J
    .param p18, "dalvikFree"    # J

    .prologue
    .line 2376
    if-eqz p2, :cond_3

    .line 2381
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2382
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2383
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2386
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2387
    move-object/from16 v0, p0

    move-wide/from16 v1, p14

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2388
    const-string/jumbo v21, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2389
    add-long v22, p8, p14

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2392
    move-object/from16 v0, p0

    move-wide/from16 v1, p10

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2393
    move-object/from16 v0, p0

    move-wide/from16 v1, p16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2394
    const-string/jumbo v21, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2395
    add-long v22, p10, p16

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2398
    move-object/from16 v0, p0

    move-wide/from16 v1, p12

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2399
    move-object/from16 v0, p0

    move-wide/from16 v1, p18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2400
    const-string/jumbo v21, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2401
    add-long v22, p12, p18

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2404
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2405
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2406
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2407
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2410
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2411
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2412
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2413
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2416
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2417
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2418
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2419
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2422
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2423
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2424
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2425
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2428
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2429
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2430
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2431
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2434
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2435
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2436
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2437
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2440
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2441
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2442
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2443
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2446
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 2447
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2448
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2449
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2450
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2459
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v21, 0x11

    move/from16 v0, v21

    if-ge v4, v0, :cond_2

    .line 2460
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2461
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2462
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2463
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2464
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2465
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2466
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2467
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2468
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 2469
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2459
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2452
    .end local v4    # "i":I
    :cond_0
    const-string/jumbo v21, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2453
    const-string/jumbo v21, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2454
    const-string/jumbo v21, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2455
    const-string/jumbo v21, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2471
    .restart local v4    # "i":I
    :cond_1
    const-string/jumbo v21, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 2474
    :cond_2
    return-void

    .line 2477
    .end local v4    # "i":I
    :cond_3
    if-nez p5, :cond_21

    .line 2478
    if-eqz p3, :cond_9

    .line 2479
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v21, 0xb

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v21, ""

    const/16 v24, 0x0

    aput-object v21, v23, v24

    const-string/jumbo v21, "Pss"

    const/16 v24, 0x1

    aput-object v21, v23, v24

    const-string/jumbo v21, "Pss"

    const/16 v24, 0x2

    aput-object v21, v23, v24

    const-string/jumbo v21, "Shared"

    const/16 v24, 0x3

    aput-object v21, v23, v24

    const-string/jumbo v21, "Private"

    const/16 v24, 0x4

    aput-object v21, v23, v24

    .line 2480
    const-string/jumbo v21, "Shared"

    const/16 v24, 0x5

    aput-object v21, v23, v24

    const-string/jumbo v21, "Private"

    const/16 v24, 0x6

    aput-object v21, v23, v24

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    const-string/jumbo v21, "SwapPss"

    :goto_3
    const/16 v24, 0x7

    aput-object v21, v23, v24

    .line 2481
    const-string/jumbo v21, "Heap"

    const/16 v24, 0x8

    aput-object v21, v23, v24

    const-string/jumbo v21, "Heap"

    const/16 v24, 0x9

    aput-object v21, v23, v24

    const-string/jumbo v21, "Heap"

    const/16 v24, 0xa

    aput-object v21, v23, v24

    .line 2479
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2482
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v22, 0xb

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const-string/jumbo v23, ""

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const-string/jumbo v23, "Total"

    const/16 v24, 0x1

    aput-object v23, v22, v24

    const-string/jumbo v23, "Clean"

    const/16 v24, 0x2

    aput-object v23, v22, v24

    const-string/jumbo v23, "Dirty"

    const/16 v24, 0x3

    aput-object v23, v22, v24

    const-string/jumbo v23, "Dirty"

    const/16 v24, 0x4

    aput-object v23, v22, v24

    .line 2483
    const-string/jumbo v23, "Clean"

    const/16 v24, 0x5

    aput-object v23, v22, v24

    const-string/jumbo v23, "Clean"

    const/16 v24, 0x6

    aput-object v23, v22, v24

    const-string/jumbo v23, "Dirty"

    const/16 v24, 0x7

    aput-object v23, v22, v24

    .line 2484
    const-string/jumbo v23, "Size"

    const/16 v24, 0x8

    aput-object v23, v22, v24

    const-string/jumbo v23, "Alloc"

    const/16 v24, 0x9

    aput-object v23, v22, v24

    const-string/jumbo v23, "Free"

    const/16 v24, 0xa

    aput-object v23, v22, v24

    .line 2482
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2485
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v22, 0xb

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const-string/jumbo v23, ""

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x1

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x2

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x3

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x4

    aput-object v23, v22, v24

    .line 2486
    const-string/jumbo v23, "------"

    const/16 v24, 0x5

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x6

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x7

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x8

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x9

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0xa

    aput-object v23, v22, v24

    .line 2485
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2487
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v21, 0xb

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v21, "Native Heap"

    const/16 v24, 0x0

    aput-object v21, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x1

    aput-object v21, v23, v24

    .line 2488
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x2

    aput-object v21, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x3

    aput-object v21, v23, v24

    .line 2489
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x4

    aput-object v21, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x5

    aput-object v21, v23, v24

    .line 2490
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x6

    aput-object v21, v23, v24

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 2491
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    move/from16 v21, v0

    .line 2490
    :goto_4
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x7

    aput-object v21, v23, v24

    .line 2492
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x8

    aput-object v21, v23, v24

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x9

    aput-object v21, v23, v24

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0xa

    aput-object v21, v23, v24

    .line 2487
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2493
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v21, 0xb

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v21, "Dalvik Heap"

    const/16 v24, 0x0

    aput-object v21, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x1

    aput-object v21, v23, v24

    .line 2494
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x2

    aput-object v21, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x3

    aput-object v21, v23, v24

    .line 2495
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x4

    aput-object v21, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x5

    aput-object v21, v23, v24

    .line 2496
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x6

    aput-object v21, v23, v24

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 2497
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    move/from16 v21, v0

    .line 2496
    :goto_5
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x7

    aput-object v21, v23, v24

    .line 2498
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x8

    aput-object v21, v23, v24

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x9

    aput-object v21, v23, v24

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0xa

    aput-object v21, v23, v24

    .line 2493
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2521
    :goto_6
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 2522
    .local v15, "otherPss":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    move/from16 v18, v0

    .line 2523
    .local v18, "otherSwappablePss":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v17, v0

    .line 2524
    .local v17, "otherSharedDirty":I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 2525
    .local v14, "otherPrivateDirty":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    move/from16 v16, v0

    .line 2526
    .local v16, "otherSharedClean":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 2527
    .local v13, "otherPrivateClean":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    move/from16 v19, v0

    .line 2528
    .local v19, "otherSwappedOut":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    move/from16 v20, v0

    .line 2530
    .local v20, "otherSwappedOutPss":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    const/16 v21, 0x11

    move/from16 v0, v21

    if-ge v4, v0, :cond_12

    .line 2531
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v7

    .line 2532
    .local v7, "myPss":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v10

    .line 2533
    .local v10, "mySwappablePss":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v9

    .line 2534
    .local v9, "mySharedDirty":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v6

    .line 2535
    .local v6, "myPrivateDirty":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v8

    .line 2536
    .local v8, "mySharedClean":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v5

    .line 2537
    .local v5, "myPrivateClean":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v11

    .line 2538
    .local v11, "mySwappedOut":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v12

    .line 2539
    .local v12, "mySwappedOutPss":I
    if-nez v7, :cond_4

    if-eqz v9, :cond_d

    .line 2542
    :cond_4
    :goto_8
    if-eqz p3, :cond_10

    .line 2543
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v21, 0xb

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x0

    aput-object v21, v23, v24

    .line 2544
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x1

    aput-object v21, v23, v24

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x2

    aput-object v21, v23, v24

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x3

    aput-object v21, v23, v24

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x4

    aput-object v21, v23, v24

    .line 2545
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x5

    aput-object v21, v23, v24

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x6

    aput-object v21, v23, v24

    .line 2546
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    move/from16 v21, v12

    :goto_9
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x7

    aput-object v21, v23, v24

    .line 2547
    const-string/jumbo v21, ""

    const/16 v24, 0x8

    aput-object v21, v23, v24

    const-string/jumbo v21, ""

    const/16 v24, 0x9

    aput-object v21, v23, v24

    const-string/jumbo v21, ""

    const/16 v24, 0xa

    aput-object v21, v23, v24

    .line 2543
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2555
    :goto_a
    sub-int/2addr v15, v7

    .line 2556
    sub-int v18, v18, v10

    .line 2557
    sub-int v17, v17, v9

    .line 2558
    sub-int/2addr v14, v6

    .line 2559
    sub-int v16, v16, v8

    .line 2560
    sub-int/2addr v13, v5

    .line 2561
    sub-int v19, v19, v11

    .line 2562
    sub-int v20, v20, v12

    .line 2530
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 2480
    .end local v4    # "i":I
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "mySwappedOutPss":I
    .end local v13    # "otherPrivateClean":I
    .end local v14    # "otherPrivateDirty":I
    .end local v15    # "otherPss":I
    .end local v16    # "otherSharedClean":I
    .end local v17    # "otherSharedDirty":I
    .end local v18    # "otherSwappablePss":I
    .end local v19    # "otherSwappedOut":I
    .end local v20    # "otherSwappedOutPss":I
    :cond_6
    const-string/jumbo v21, "Swap"

    goto/16 :goto_3

    .line 2491
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move/from16 v21, v0

    goto/16 :goto_4

    .line 2497
    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    move/from16 v21, v0

    goto/16 :goto_5

    .line 2500
    :cond_9
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v21, ""

    const/16 v24, 0x0

    aput-object v21, v23, v24

    const-string/jumbo v21, "Pss"

    const/16 v24, 0x1

    aput-object v21, v23, v24

    const-string/jumbo v21, "Private"

    const/16 v24, 0x2

    aput-object v21, v23, v24

    .line 2501
    const-string/jumbo v21, "Private"

    const/16 v24, 0x3

    aput-object v21, v23, v24

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    const-string/jumbo v21, "SwapPss"

    :goto_b
    const/16 v24, 0x4

    aput-object v21, v23, v24

    .line 2502
    const-string/jumbo v21, "Heap"

    const/16 v24, 0x5

    aput-object v21, v23, v24

    const-string/jumbo v21, "Heap"

    const/16 v24, 0x6

    aput-object v21, v23, v24

    const-string/jumbo v21, "Heap"

    const/16 v24, 0x7

    aput-object v21, v23, v24

    .line 2500
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2503
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const-string/jumbo v23, ""

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const-string/jumbo v23, "Total"

    const/16 v24, 0x1

    aput-object v23, v22, v24

    const-string/jumbo v23, "Dirty"

    const/16 v24, 0x2

    aput-object v23, v22, v24

    .line 2504
    const-string/jumbo v23, "Clean"

    const/16 v24, 0x3

    aput-object v23, v22, v24

    const-string/jumbo v23, "Dirty"

    const/16 v24, 0x4

    aput-object v23, v22, v24

    const-string/jumbo v23, "Size"

    const/16 v24, 0x5

    aput-object v23, v22, v24

    const-string/jumbo v23, "Alloc"

    const/16 v24, 0x6

    aput-object v23, v22, v24

    const-string/jumbo v23, "Free"

    const/16 v24, 0x7

    aput-object v23, v22, v24

    .line 2503
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2505
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v22, 0x9

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const-string/jumbo v23, ""

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x1

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x2

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x3

    aput-object v23, v22, v24

    .line 2506
    const-string/jumbo v23, "------"

    const/16 v24, 0x4

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x5

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x6

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x7

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x8

    aput-object v23, v22, v24

    .line 2505
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2507
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v21, "Native Heap"

    const/16 v24, 0x0

    aput-object v21, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x1

    aput-object v21, v23, v24

    .line 2508
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x2

    aput-object v21, v23, v24

    .line 2509
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x3

    aput-object v21, v23, v24

    .line 2510
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    move/from16 v21, v0

    :goto_c
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x4

    aput-object v21, v23, v24

    .line 2512
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x5

    aput-object v21, v23, v24

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x6

    aput-object v21, v23, v24

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x7

    aput-object v21, v23, v24

    .line 2507
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2513
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v21, "Dalvik Heap"

    const/16 v24, 0x0

    aput-object v21, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x1

    aput-object v21, v23, v24

    .line 2514
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x2

    aput-object v21, v23, v24

    .line 2515
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x3

    aput-object v21, v23, v24

    .line 2516
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    move/from16 v21, v0

    :goto_d
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x4

    aput-object v21, v23, v24

    .line 2518
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x5

    aput-object v21, v23, v24

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x6

    aput-object v21, v23, v24

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x7

    aput-object v21, v23, v24

    .line 2513
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2501
    :cond_a
    const-string/jumbo v21, "Swap"

    goto/16 :goto_b

    .line 2511
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move/from16 v21, v0

    goto/16 :goto_c

    .line 2517
    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    move/from16 v21, v0

    goto :goto_d

    .line 2539
    .restart local v4    # "i":I
    .restart local v5    # "myPrivateClean":I
    .restart local v6    # "myPrivateDirty":I
    .restart local v7    # "myPss":I
    .restart local v8    # "mySharedClean":I
    .restart local v9    # "mySharedDirty":I
    .restart local v10    # "mySwappablePss":I
    .restart local v11    # "mySwappedOut":I
    .restart local v12    # "mySwappedOutPss":I
    .restart local v13    # "otherPrivateClean":I
    .restart local v14    # "otherPrivateDirty":I
    .restart local v15    # "otherPss":I
    .restart local v16    # "otherSharedClean":I
    .restart local v17    # "otherSharedDirty":I
    .restart local v18    # "otherSwappablePss":I
    .restart local v19    # "otherSwappedOut":I
    .restart local v20    # "otherSwappedOutPss":I
    :cond_d
    if-nez v6, :cond_4

    .line 2540
    if-nez v8, :cond_4

    if-nez v5, :cond_4

    .line 2541
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    move/from16 v21, v12

    :goto_e
    if-eqz v21, :cond_5

    goto/16 :goto_8

    :cond_e
    move/from16 v21, v11

    goto :goto_e

    :cond_f
    move/from16 v21, v11

    .line 2546
    goto/16 :goto_9

    .line 2549
    :cond_10
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x0

    aput-object v21, v23, v24

    .line 2550
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x1

    aput-object v21, v23, v24

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x2

    aput-object v21, v23, v24

    .line 2551
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x3

    aput-object v21, v23, v24

    .line 2552
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    move/from16 v21, v12

    :goto_f
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x4

    aput-object v21, v23, v24

    .line 2553
    const-string/jumbo v21, ""

    const/16 v24, 0x5

    aput-object v21, v23, v24

    const-string/jumbo v21, ""

    const/16 v24, 0x6

    aput-object v21, v23, v24

    const-string/jumbo v21, ""

    const/16 v24, 0x7

    aput-object v21, v23, v24

    .line 2549
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_11
    move/from16 v21, v11

    .line 2552
    goto :goto_f

    .line 2566
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "mySwappedOutPss":I
    :cond_12
    if-eqz p3, :cond_18

    .line 2567
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v22, 0xb

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Unknown"

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x2

    aput-object v23, v22, v24

    .line 2568
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x3

    aput-object v23, v22, v24

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x4

    aput-object v23, v22, v24

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x5

    aput-object v23, v22, v24

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x6

    aput-object v23, v22, v24

    .line 2569
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .end local v20    # "otherSwappedOutPss":I
    :goto_10
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x7

    aput-object v23, v22, v24

    .line 2570
    const-string/jumbo v23, ""

    const/16 v24, 0x8

    aput-object v23, v22, v24

    const-string/jumbo v23, ""

    const/16 v24, 0x9

    aput-object v23, v22, v24

    const-string/jumbo v23, ""

    const/16 v24, 0xa

    aput-object v23, v22, v24

    .line 2567
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2571
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v21, 0xb

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v21, "TOTAL"

    const/16 v24, 0x0

    aput-object v21, v23, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v24

    .line 2572
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v21

    .line 2571
    :goto_11
    sub-int v21, v24, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x1

    aput-object v21, v23, v24

    .line 2573
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x2

    aput-object v21, v23, v24

    .line 2574
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x3

    aput-object v21, v23, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x4

    aput-object v21, v23, v24

    .line 2575
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x5

    aput-object v21, v23, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x6

    aput-object v21, v23, v24

    .line 2576
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v21

    :goto_12
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x7

    aput-object v21, v23, v24

    .line 2578
    add-long v24, p8, p14

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x8

    aput-object v21, v23, v24

    add-long v24, p10, p16

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x9

    aput-object v21, v23, v24

    .line 2579
    add-long v24, p12, p18

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0xa

    aput-object v21, v23, v24

    .line 2571
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2595
    :goto_13
    if-eqz p4, :cond_21

    .line 2596
    const-string/jumbo v21, " "

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2597
    const-string/jumbo v21, " Dalvik Details"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2599
    const/16 v4, 0x11

    .line 2600
    :goto_14
    const/16 v21, 0x19

    .line 2599
    move/from16 v0, v21

    if-ge v4, v0, :cond_21

    .line 2601
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v7

    .line 2602
    .restart local v7    # "myPss":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v10

    .line 2603
    .restart local v10    # "mySwappablePss":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v9

    .line 2604
    .restart local v9    # "mySharedDirty":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v6

    .line 2605
    .restart local v6    # "myPrivateDirty":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v8

    .line 2606
    .restart local v8    # "mySharedClean":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v5

    .line 2607
    .restart local v5    # "myPrivateClean":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v11

    .line 2608
    .restart local v11    # "mySwappedOut":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v12

    .line 2609
    .restart local v12    # "mySwappedOutPss":I
    if-nez v7, :cond_13

    if-eqz v9, :cond_1c

    .line 2612
    :cond_13
    :goto_15
    if-eqz p3, :cond_1f

    .line 2613
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v22, 0xb

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    .line 2614
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x2

    aput-object v23, v22, v24

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x3

    aput-object v23, v22, v24

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x4

    aput-object v23, v22, v24

    .line 2615
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x5

    aput-object v23, v22, v24

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x6

    aput-object v23, v22, v24

    .line 2616
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1e

    .end local v12    # "mySwappedOutPss":I
    :goto_16
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x7

    aput-object v23, v22, v24

    .line 2617
    const-string/jumbo v23, ""

    const/16 v24, 0x8

    aput-object v23, v22, v24

    const-string/jumbo v23, ""

    const/16 v24, 0x9

    aput-object v23, v22, v24

    const-string/jumbo v23, ""

    const/16 v24, 0xa

    aput-object v23, v22, v24

    .line 2613
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2600
    :cond_14
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14

    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .restart local v20    # "otherSwappedOutPss":I
    :cond_15
    move/from16 v20, v19

    .line 2569
    goto/16 :goto_10

    .line 2572
    .end local v20    # "otherSwappedOutPss":I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v21

    goto/16 :goto_11

    .line 2577
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v21

    goto/16 :goto_12

    .line 2581
    .restart local v20    # "otherSwappedOutPss":I
    :cond_18
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const-string/jumbo v23, "Unknown"

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    .line 2582
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x2

    aput-object v23, v22, v24

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x3

    aput-object v23, v22, v24

    .line 2583
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v23, v0

    if-eqz v23, :cond_19

    .end local v20    # "otherSwappedOutPss":I
    :goto_18
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x4

    aput-object v23, v22, v24

    .line 2584
    const-string/jumbo v23, ""

    const/16 v24, 0x5

    aput-object v23, v22, v24

    const-string/jumbo v23, ""

    const/16 v24, 0x6

    aput-object v23, v22, v24

    const-string/jumbo v23, ""

    const/16 v24, 0x7

    aput-object v23, v22, v24

    .line 2581
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2585
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v21, "TOTAL"

    const/16 v24, 0x0

    aput-object v21, v23, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v24

    .line 2586
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v21

    .line 2585
    :goto_19
    sub-int v21, v24, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x1

    aput-object v21, v23, v24

    .line 2587
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x2

    aput-object v21, v23, v24

    .line 2588
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x3

    aput-object v21, v23, v24

    .line 2589
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v21

    :goto_1a
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v24, 0x4

    aput-object v21, v23, v24

    .line 2591
    add-long v24, p8, p14

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x5

    aput-object v21, v23, v24

    .line 2592
    add-long v24, p10, p16

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x6

    aput-object v21, v23, v24

    add-long v24, p12, p18

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v24, 0x7

    aput-object v21, v23, v24

    .line 2585
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    .restart local v20    # "otherSwappedOutPss":I
    :cond_19
    move/from16 v20, v19

    .line 2583
    goto/16 :goto_18

    .line 2586
    .end local v20    # "otherSwappedOutPss":I
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v21

    goto :goto_19

    .line 2590
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v21

    goto :goto_1a

    .line 2609
    .restart local v5    # "myPrivateClean":I
    .restart local v6    # "myPrivateDirty":I
    .restart local v7    # "myPss":I
    .restart local v8    # "mySharedClean":I
    .restart local v9    # "mySharedDirty":I
    .restart local v10    # "mySwappablePss":I
    .restart local v11    # "mySwappedOut":I
    .restart local v12    # "mySwappedOutPss":I
    :cond_1c
    if-nez v6, :cond_13

    .line 2610
    if-nez v8, :cond_13

    if-nez v5, :cond_13

    .line 2611
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1d

    move/from16 v21, v12

    :goto_1b
    if-eqz v21, :cond_14

    goto/16 :goto_15

    :cond_1d
    move/from16 v21, v11

    goto :goto_1b

    :cond_1e
    move v12, v11

    .line 2616
    goto/16 :goto_16

    .line 2619
    :cond_1f
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    .line 2620
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x2

    aput-object v23, v22, v24

    .line 2621
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x3

    aput-object v23, v22, v24

    .line 2622
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v23, v0

    if-eqz v23, :cond_20

    .end local v12    # "mySwappedOutPss":I
    :goto_1c
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x4

    aput-object v23, v22, v24

    .line 2623
    const-string/jumbo v23, ""

    const/16 v24, 0x5

    aput-object v23, v22, v24

    const-string/jumbo v23, ""

    const/16 v24, 0x6

    aput-object v23, v22, v24

    const-string/jumbo v23, ""

    const/16 v24, 0x7

    aput-object v23, v22, v24

    .line 2619
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_17

    .restart local v12    # "mySwappedOutPss":I
    :cond_20
    move v12, v11

    .line 2622
    goto :goto_1c

    .line 2630
    .end local v4    # "i":I
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "mySwappedOutPss":I
    .end local v13    # "otherPrivateClean":I
    .end local v14    # "otherPrivateDirty":I
    .end local v15    # "otherPss":I
    .end local v16    # "otherSharedClean":I
    .end local v17    # "otherSharedDirty":I
    .end local v18    # "otherSwappablePss":I
    .end local v19    # "otherSwappedOut":I
    :cond_21
    const-string/jumbo v21, " "

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2631
    const-string/jumbo v21, " App Summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2632
    const-string/jumbo v21, "%21s %8s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const-string/jumbo v23, ""

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const-string/jumbo v23, "Pss(KB)"

    const/16 v24, 0x1

    aput-object v23, v22, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2633
    const-string/jumbo v21, "%21s %8s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const-string/jumbo v23, ""

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const-string/jumbo v23, "------"

    const/16 v24, 0x1

    aput-object v23, v22, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2634
    const-string/jumbo v21, "%21s %8d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2635
    const-string/jumbo v23, "Java Heap:"

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    .line 2634
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2636
    const-string/jumbo v21, "%21s %8d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2637
    const-string/jumbo v23, "Native Heap:"

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    .line 2636
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2638
    const-string/jumbo v21, "%21s %8d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2639
    const-string/jumbo v23, "Code:"

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    .line 2638
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2640
    const-string/jumbo v21, "%21s %8d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2641
    const-string/jumbo v23, "Stack:"

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    .line 2640
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2642
    const-string/jumbo v21, "%21s %8d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2643
    const-string/jumbo v23, "Graphics:"

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    .line 2642
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2644
    const-string/jumbo v21, "%21s %8d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2645
    const-string/jumbo v23, "Private Other:"

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    .line 2644
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2646
    const-string/jumbo v21, "%21s %8d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2647
    const-string/jumbo v23, "System:"

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    .line 2646
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2648
    const-string/jumbo v21, " "

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2649
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v21, v0

    if-eqz v21, :cond_22

    .line 2650
    const-string/jumbo v21, "%21s %8d %21s %8d"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2651
    const-string/jumbo v23, "TOTAL:"

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    .line 2652
    const-string/jumbo v23, "TOTAL SWAP PSS:"

    const/16 v24, 0x2

    aput-object v23, v22, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x3

    aput-object v23, v22, v24

    .line 2650
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2373
    :goto_1d
    return-void

    .line 2654
    :cond_22
    const-string/jumbo v21, "%21s %8d %21s %8d"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 2655
    const-string/jumbo v23, "TOTAL:"

    const/16 v24, 0x0

    aput-object v23, v22, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    .line 2656
    const-string/jumbo v23, "TOTAL SWAP (KB):"

    const/16 v24, 0x2

    aput-object v23, v22, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x3

    aput-object v23, v22, v24

    .line 2654
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d
.end method

.method static freeTextLayoutCachesIfNeeded(I)V
    .locals 2
    .param p0, "configDiff"    # I

    .prologue
    const/4 v0, 0x0

    .line 5249
    if-eqz p0, :cond_1

    .line 5251
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 5252
    .local v0, "hasLocaleConfigChange":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 5253
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 5248
    .end local v0    # "hasLocaleConfigChange":Z
    :cond_1
    return-void
.end method

.method private getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "insInfo"    # Landroid/content/pm/InstrumentationInfo;

    .prologue
    .line 5514
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 5518
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5520
    .local v2, "secondaryIsa":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ro.dalvik.vm.isa."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5521
    .local v1, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5523
    :goto_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 5524
    .local v0, "runtimeIsa":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5525
    iget-object v3, p2, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v3

    .line 5521
    .end local v0    # "runtimeIsa":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    goto :goto_0

    .line 5528
    .end local v1    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v2    # "secondaryIsa":Ljava/lang/String;
    :cond_1
    iget-object v3, p2, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v3
.end method

.method public static getIntentBeingBroadcast()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 3264
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private getLifecycleSeq()I
    .locals 3

    .prologue
    .line 1485
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 1486
    :try_start_0
    iget v0, p0, Landroid/app/ActivityThread;->mLifecycleSeq:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/app/ActivityThread;->mLifecycleSeq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 1485
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;
    .locals 11
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z

    .prologue
    .line 2217
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v8, 0x1

    .line 2218
    .local v8, "differentUser":Z
    :goto_0
    iget-object v10, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v10

    .line 2220
    if-eqz v8, :cond_2

    .line 2222
    const/4 v9, 0x0

    .line 2229
    :goto_1
    if-eqz v9, :cond_4

    :try_start_0
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk;

    .line 2230
    :goto_2
    if-eqz v0, :cond_5

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 2231
    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->isUpToDate()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    :goto_3
    monitor-exit v10

    .line 2257
    return-object v0

    .line 2217
    .end local v8    # "differentUser":Z
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "differentUser":Z
    goto :goto_0

    .line 2223
    :cond_2
    if-eqz p5, :cond_3

    .line 2224
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .local v9, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    .line 2226
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .restart local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    .line 2229
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_4
    const/4 v0, 0x0

    .local v0, "packageInfo":Landroid/app/LoadedApk;
    goto :goto_2

    .line 2238
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    :cond_5
    new-instance v0, Landroid/app/LoadedApk;

    .line 2239
    if-eqz p5, :cond_8

    .line 2240
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    const/4 v6, 0x1

    :goto_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v7, p6

    .line 2238
    invoke-direct/range {v0 .. v7}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    .line 2242
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "android"

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2244
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 2243
    invoke-virtual {v0, p1, v1}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2247
    :cond_6
    if-nez v8, :cond_0

    .line 2249
    if-eqz p5, :cond_9

    .line 2250
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2251
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2250
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2218
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 2240
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 2239
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 2253
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    :cond_9
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2254
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2253
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    .line 2000
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    .line 2002
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v1

    .line 2004
    :cond_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2006
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 2008
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v1
.end method

.method private getThemeResourceFromMappingTable()V
    .locals 20

    .prologue
    .line 6580
    const-string/jumbo v4, "ThemeApp"

    .line 6581
    .local v4, "TAG_THEME_APP":Ljava/lang/String;
    const-string/jumbo v2, "className"

    .line 6582
    .local v2, "TAG_ATTR_CLASSNAME":Ljava/lang/String;
    const-string/jumbo v3, "iconId"

    .line 6583
    .local v3, "TAG_ATTR_ICONID":Ljava/lang/String;
    const/4 v14, 0x0

    .line 6586
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1110018

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 6587
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    .line 6588
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 6589
    if-eqz v14, :cond_2

    .line 6590
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 6593
    .local v8, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v8, :cond_2

    .line 6594
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 6595
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 6579
    .end local v8    # "depth":I
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "type":I
    :cond_2
    :goto_1
    return-void

    .line 6599
    .restart local v8    # "depth":I
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "type":I
    :cond_3
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 6603
    const/4 v7, 0x0

    .line 6604
    .local v7, "className":Ljava/lang/String;
    const/4 v12, 0x0

    .line 6605
    .local v12, "iconId":Ljava/lang/String;
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 6607
    .local v13, "name":Ljava/lang/String;
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 6608
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v15

    .line 6609
    .local v15, "size":I
    const/4 v11, 0x0

    .end local v7    # "className":Ljava/lang/String;
    .end local v12    # "iconId":Ljava/lang/String;
    .local v11, "i":I
    :goto_2
    if-ge v11, v15, :cond_6

    .line 6610
    invoke-interface {v14, v11}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 6611
    .local v5, "attrName":Ljava/lang/String;
    invoke-interface {v14, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 6612
    .local v6, "attrValue":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 6613
    move-object v7, v6

    .line 6615
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 6616
    move-object v12, v6

    .line 6609
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 6619
    .end local v5    # "attrName":Ljava/lang/String;
    .end local v6    # "attrValue":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6620
    const/4 v7, 0x0

    .line 6621
    .restart local v7    # "className":Ljava/lang/String;
    const/4 v12, 0x0

    .restart local v12    # "iconId":Ljava/lang/String;
    goto :goto_0

    .line 6628
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "depth":I
    .end local v11    # "i":I
    .end local v12    # "iconId":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v15    # "size":I
    .end local v16    # "type":I
    :catch_0
    move-exception v9

    .line 6629
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v17, "ActivityThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception during parsing theme app list"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6630
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 6625
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 6626
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v17, "ActivityThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception during parsing theme app list XmlPullParserException"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6627
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private handleActivityDisplayIdChanged(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .prologue
    .line 6696
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6697
    .local v3, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v4, :cond_1

    .line 6698
    :cond_0
    return-void

    .line 6701
    :cond_1
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleActivityDisplayIdChanaged() : r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6703
    iget v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->displayId:I

    if-eq v4, p2, :cond_3

    .line 6705
    iput p2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->displayId:I

    .line 6706
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 6707
    .local v0, "context":Landroid/content/Context;
    instance-of v4, v0, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_2

    .line 6708
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 6710
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .line 6712
    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual {v0, p2}, Landroid/content/Context;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v4

    .line 6711
    invoke-virtual {v2, p2, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v1

    .line 6713
    .local v1, "display":Landroid/view/Display;
    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->getInstance()Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;

    move-result-object v4

    invoke-interface {v4, v0, p2}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;->propagateChangedContextDisplay(Landroid/content/Context;I)V

    .line 6715
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->onDisplayChanged(Landroid/view/Display;)V

    .line 6694
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    :cond_3
    return-void
.end method

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 34
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .prologue
    .line 5554
    invoke-static {}, Ldalvik/system/VMRuntime;->registerSensitiveThread()V

    .line 5555
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    if-eqz v2, :cond_0

    .line 5556
    const/4 v2, 0x1

    invoke-static {v2}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->enableRecentAllocations(Z)V

    .line 5560
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-static {v4, v5, v0, v1}, Landroid/os/Process;->setStartTimes(JJ)V

    .line 5564
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->dssScale:F

    move-object/from16 v0, p0

    iput v2, v0, Landroid/app/ActivityThread;->mDssScale:F

    .line 5568
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 5569
    new-instance v2, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 5570
    new-instance v2, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 5572
    new-instance v2, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v2}, Landroid/app/ActivityThread$Profiler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 5573
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v2, :cond_1

    .line 5574
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v4, v4, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 5575
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v4, v4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 5576
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v4, v4, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v4, v2, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 5577
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v4, v4, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 5581
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 5582
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 5583
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 5582
    invoke-static {v2, v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 5585
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    if-eqz v2, :cond_2

    .line 5589
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5590
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/ThreadedRenderer;->disable(Z)V

    .line 5594
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_3

    .line 5595
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 5602
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xc

    if-gt v2, v4, :cond_4

    .line 5603
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 5606
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v2}, Landroid/os/Message;->updateCheckRecycle(I)V

    .line 5614
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 5619
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v2}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 5621
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v4

    .line 5627
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v5, v7}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 5628
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 5631
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 5634
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 5639
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_10

    .line 5641
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 5642
    const/16 v2, 0xa0

    invoke-static {v2}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 5651
    :cond_5
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 5653
    const-string/jumbo v2, "24"

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v5, "time_12_24"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 5654
    .local v24, "is24Hr":Z
    invoke-static/range {v24 .. v24}, Ljava/text/DateFormat;->set24HourTimePref(Z)V

    .line 5657
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v4, "debug_view_attributes"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    .line 5656
    :goto_1
    sput-boolean v2, Landroid/view/View;->mDebugViewAttributes:Z

    .line 5663
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_6

    .line 5666
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    .line 5674
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v2, v4, :cond_7

    .line 5675
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnNetwork()V

    .line 5682
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_8

    .line 5683
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 5686
    :cond_8
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v4

    .line 5687
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x8000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    .line 5686
    :goto_2
    invoke-virtual {v4, v2}, Landroid/security/NetworkSecurityPolicy;->setCleartextTrafficPermitted(Z)V

    .line 5689
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    if-eqz v2, :cond_9

    .line 5691
    const/16 v2, 0x1fa4

    invoke-static {v2}, Landroid/os/Debug;->changeDebugPort(I)V

    .line 5692
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_13

    .line 5693
    const-string/jumbo v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5694
    const-string/jumbo v5, " is waiting for the debugger on port 8100..."

    .line 5693
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5696
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v26

    .line 5698
    .local v26, "mgr":Landroid/app/IActivityManager;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5703
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 5706
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5718
    .end local v26    # "mgr":Landroid/app/IActivityManager;
    :cond_9
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_14

    const/16 v25, 0x1

    .line 5719
    .local v25, "isAppDebuggable":Z
    :goto_4
    invoke-static/range {v25 .. v25}, Landroid/os/Trace;->setAppTracingAllowed(Z)V

    .line 5720
    if-eqz v25, :cond_a

    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    if-eqz v2, :cond_a

    .line 5721
    invoke-static {}, Landroid/os/Binder;->enableTracing()V

    .line 5727
    :cond_a
    const-string/jumbo v2, "Setup proxies"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5728
    const-string/jumbo v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    .line 5729
    .local v13, "b":Landroid/os/IBinder;
    if-eqz v13, :cond_b

    .line 5733
    invoke-static {v13}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v31

    .line 5735
    .local v31, "service":Landroid/net/IConnectivityManager;
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v29

    .line 5736
    .local v29, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-static/range {v29 .. v29}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 5742
    .end local v29    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v31    # "service":Landroid/net/IConnectivityManager;
    :cond_b
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 5747
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    if-eqz v2, :cond_15

    .line 5749
    :try_start_4
    new-instance v2, Landroid/app/ApplicationPackageManager;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    .line 5750
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    .line 5749
    invoke-virtual {v2, v4, v5}, Landroid/app/ApplicationPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v23

    .line 5756
    .local v23, "ii":Landroid/content/pm/InstrumentationInfo;
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 5757
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 5758
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 5759
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Landroid/app/ActivityThread;->getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 5760
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 5761
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getSplitAppDirs()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 5762
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 5767
    .end local v23    # "ii":Landroid/content/pm/InstrumentationInfo;
    :goto_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v12

    .line 5769
    .local v12, "appContext":Landroid/app/ContextImpl;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v2}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 5768
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    .line 5771
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "android"

    invoke-virtual {v12}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 5797
    :cond_c
    :goto_6
    const-string/jumbo v2, "NetworkSecurityConfigProvider.install"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5798
    invoke-static {v12}, Landroid/security/net/config/NetworkSecurityConfigProvider;->install(Landroid/content/Context;)V

    .line 5799
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 5802
    if-eqz v23, :cond_1a

    .line 5803
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 5804
    .local v3, "instrApp":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/pm/InstrumentationInfo;->copyTo(Landroid/content/pm/ApplicationInfo;)V

    .line 5805
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 5806
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 5807
    invoke-virtual {v12}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p0

    .line 5806
    invoke-direct/range {v2 .. v8}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v28

    .line 5808
    .local v28, "pi":Landroid/app/LoadedApk;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v6

    .line 5811
    .local v6, "instrContext":Landroid/app/ContextImpl;
    :try_start_5
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    .line 5813
    .local v15, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation;

    .line 5812
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 5820
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5821
    .local v8, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 5822
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    move-object/from16 v5, p0

    move-object v7, v12

    .line 5821
    invoke-virtual/range {v4 .. v10}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V

    .line 5824
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, v23

    iget-boolean v2, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-eqz v2, :cond_19

    .line 5835
    .end local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "instrContext":Landroid/app/ContextImpl;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v15    # "cl":Ljava/lang/ClassLoader;
    .end local v28    # "pi":Landroid/app/LoadedApk;
    :cond_d
    :goto_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v2, v4

    if-eqz v2, :cond_1b

    .line 5836
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 5846
    :goto_8
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v30

    .line 5850
    .local v30, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v11

    .line 5851
    .local v11, "app":Landroid/app/Application;
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 5855
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    if-nez v2, :cond_e

    .line 5856
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 5857
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 5860
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const-wide/16 v4, 0x2710

    const/16 v7, 0x84

    invoke-virtual {v2, v7, v4, v5}, Landroid/app/ActivityThread$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5867
    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 5876
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v11}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 5885
    :cond_f
    invoke-static/range {v30 .. v30}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5552
    return-void

    .line 5621
    .end local v11    # "app":Landroid/app/Application;
    .end local v12    # "appContext":Landroid/app/ContextImpl;
    .end local v13    # "b":Landroid/os/IBinder;
    .end local v24    # "is24Hr":Z
    .end local v25    # "isAppDebuggable":Z
    .end local v30    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 5644
    :cond_10
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v27

    .line 5645
    .local v27, "overrideDensity":I
    if-eqz v27, :cond_5

    .line 5646
    const-string/jumbo v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "override app density from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5647
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 5648
    invoke-static/range {v27 .. v27}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    goto/16 :goto_0

    .line 5657
    .end local v27    # "overrideDensity":I
    .restart local v24    # "is24Hr":Z
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 5687
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 5699
    .restart local v26    # "mgr":Landroid/app/IActivityManager;
    :catch_0
    move-exception v21

    .line 5700
    .local v21, "ex":Landroid/os/RemoteException;
    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5707
    .end local v21    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v21

    .line 5708
    .restart local v21    # "ex":Landroid/os/RemoteException;
    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5712
    .end local v21    # "ex":Landroid/os/RemoteException;
    .end local v26    # "mgr":Landroid/app/IActivityManager;
    :cond_13
    const-string/jumbo v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5713
    const-string/jumbo v5, " can be debugged on port 8100..."

    .line 5712
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5718
    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 5737
    .restart local v13    # "b":Landroid/os/IBinder;
    .restart local v25    # "isAppDebuggable":Z
    .restart local v31    # "service":Landroid/net/IConnectivityManager;
    :catch_2
    move-exception v19

    .line 5738
    .local v19, "e":Landroid/os/RemoteException;
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 5739
    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5751
    .end local v19    # "e":Landroid/os/RemoteException;
    .end local v31    # "service":Landroid/net/IConnectivityManager;
    :catch_3
    move-exception v18

    .line 5752
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    .line 5753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find instrumentation info for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5752
    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5764
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_15
    const/16 v23, 0x0

    .local v23, "ii":Landroid/content/pm/InstrumentationInfo;
    goto/16 :goto_5

    .line 5775
    .end local v23    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v12    # "appContext":Landroid/app/ContextImpl;
    :cond_16
    invoke-virtual {v12}, Landroid/app/ContextImpl;->getCacheDir()Ljava/io/File;

    move-result-object v14

    .line 5776
    .local v14, "cacheDir":Ljava/io/File;
    if-eqz v14, :cond_17

    .line 5778
    const-string/jumbo v2, "java.io.tmpdir"

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5785
    :goto_9
    invoke-virtual {v12}, Landroid/app/ContextImpl;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v17

    .line 5786
    .local v17, "deviceContext":Landroid/content/Context;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v16

    .line 5787
    .local v16, "codeCacheDir":Ljava/io/File;
    if-eqz v16, :cond_18

    .line 5788
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V

    goto/16 :goto_6

    .line 5780
    .end local v16    # "codeCacheDir":Ljava/io/File;
    .end local v17    # "deviceContext":Landroid/content/Context;
    :cond_17
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v4, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 5790
    .restart local v16    # "codeCacheDir":Ljava/io/File;
    .restart local v17    # "deviceContext":Landroid/content/Context;
    :cond_18
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v4, "Unable to setupGraphicsSupport due to missing code-cache directory"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 5814
    .end local v14    # "cacheDir":Ljava/io/File;
    .end local v16    # "codeCacheDir":Ljava/io/File;
    .end local v17    # "deviceContext":Landroid/content/Context;
    .restart local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "instrContext":Landroid/app/ContextImpl;
    .restart local v28    # "pi":Landroid/app/LoadedApk;
    :catch_4
    move-exception v20

    .line 5815
    .local v20, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    .line 5816
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to instantiate instrumentation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5817
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 5816
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5817
    const-string/jumbo v5, ": "

    .line 5816
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5817
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5816
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5815
    move-object/from16 v0, v20

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5825
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v8    # "component":Landroid/content/ComponentName;
    .restart local v15    # "cl":Ljava/lang/ClassLoader;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_d

    .line 5826
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    .line 5827
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5828
    .local v22, "file":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 5829
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x800000

    invoke-static {v2, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 5832
    .end local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "instrContext":Landroid/app/ContextImpl;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v15    # "cl":Ljava/lang/ClassLoader;
    .end local v22    # "file":Ljava/io/File;
    .end local v28    # "pi":Landroid/app/LoadedApk;
    :cond_1a
    new-instance v2, Landroid/app/Instrumentation;

    invoke-direct {v2}, Landroid/app/Instrumentation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    goto/16 :goto_7

    .line 5840
    :cond_1b
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clampGrowthLimit()V

    goto/16 :goto_8

    .line 5869
    .restart local v11    # "app":Landroid/app/Application;
    .restart local v30    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catch_5
    move-exception v20

    .line 5870
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v2, Ljava/lang/RuntimeException;

    .line 5871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception thrown in onCreate() of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5872
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 5871
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5872
    const-string/jumbo v5, ": "

    .line 5871
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5872
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5871
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5870
    move-object/from16 v0, v20

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5884
    .end local v11    # "app":Landroid/app/Application;
    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    .line 5885
    invoke-static/range {v30 .. v30}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5884
    throw v2

    .line 5877
    .restart local v11    # "app":Landroid/app/Application;
    :catch_6
    move-exception v20

    .line 5878
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v20

    invoke-virtual {v2, v11, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 5879
    new-instance v2, Ljava/lang/RuntimeException;

    .line 5880
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to create application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/app/Application;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5881
    const-string/jumbo v5, ": "

    .line 5880
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5881
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5880
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5879
    move-object/from16 v0, v20

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method

.method private handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 9
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .prologue
    .line 3499
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    .line 3502
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_0

    .line 3504
    :try_start_0
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3505
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3507
    :try_start_1
    iget-boolean v4, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v4, :cond_1

    .line 3508
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 3509
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 3510
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 3509
    invoke-interface {v4, v5, v6, v0}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 3516
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 3498
    :cond_0
    return-void

    .line 3512
    :cond_1
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 3513
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 3514
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3513
    invoke-interface {v4, v5, v6, v7, v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3517
    :catch_0
    move-exception v2

    .line 3518
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3520
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 3521
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3522
    new-instance v4, Ljava/lang/RuntimeException;

    .line 3523
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to bind to service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3524
    const-string/jumbo v6, " with "

    .line 3523
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3524
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 3523
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3524
    const-string/jumbo v6, ": "

    .line 3523
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3524
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3523
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3522
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 15
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .prologue
    .line 3335
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 3336
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    const/4 v14, 0x0

    .line 3335
    invoke-interface {v11, v12, v14, v13}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 3337
    .local v10, "requestedPackage":Landroid/content/pm/PackageInfo;
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    if-eq v11, v12, :cond_0

    .line 3338
    const-string/jumbo v11, "ActivityThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Asked to instantiate non-matching package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3339
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3338
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3340
    return-void

    .line 3342
    .end local v10    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .line 3343
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v11

    throw v11

    .line 3347
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v10    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3350
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v11, v12}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v8

    .line 3351
    .local v8, "packageInfo":Landroid/app/LoadedApk;
    iget-object v9, v8, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 3352
    .local v9, "packageName":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 3353
    const-string/jumbo v11, "ActivityThread"

    const-string/jumbo v12, "Asked to create backup agent for nonexistent package"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    return-void

    .line 3357
    :cond_1
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v11, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 3359
    .local v4, "classname":Ljava/lang/String;
    if-nez v4, :cond_3

    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 3360
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 3361
    :cond_2
    const-string/jumbo v4, "android.app.backup.FullBackupAgent"

    .line 3365
    :cond_3
    const/4 v2, 0x0

    .line 3366
    .local v2, "binder":Landroid/os/IBinder;
    :try_start_1
    iget-object v11, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/backup/BackupAgent;

    .line 3367
    .local v1, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v1, :cond_5

    .line 3372
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 3406
    .end local v2    # "binder":Landroid/os/IBinder;
    :cond_4
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11, v9, v2}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3330
    return-void

    .line 3377
    .restart local v2    # "binder":Landroid/os/IBinder;
    :cond_5
    :try_start_3
    invoke-virtual {v8}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 3378
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/app/backup/BackupAgent;

    move-object v1, v0

    .line 3381
    invoke-static {p0, v8}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v5

    .line 3382
    .local v5, "context":Landroid/app/ContextImpl;
    invoke-virtual {v5, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3383
    invoke-virtual {v1, v5}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 3386
    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->getInstance()Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12, v5}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;->createContext(Landroid/content/Context;Landroid/content/Context;)V

    .line 3389
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 3390
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v2

    .line 3391
    .local v2, "binder":Landroid/os/IBinder;
    iget-object v11, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3392
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "context":Landroid/app/ContextImpl;
    :catch_1
    move-exception v7

    .line 3395
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v11, "ActivityThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Agent threw during creation: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_4

    .line 3397
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_4

    .line 3398
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3410
    .end local v1    # "agent":Landroid/app/backup/BackupAgent;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 3411
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to create BackupAgent "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3412
    const-string/jumbo v13, ": "

    .line 3411
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3412
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3411
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 3407
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "agent":Landroid/app/backup/BackupAgent;
    :catch_3
    move-exception v6

    .line 3408
    .restart local v6    # "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v11

    throw v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
.end method

.method private handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 15
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    .prologue
    .line 3439
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3442
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 3441
    invoke-virtual {p0, v3, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v13

    .line 3443
    .local v13, "packageInfo":Landroid/app/LoadedApk;
    const/4 v1, 0x0

    .line 3445
    .local v1, "service":Landroid/app/Service;
    :try_start_0
    invoke-virtual {v13}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 3446
    .local v10, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/Service;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3459
    .end local v1    # "service":Landroid/app/Service;
    .end local v10    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/ActivityThread$CreateServiceData;->displayId:I

    .line 3458
    invoke-static {p0, v13, v3}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;I)Landroid/app/ContextImpl;

    move-result-object v2

    .line 3460
    .local v2, "context":Landroid/app/ContextImpl;
    invoke-virtual {v2, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3462
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v4, 0x0

    invoke-virtual {v13, v4, v3}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v6

    .line 3466
    .local v6, "app":Landroid/app/Application;
    const/4 v9, 0x0

    .line 3467
    .local v9, "callerActivityContext":Landroid/content/Context;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->callerActivityToken:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$CreateServiceData;->callerActivityToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3468
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->callerActivityToken:Landroid/os/IBinder;

    invoke-virtual {p0, v3}, Landroid/app/ActivityThread;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v8

    .line 3469
    .local v8, "callerActivity":Landroid/app/Activity;
    if-eqz v8, :cond_1

    .line 3470
    invoke-virtual {v8}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    .line 3472
    .end local v8    # "callerActivity":Landroid/app/Activity;
    .end local v9    # "callerActivityContext":Landroid/content/Context;
    :cond_1
    if-eqz v9, :cond_3

    .line 3473
    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->getInstance()Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;

    move-result-object v3

    invoke-interface {v3, v9, v2}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;->createContext(Landroid/content/Context;Landroid/content/Context;)V

    .line 3479
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 3480
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    move-object v3, p0

    .line 3479
    invoke-virtual/range {v1 .. v7}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 3481
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 3482
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3484
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 3485
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    .line 3484
    invoke-interface {v3, v4, v5, v7, v14}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3436
    .end local v2    # "context":Landroid/app/ContextImpl;
    .end local v6    # "app":Landroid/app/Application;
    :cond_2
    return-void

    .line 3447
    .restart local v1    # "service":Landroid/app/Service;
    :catch_0
    move-exception v12

    .line 3448
    .local v12, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v12}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3449
    new-instance v3, Ljava/lang/RuntimeException;

    .line 3450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to instantiate service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3451
    const-string/jumbo v5, ": "

    .line 3450
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3451
    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3450
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3449
    invoke-direct {v3, v4, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3475
    .end local v1    # "service":Landroid/app/Service;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v2    # "context":Landroid/app/ContextImpl;
    .restart local v6    # "app":Landroid/app/Application;
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->getInstance()Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-interface {v3, v4, v2}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;->createContext(Landroid/content/Context;Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3489
    .end local v2    # "context":Landroid/app/ContextImpl;
    .end local v6    # "app":Landroid/app/Application;
    :catch_1
    move-exception v12

    .line 3490
    .restart local v12    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v12}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3491
    new-instance v3, Ljava/lang/RuntimeException;

    .line 3492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3493
    const-string/jumbo v5, ": "

    .line 3492
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3493
    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3492
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3491
    invoke-direct {v3, v4, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3486
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v2    # "context":Landroid/app/ContextImpl;
    .restart local v6    # "app":Landroid/app/Application;
    :catch_2
    move-exception v11

    .line 3487
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v11}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method private handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z

    .prologue
    const/4 v9, 0x0

    .line 4609
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v2

    .line 4611
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_5

    .line 4612
    invoke-static {v2, p2}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4613
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 4614
    .local v4, "wm":Landroid/view/WindowManager;
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v6, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4615
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 4616
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v6, :cond_0

    .line 4617
    iget v6, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 4619
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 4620
    .local v5, "wtoken":Landroid/os/IBinder;
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v6, :cond_1

    .line 4621
    iget-boolean v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v6, :cond_7

    .line 4624
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    iput-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 4625
    iput-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 4629
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->clearContentView()V

    .line 4634
    :cond_1
    :goto_0
    if-eqz v5, :cond_8

    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v6, :cond_8

    .line 4635
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v6

    .line 4636
    iget-object v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Activity"

    .line 4635
    invoke-virtual {v6, v5, v7, v8}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4645
    :cond_2
    :goto_1
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-object v9, v6, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4647
    .end local v5    # "wtoken":Landroid/os/IBinder;
    :cond_3
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v6, :cond_4

    .line 4654
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v6

    .line 4655
    iget-object v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Activity"

    .line 4654
    invoke-virtual {v6, p1, v7, v8}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4662
    :cond_4
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 4663
    .local v0, "c":Landroid/content/Context;
    instance-of v6, v0, Landroid/app/ContextImpl;

    if-eqz v6, :cond_5

    .line 4664
    check-cast v0, Landroid/app/ContextImpl;

    .line 4665
    .end local v0    # "c":Landroid/content/Context;
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Activity"

    .line 4664
    invoke-virtual {v0, v6, v7}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 4668
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "wm":Landroid/view/WindowManager;
    :cond_5
    if-eqz p2, :cond_6

    .line 4670
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4675
    :cond_6
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4608
    return-void

    .line 4631
    .restart local v3    # "v":Landroid/view/View;
    .restart local v4    # "wm":Landroid/view/WindowManager;
    .restart local v5    # "wtoken":Landroid/os/IBinder;
    :cond_7
    invoke-interface {v4, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    .line 4637
    :cond_8
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v6, :cond_2

    .line 4642
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v6

    .line 4643
    iget-object v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Activity"

    .line 4642
    invoke-virtual {v6, p1, v3, v7, v8}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4671
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "wm":Landroid/view/WindowManager;
    .end local v5    # "wtoken":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 4672
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
.end method

.method private handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 7
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .prologue
    .line 3420
    iget-object v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    .line 3421
    .local v2, "packageInfo":Landroid/app/LoadedApk;
    iget-object v3, v2, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 3422
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/backup/BackupAgent;

    .line 3423
    .local v0, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v0, :cond_0

    .line 3425
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3430
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3417
    :goto_1
    return-void

    .line 3426
    :catch_0
    move-exception v1

    .line 3427
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3432
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Attempt to destroy unknown backup agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 3575
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3577
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3578
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 3579
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    .line 3580
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 3579
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3581
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->displayId:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3587
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3590
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3591
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3574
    return-void

    .line 3589
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v3

    .line 3590
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3591
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3589
    throw v3
.end method

.method private handleDumpContextRelationInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 13
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 3599
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 3600
    .local v6, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v9, 0x0

    .line 3602
    .local v9, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v10, Ljava/io/PrintWriter;

    new-instance v11, Ljava/io/FileOutputStream;

    iget-object v12, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v10, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3603
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .local v10, "pw":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3604
    .local v5, "innerPrefix":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3605
    .local v3, "dumpDetail":Z
    const/4 v2, 0x0

    .line 3606
    .local v2, "dumpCallStack":Z
    iget-object v0, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 3607
    .local v0, "args":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3609
    .local v8, "opti":I
    :goto_0
    array-length v11, v0

    if-ge v8, v11, :cond_0

    .line 3610
    aget-object v7, v0, v8

    .line 3611
    .local v7, "opt":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_3

    .line 3617
    .end local v7    # "opt":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 3618
    .local v1, "cmd":Ljava/lang/String;
    array-length v11, v0

    if-ge v8, v11, :cond_1

    .line 3619
    aget-object v1, v0, v8

    .line 3620
    .local v1, "cmd":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 3621
    const-string/jumbo v11, "cc"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3622
    const/4 v2, 0x1

    .line 3633
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->getInstance()Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;

    move-result-object v11

    invoke-interface {v11, v10, v5, v3, v2}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3637
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    .line 3638
    :cond_2
    iget-object v11, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3639
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v9, v10

    .line 3596
    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "dumpCallStack":Z
    .end local v3    # "dumpDetail":Z
    .end local v5    # "innerPrefix":Ljava/lang/String;
    .end local v8    # "opti":I
    .end local v10    # "pw":Ljava/io/PrintWriter;
    :goto_1
    return-void

    .line 3611
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v2    # "dumpCallStack":Z
    .restart local v3    # "dumpDetail":Z
    .restart local v5    # "innerPrefix":Ljava/lang/String;
    .restart local v7    # "opt":Ljava/lang/String;
    .restart local v8    # "opti":I
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    :cond_3
    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_0

    .line 3614
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3634
    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "dumpCallStack":Z
    .end local v3    # "dumpDetail":Z
    .end local v5    # "innerPrefix":Ljava/lang/String;
    .end local v7    # "opt":Ljava/lang/String;
    .end local v8    # "opti":I
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v4

    .line 3635
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .local v4, "e":Ljava/lang/NullPointerException;
    :goto_2
    :try_start_3
    const-string/jumbo v11, "ActivityThread"

    const-string/jumbo v12, "handleDumpContextRelationInfo failed"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3637
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    .line 3638
    :cond_4
    iget-object v11, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3639
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 3636
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v11

    .line 3637
    :goto_3
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    .line 3638
    :cond_5
    iget-object v12, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3639
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3636
    throw v11

    .restart local v10    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .local v9, "pw":Ljava/io/PrintWriter;
    goto :goto_3

    .line 3634
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/NullPointerException;
    move-object v9, v10

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "pw":Ljava/io/PrintWriter;
    goto :goto_2
.end method

.method static final handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V
    .locals 5
    .param p0, "managed"    # Z
    .param p1, "dhd"    # Landroid/app/ActivityThread$DumpHeapData;

    .prologue
    .line 5318
    if-eqz p0, :cond_0

    .line 5320
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5326
    :try_start_1
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5335
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->dumpHeapFinished(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 5317
    return-void

    .line 5327
    :catch_0
    move-exception v1

    .line 5328
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v3, "Failure closing profile fd"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5321
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 5322
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Managed heap dump failed on path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5323
    const-string/jumbo v4, " -- can the process access this path?"

    .line 5322
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5326
    :try_start_4
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 5327
    :catch_2
    move-exception v1

    .line 5328
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v3, "Failure closing profile fd"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5324
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 5326
    :try_start_5
    iget-object v3, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 5324
    :goto_1
    throw v2

    .line 5327
    :catch_3
    move-exception v1

    .line 5328
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "ActivityThread"

    const-string/jumbo v4, "Failure closing profile fd"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5332
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 5336
    :catch_4
    move-exception v0

    .line 5337
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 3663
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3665
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3666
    .local v2, "r":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v3, :cond_0

    .line 3667
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    .line 3668
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 3667
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3669
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3670
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3673
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3674
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3662
    return-void

    .line 3672
    .end local v2    # "r":Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v3

    .line 3673
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3674
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3672
    throw v3
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 3559
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3561
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 3562
    .local v2, "s":Landroid/app/Service;
    if-eqz v2, :cond_0

    .line 3563
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    .line 3564
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 3563
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3565
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3566
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3569
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3570
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3558
    return-void

    .line 3568
    .end local v2    # "s":Landroid/app/Service;
    :catchall_0
    move-exception v3

    .line 3569
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3570
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3568
    throw v3
.end method

.method private handleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 3192
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3193
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3194
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->dispatchEnterAnimationComplete()V

    .line 3191
    :cond_0
    return-void
.end method

.method private handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2971
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2972
    iput-boolean v4, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 2974
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v0, :cond_0

    .line 2975
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 2976
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 2980
    :cond_0
    invoke-virtual {p0, v3, v3}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 2986
    invoke-static {}, Landroid/view/WindowManagerGlobal;->initialize()V

    .line 2988
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v7

    .line 2990
    .local v7, "a":Landroid/app/Activity;
    if-eqz v7, :cond_4

    .line 2991
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 2992
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 2993
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2994
    .local v9, "oldState":Landroid/os/Bundle;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 2995
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    if-eqz v0, :cond_2

    :cond_1
    move v4, v2

    :cond_2
    iget v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    move-object v0, p0

    move-object v6, p3

    .line 2994
    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZILjava/lang/String;)V

    .line 2997
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    if-eqz v0, :cond_3

    .line 3005
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 3012
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3013
    iput-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2968
    .end local v9    # "oldState":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    .line 3019
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3020
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3021
    const/4 v4, 0x0

    .line 3019
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3022
    :catch_0
    move-exception v8

    .line 3023
    .local v8, "ex":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 3227
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3228
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3229
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3230
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V

    .line 3231
    if-nez p2, :cond_1

    .line 3232
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    .line 3226
    :cond_0
    :goto_0
    return-void

    .line 3234
    :cond_1
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    goto :goto_0
.end method

.method private handleMultiWindowFeaturesChanged()V
    .locals 6

    .prologue
    .line 3243
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 3244
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 3245
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3246
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->onMultiWindowFeaturesChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3248
    .end local v1    # "i":I
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 3249
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ActivityThread"

    const-string/jumbo v5, "handleMultiWindowFeaturesChanged, Exception thrown"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3240
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private handleMultiWindowModeChanged(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInMultiWindowMode"    # Z

    .prologue
    .line 3213
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3214
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3215
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->dispatchMultiWindowModeChanged(Z)V

    .line 3212
    :cond_0
    return-void
.end method

.method private handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    .locals 2
    .param p1, "data"    # Landroid/app/ActivityThread$NewIntentData;

    .prologue
    .line 3085
    iget-object v0, p1, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    iget-object v1, p1, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    .line 3084
    return-void
.end method

.method private handlePauseActivity(Landroid/os/IBinder;ZZIZI)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z
    .param p6, "seq"    # I

    .prologue
    .line 4028
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4030
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const-string/jumbo v2, "pauseActivity"

    invoke-static {p6, v1, v2}, Landroid/app/ActivityThread;->checkAndUpdateLifecycleSeq(ILandroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4031
    return-void

    .line 4033
    :cond_0
    if-eqz v1, :cond_4

    .line 4035
    if-eqz p3, :cond_1

    .line 4036
    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4039
    :cond_1
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p4

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4040
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    const-string/jumbo v3, "handlePauseActivity"

    invoke-virtual {p0, p1, p2, v2, v3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZLjava/lang/String;)Landroid/os/Bundle;

    .line 4043
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4044
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 4048
    :cond_2
    if-nez p5, :cond_3

    .line 4050
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4055
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4027
    :cond_4
    return-void

    .line 4051
    :catch_0
    move-exception v0

    .line 4052
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private handlePictureInPictureModeChanged(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInPipMode"    # Z

    .prologue
    .line 3220
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3221
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3222
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(Z)V

    .line 3219
    :cond_0
    return-void
.end method

.method private handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .locals 12
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    .prologue
    const/4 v11, 0x0

    .line 3270
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3272
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 3275
    .local v2, "component":Ljava/lang/String;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 3274
    invoke-virtual {p0, v8, v9}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v6

    .line 3277
    .local v6, "packageInfo":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 3281
    .local v5, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    invoke-virtual {v6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 3282
    .local v1, "cl":Ljava/lang/ClassLoader;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3283
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 3284
    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3285
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3296
    .local v7, "receiver":Landroid/content/BroadcastReceiver;
    :try_start_1
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    .line 3306
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/ContextImpl;

    .line 3307
    .local v3, "context":Landroid/app/ContextImpl;
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3308
    invoke-virtual {v7, p1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 3309
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v8

    .line 3310
    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 3309
    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3321
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3324
    .end local v0    # "app":Landroid/app/Application;
    .end local v3    # "context":Landroid/app/ContextImpl;
    :goto_0
    invoke-virtual {v7}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3325
    invoke-virtual {p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    .line 3267
    :cond_0
    return-void

    .line 3286
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v7    # "receiver":Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v4

    .line 3289
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 3290
    new-instance v8, Ljava/lang/RuntimeException;

    .line 3291
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to instantiate receiver "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3292
    const-string/jumbo v10, ": "

    .line 3291
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3292
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3291
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3290
    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 3311
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "cl":Ljava/lang/ClassLoader;
    .restart local v7    # "receiver":Landroid/content/BroadcastReceiver;
    :catch_1
    move-exception v4

    .line 3314
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 3315
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v8, v7, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3316
    new-instance v8, Ljava/lang/RuntimeException;

    .line 3317
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to start receiver "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3318
    const-string/jumbo v10, ": "

    .line 3317
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3318
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3317
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3316
    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3320
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 3321
    sget-object v9, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v9, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3320
    throw v8

    .line 3321
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 14
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 4772
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4773
    iput-boolean v10, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4775
    const/4 v1, 0x0

    .line 4776
    .local v1, "changedConfig":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .line 4781
    .local v2, "configChanges":I
    iget-object v11, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v11

    .line 4782
    :try_start_0
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4783
    .local v0, "N":I
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 4784
    .local v7, "token":Landroid/os/IBinder;
    const/4 p1, 0x0

    .line 4785
    .local p1, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v5, 0x0

    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 4786
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4787
    .local v6, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v8, v7, :cond_0

    .line 4788
    move-object p1, v6

    .line 4789
    .local p1, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    iget v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v2, v8

    .line 4790
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4791
    add-int/lit8 v5, v5, -0x1

    .line 4792
    add-int/lit8 v0, v0, -0x1

    .line 4785
    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4796
    .end local v6    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    if-nez p1, :cond_2

    monitor-exit v11

    .line 4798
    return-void

    .line 4805
    :cond_2
    :try_start_1
    iget-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v8, :cond_3

    .line 4806
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 4807
    .local v1, "changedConfig":Landroid/content/res/Configuration;
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "changedConfig":Landroid/content/res/Configuration;
    :cond_3
    monitor-exit v11

    .line 4811
    iget v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    iget v11, p1, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    if-le v8, v11, :cond_9

    .line 4812
    const-string/jumbo v8, "ActivityThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "For some reason target: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " has lower sequence: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4813
    iget v12, p1, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    .line 4812
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4813
    const-string/jumbo v12, " than current sequence: "

    .line 4812
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4813
    iget v12, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    .line 4812
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4817
    :goto_1
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v8, :cond_6

    .line 4821
    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v8, :cond_4

    .line 4822
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    iget-object v11, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, v11}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4823
    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v11, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v11}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v8

    if-eqz v8, :cond_6

    .line 4824
    :cond_4
    if-eqz v1, :cond_5

    .line 4825
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v8

    .line 4824
    if-eqz v8, :cond_6

    .line 4826
    :cond_5
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 4835
    :cond_6
    if-eqz v1, :cond_7

    .line 4836
    iget v8, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v8, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 4837
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 4838
    invoke-virtual {p0, v1, v13}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 4841
    :cond_7
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v11, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4843
    .restart local v6    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v6, :cond_a

    .line 4844
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-nez v8, :cond_8

    .line 4846
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v8, v9}, Landroid/app/IActivityManager;->activityRelaunched(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4851
    :cond_8
    return-void

    .line 4781
    .end local v0    # "N":I
    .end local v5    # "i":I
    .end local v6    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v7    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v8

    monitor-exit v11

    throw v8

    .line 4815
    .restart local v0    # "N":I
    .restart local v5    # "i":I
    .restart local v7    # "token":Landroid/os/IBinder;
    :cond_9
    iget v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    iput v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    goto :goto_1

    .line 4847
    .restart local v6    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catch_0
    move-exception v4

    .line 4848
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 4854
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_a
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v11, v8, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v11, v2

    iput v11, v8, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4855
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    iput-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 4856
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    iput-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 4857
    iget v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    iput v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    .line 4858
    iget v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    iput v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    .line 4859
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v8, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 4861
    .local v3, "currentIntent":Landroid/content/Intent;
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v10, v8, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 4875
    :try_start_3
    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-nez v8, :cond_b

    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-eqz v8, :cond_c

    .line 4876
    :cond_b
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v11

    .line 4877
    iget-object v12, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-eqz v8, :cond_12

    move v8, v9

    .line 4876
    :goto_2
    invoke-interface {v11, v12, v8}, Landroid/view/IWindowSession;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4884
    :cond_c
    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v8, :cond_d

    .line 4885
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v6}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v11

    const-string/jumbo v12, "handleRelaunchActivity"

    invoke-virtual {p0, v8, v9, v11, v12}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZLjava/lang/String;)Landroid/os/Bundle;

    .line 4887
    :cond_d
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v8, :cond_e

    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v8, :cond_13

    .line 4891
    :cond_e
    :goto_3
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-direct {p0, v8, v9, v2, v10}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    .line 4893
    iput-object v13, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4894
    iput-object v13, v6, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 4895
    iput-boolean v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 4896
    iput-object v13, v6, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4898
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v8, :cond_f

    .line 4899
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez v8, :cond_14

    .line 4900
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iput-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 4905
    :cond_f
    :goto_4
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v8, :cond_10

    .line 4906
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez v8, :cond_15

    .line 4907
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iput-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 4912
    :cond_10
    :goto_5
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iput-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 4913
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iput-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 4915
    const-string/jumbo v8, "handleRelaunchActivity"

    invoke-direct {p0, v6, v3, v8}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V

    .line 4919
    iget v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->displayId:I

    iput v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->displayId:I

    .line 4923
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-nez v8, :cond_11

    .line 4925
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v8, v9}, Landroid/app/IActivityManager;->activityRelaunched(Landroid/os/IBinder;)V

    .line 4926
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v8, :cond_11

    .line 4927
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->reportActivityRelaunched()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 4769
    :cond_11
    return-void

    :cond_12
    move v8, v10

    .line 4877
    goto :goto_2

    .line 4879
    :catch_1
    move-exception v4

    .line 4880
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 4887
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_13
    invoke-virtual {v6}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v8

    if-nez v8, :cond_e

    .line 4888
    invoke-direct {p0, v6}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    goto :goto_3

    .line 4902
    :cond_14
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 4909
    :cond_15
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 4929
    :catch_2
    move-exception v4

    .line 4930
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8
.end method

.method private handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    .locals 8
    .param p1, "res"    # Landroid/app/ActivityThread$ResultData;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4482
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4484
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_3

    .line 4485
    iget-boolean v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 4486
    .local v3, "resumed":Z
    :goto_0
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_0

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, v4, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 4487
    iget-boolean v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 4486
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 4491
    invoke-direct {p0, v2, v6}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4493
    :cond_0
    if-eqz v3, :cond_2

    .line 4496
    :try_start_0
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/app/Activity;->mCalled:Z

    .line 4497
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/app/Activity;->mTemporaryPause:Z

    .line 4498
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 4499
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v4, :cond_2

    .line 4500
    new-instance v4, Landroid/util/SuperNotCalledException;

    .line 4501
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4502
    const-string/jumbo v6, " did not call through to super.onPause()"

    .line 4501
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4500
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4504
    :catch_0
    move-exception v0

    .line 4505
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0

    .line 4485
    .end local v0    # "e":Landroid/util/SuperNotCalledException;
    .end local v3    # "resumed":Z
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "resumed":Z
    goto :goto_0

    .line 4506
    :catch_1
    move-exception v1

    .line 4507
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4508
    new-instance v4, Ljava/lang/RuntimeException;

    .line 4509
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to pause activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4510
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 4509
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4511
    const-string/jumbo v6, ": "

    .line 4509
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4511
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4509
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4508
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4515
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p1, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 4516
    if-eqz v3, :cond_3

    .line 4517
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->performResume()V

    .line 4518
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v7, v4, Landroid/app/Activity;->mTemporaryPause:Z

    .line 4481
    .end local v3    # "resumed":Z
    :cond_3
    return-void
.end method

.method private handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 8
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    .prologue
    .line 3679
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    .line 3680
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_1

    .line 3682
    :try_start_0
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 3683
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3684
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 3687
    :cond_0
    iget-boolean v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    if-nez v4, :cond_2

    .line 3688
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .line 3694
    .local v2, "res":I
    :goto_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3697
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 3698
    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    const/4 v7, 0x1

    .line 3697
    invoke-interface {v4, v5, v7, v6, v2}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3702
    :try_start_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 3678
    .end local v2    # "res":I
    :cond_1
    return-void

    .line 3690
    :cond_2
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 3691
    const/16 v2, 0x3e8

    .restart local v2    # "res":I
    goto :goto_0

    .line 3699
    :catch_0
    move-exception v0

    .line 3700
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3703
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "res":I
    :catch_1
    move-exception v1

    .line 3704
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3705
    new-instance v4, Ljava/lang/RuntimeException;

    .line 3706
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to start service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3707
    const-string/jumbo v6, " with "

    .line 3706
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3707
    iget-object v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 3706
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3707
    const-string/jumbo v6, ": "

    .line 3706
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3707
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3706
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3705
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private handleSetCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .prologue
    .line 4409
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 4410
    :try_start_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4412
    invoke-direct {p0}, Landroid/app/ActivityThread;->onCoreSettingsChange()V

    .line 4408
    return-void

    .line 4409
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleSetMultiWindowSettings(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mwSettings"    # Landroid/os/Bundle;

    .prologue
    .line 6723
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->onMultiWindowSettingsChange(Landroid/os/Bundle;)I

    .line 6722
    return-void
.end method

.method private handleSleeping(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4364
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4366
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v2, :cond_0

    .line 4367
    const-string/jumbo v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleSleeping: no activity for token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4368
    return-void

    .line 4371
    :cond_0
    if-eqz p2, :cond_6

    .line 4372
    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4390
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4391
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 4396
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->activitySlept(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4363
    :cond_3
    :goto_1
    return-void

    .line 4375
    :cond_4
    :try_start_1
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->performStop(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4384
    :cond_5
    iput-boolean v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 4385
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 4386
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string/jumbo v4, "sleeping"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 4385
    const/16 v4, 0x7561

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 4376
    :catch_0
    move-exception v0

    .line 4377
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 4378
    new-instance v3, Ljava/lang/RuntimeException;

    .line 4379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to stop activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4380
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    .line 4379
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4381
    const-string/jumbo v5, ": "

    .line 4379
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4381
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4379
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4378
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4397
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 4398
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 4401
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_6
    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v3, :cond_3

    .line 4402
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->performRestart()V

    .line 4403
    iput-boolean v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto/16 :goto_1
.end method

.method private handleStartBinderTracking()V
    .locals 0

    .prologue
    .line 3199
    invoke-static {}, Landroid/os/Binder;->enableTracing()V

    .line 3198
    return-void
.end method

.method private handleStopActivity(Landroid/os/IBinder;ZII)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z
    .param p3, "configChanges"    # I
    .param p4, "seq"    # I

    .prologue
    const/4 v4, 0x1

    .line 4283
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4284
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const-string/jumbo v0, "stopActivity"

    invoke-static {p4, v1, v0}, Landroid/app/ActivityThread;->checkAndUpdateLifecycleSeq(ILandroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4285
    return-void

    .line 4287
    :cond_0
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p3

    iput v3, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4289
    new-instance v2, Landroid/app/ActivityThread$StopInfo;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Landroid/app/ActivityThread$StopInfo;-><init>(Landroid/app/ActivityThread$StopInfo;)V

    .line 4290
    .local v2, "info":Landroid/app/ActivityThread$StopInfo;
    const-string/jumbo v5, "handleStopActivity"

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZLjava/lang/String;)V

    .line 4296
    invoke-direct {p0, v1, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4299
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4300
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 4308
    :cond_1
    iput-object v1, v2, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4309
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iput-object v0, v2, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    .line 4310
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    iput-object v0, v2, Landroid/app/ActivityThread$StopInfo;->persistentState:Landroid/os/PersistableBundle;

    .line 4311
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 4312
    iput-boolean v4, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4282
    return-void
.end method

.method private handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 3204
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->disableTracing()V

    .line 3205
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/TransactionTracker;->writeTracesToFile(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3207
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3208
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 3202
    return-void

    .line 3206
    :catchall_0
    move-exception v0

    .line 3207
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3208
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 3206
    throw v0
.end method

.method private handleStopService(Landroid/os/IBinder;)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 3714
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    .line 3715
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_2

    .line 3718
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Service;->onDestroy()V

    .line 3719
    invoke-virtual {v3}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 3720
    .local v0, "context":Landroid/content/Context;
    instance-of v5, v0, Landroid/app/ContextImpl;

    if-eqz v5, :cond_0

    .line 3721
    invoke-virtual {v3}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 3722
    .local v4, "who":Ljava/lang/String;
    check-cast v0, Landroid/app/ContextImpl;

    .end local v0    # "context":Landroid/content/Context;
    const-string/jumbo v5, "Service"

    invoke-virtual {v0, v4, v5}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    .end local v4    # "who":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3728
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 3729
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3728
    invoke-interface {v5, p1, v6, v7, v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3713
    :goto_0
    return-void

    .line 3730
    :catch_0
    move-exception v1

    .line 3731
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3733
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 3734
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v3, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3735
    new-instance v5, Ljava/lang/RuntimeException;

    .line 3736
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to stop service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3737
    const-string/jumbo v7, ": "

    .line 3736
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3737
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3736
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3735
    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3739
    :cond_1
    const-string/jumbo v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleStopService: exception for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3742
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleStopService: token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 9
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .prologue
    .line 3531
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    .line 3532
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_0

    .line 3534
    :try_start_0
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3535
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 3536
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3538
    .local v0, "doRebind":Z
    if-eqz v0, :cond_1

    .line 3539
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 3540
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 3539
    invoke-interface {v4, v5, v6, v0}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 3530
    .end local v0    # "doRebind":Z
    :cond_0
    :goto_0
    return-void

    .line 3542
    .restart local v0    # "doRebind":Z
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 3543
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3542
    invoke-interface {v4, v5, v6, v7, v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3545
    :catch_0
    move-exception v2

    .line 3546
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3548
    .end local v0    # "doRebind":Z
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 3549
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3550
    new-instance v4, Ljava/lang/RuntimeException;

    .line 3551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to unbind to service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3552
    const-string/jumbo v6, " with "

    .line 3551
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3552
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 3551
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3552
    const-string/jumbo v6, ": "

    .line 3551
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3552
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3551
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3550
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 3
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    .prologue
    .line 4445
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4446
    .local v0, "apk":Landroid/app/LoadedApk;
    if-eqz v0, :cond_0

    .line 4447
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 4449
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4450
    if-eqz v0, :cond_1

    .line 4451
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 4453
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 4454
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    .line 4444
    return-void
.end method

.method private handleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 4338
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4340
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v1, :cond_0

    .line 4341
    const-string/jumbo v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleWindowVisibility: no activity for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    return-void

    .line 4345
    :cond_0
    if-nez p2, :cond_1

    iget-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_4

    .line 4347
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_2

    .line 4350
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4352
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->performRestart()V

    .line 4353
    iput-boolean v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 4355
    :cond_2
    :goto_0
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 4358
    invoke-direct {p0, v1, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4360
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4337
    return-void

    .line 4346
    :cond_4
    const-string/jumbo v5, "handleWindowVisibility"

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method private final incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .locals 6
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;
    .param p2, "stable"    # Z

    .prologue
    const/16 v5, 0x83

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5967
    if-eqz p2, :cond_2

    .line 5968
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 5969
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-ne v2, v3, :cond_0

    .line 5972
    iget-boolean v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v2, :cond_1

    .line 5976
    const/4 v1, -0x1

    .line 5982
    .local v1, "unstableDelta":I
    iput-boolean v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 5985
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v5, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 5995
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 5996
    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v3, v3, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v4, 0x1

    .line 5995
    invoke-interface {v2, v3, v4, v1}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5966
    .end local v1    # "unstableDelta":I
    :cond_0
    :goto_1
    return-void

    .line 5987
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "unstableDelta":I
    goto :goto_0

    .line 6002
    .end local v1    # "unstableDelta":I
    :cond_2
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 6003
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-ne v2, v3, :cond_0

    .line 6005
    iget-boolean v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v2, :cond_3

    .line 6014
    iput-boolean v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 6015
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v5, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1

    .line 6024
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 6025
    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v3, v3, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 6024
    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 6026
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 5997
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "unstableDelta":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 5907
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5909
    .local v10, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "cpi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;

    .line 5919
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    .line 5918
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v7

    .line 5920
    .local v7, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v7, :cond_0

    .line 5921
    iput-boolean v5, v7, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 5922
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5927
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5928
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 5927
    invoke-interface {v0, v1, v10}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5905
    return-void

    .line 5929
    :catch_0
    move-exception v9

    .line 5930
    .local v9, "ex":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holder"    # Landroid/app/IActivityManager$ContentProviderHolder;
    .param p3, "info"    # Landroid/content/pm/ProviderInfo;
    .param p4, "noisy"    # Z
    .param p5, "noReleaseNeeded"    # Z
    .param p6, "stable"    # Z

    .prologue
    .line 6283
    const/4 v13, 0x0

    .line 6285
    .local v13, "localProvider":Landroid/content/ContentProvider;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 6286
    :cond_0
    if-eqz p4, :cond_1

    .line 6287
    const-string/jumbo v18, "ActivityThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Loading provider "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 6288
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 6287
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6290
    :cond_1
    const/4 v4, 0x0

    .line 6291
    .local v4, "c":Landroid/content/Context;
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6292
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 6293
    move-object/from16 v4, p1

    .line 6305
    .end local v4    # "c":Landroid/content/Context;
    :goto_0
    if-nez v4, :cond_4

    .line 6306
    const-string/jumbo v18, "ActivityThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unable to get context for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 6307
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 6306
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 6308
    const-string/jumbo v20, " while loading content provider "

    .line 6306
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 6309
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 6306
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6310
    const/16 v18, 0x0

    return-object v18

    .line 6294
    .restart local v4    # "c":Landroid/content/Context;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 6295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 6294
    if-eqz v18, :cond_3

    .line 6296
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .local v4, "c":Landroid/content/Context;
    goto :goto_0

    .line 6299
    .local v4, "c":Landroid/content/Context;
    :cond_3
    :try_start_0
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 6300
    const/16 v19, 0x1

    .line 6299
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .local v4, "c":Landroid/content/Context;
    goto :goto_0

    .line 6313
    .end local v4    # "c":Landroid/content/Context;
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 6315
    .local v5, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 6314
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/content/ContentProvider;

    move-object v13, v0

    .line 6316
    .local v13, "localProvider":Landroid/content/ContentProvider;
    invoke-virtual {v13}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v16

    .line 6317
    .local v16, "provider":Landroid/content/IContentProvider;
    if-nez v16, :cond_5

    .line 6318
    const-string/jumbo v18, "ActivityThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed to instantiate class "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 6319
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 6318
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 6319
    const-string/jumbo v20, " from sourceDir "

    .line 6318
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 6320
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 6318
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6321
    const/16 v18, 0x0

    return-object v18

    .line 6326
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6343
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    .end local v13    # "localProvider":Landroid/content/ContentProvider;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 6346
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 6347
    .local v12, "jBinder":Landroid/os/IBinder;
    if-eqz v13, :cond_9

    .line 6348
    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6349
    .local v7, "cname":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 6350
    .local v14, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v14, :cond_8

    .line 6355
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v16, v0

    .line 6364
    :goto_2
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    move-object/from16 v17, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v7    # "cname":Landroid/content/ComponentName;
    .end local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .local v17, "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    :goto_3
    monitor-exit v19

    .line 6400
    return-object v17

    .line 6327
    .end local v12    # "jBinder":Landroid/os/IBinder;
    .end local v16    # "provider":Landroid/content/IContentProvider;
    .end local v17    # "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v10

    .line 6328
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 6329
    new-instance v18, Ljava/lang/RuntimeException;

    .line 6330
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unable to get provider "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 6331
    const-string/jumbo v20, ": "

    .line 6330
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 6331
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    .line 6330
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 6329
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 6333
    :cond_6
    const/16 v18, 0x0

    return-object v18

    .line 6336
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "e":Ljava/lang/Exception;
    .local v13, "localProvider":Landroid/content/ContentProvider;
    :cond_7
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    move-object/from16 v16, v0

    .restart local v16    # "provider":Landroid/content/IContentProvider;
    goto/16 :goto_1

    .line 6357
    .end local v13    # "localProvider":Landroid/content/ContentProvider;
    .restart local v7    # "cname":Landroid/content/ComponentName;
    .restart local v12    # "jBinder":Landroid/os/IBinder;
    .restart local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_8
    :try_start_3
    new-instance v11, Landroid/app/IActivityManager$ContentProviderHolder;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6358
    .end local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .local v11, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_4
    move-object/from16 v0, v16

    iput-object v0, v11, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 6359
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v11, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 6360
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13, v11}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v14

    .line 6361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 p2, v11

    .end local v11    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    goto/16 :goto_2

    .line 6366
    .end local v7    # "cname":Landroid/content/ComponentName;
    .end local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityThread$ProviderRefCount;

    .line 6367
    .local v15, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v15, :cond_b

    .line 6375
    if-nez p5, :cond_a

    .line 6376
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v15, v1}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6378
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v18

    .line 6379
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    move-object/from16 v20, v0

    .line 6378
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, p6

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 6396
    :cond_a
    :goto_4
    :try_start_7
    iget-object v0, v15, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    move-object/from16 v17, v0

    .restart local v17    # "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    goto/16 :goto_3

    .line 6385
    .end local v17    # "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v13, v2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v6

    .line 6387
    .local v6, "client":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz p5, :cond_c

    .line 6388
    new-instance v15, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    const/16 v18, 0x3e8

    const/16 v20, 0x3e8

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v15, v0, v6, v1, v2}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .line 6394
    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 6343
    .end local v6    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v12    # "jBinder":Landroid/os/IBinder;
    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v18

    :goto_6
    monitor-exit v19

    throw v18

    .line 6390
    .restart local v6    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    .restart local v12    # "jBinder":Landroid/os/IBinder;
    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :cond_c
    if-eqz p6, :cond_d

    .line 6391
    :try_start_8
    new-instance v15, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    const/16 v18, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v15, v0, v6, v1, v2}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    goto :goto_5

    .line 6392
    :cond_d
    new-instance v15, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v15, v0, v6, v1, v2}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    goto :goto_5

    .line 6343
    .end local v6    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v7    # "cname":Landroid/content/ComponentName;
    .restart local v11    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_1
    move-exception v18

    move-object/from16 p2, v11

    .end local v11    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    goto :goto_6

    .line 6380
    .end local v7    # "cname":Landroid/content/ComponentName;
    .end local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catch_1
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 6301
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "jBinder":Landroid/os/IBinder;
    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v16    # "provider":Landroid/content/IContentProvider;
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v4, "c":Landroid/content/Context;
    .restart local v13    # "localProvider":Landroid/content/ContentProvider;
    :catch_2
    move-exception v8

    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method

.method private installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .locals 11
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "localProvider"    # Landroid/content/ContentProvider;
    .param p3, "holder"    # Landroid/app/IActivityManager$ContentProviderHolder;

    .prologue
    .line 6248
    iget-object v1, p3, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6249
    .local v2, "auths":[Ljava/lang/String;
    iget-object v1, p3, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 6251
    .local v9, "userId":I
    new-instance v0, Landroid/app/ActivityThread$ProviderClientRecord;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)V

    .line 6253
    .local v0, "pcr":Landroid/app/ActivityThread$ProviderClientRecord;
    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v6, v2, v1

    .line 6254
    .local v6, "auth":Ljava/lang/String;
    new-instance v8, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v8, v6, v9}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 6255
    .local v8, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 6256
    .local v7, "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v7, :cond_0

    .line 6257
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Content provider "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, v0, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v10, v10, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6258
    const-string/jumbo v10, " already published as "

    .line 6257
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6253
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6260
    :cond_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6263
    .end local v6    # "auth":Ljava/lang/String;
    .end local v7    # "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v8    # "key":Landroid/app/ActivityThread$ProviderKey;
    :cond_1
    return-object v0
.end method

.method public static isSystem()Z
    .locals 1

    .prologue
    .line 1973
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6635
    const-string/jumbo v4, "ActivityThreadMain"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6636
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 6641
    invoke-static {v6}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 6643
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 6646
    new-instance v4, Landroid/app/ActivityThread$EventLoggingReporter;

    invoke-direct {v4, v5}, Landroid/app/ActivityThread$EventLoggingReporter;-><init>(Landroid/app/ActivityThread$EventLoggingReporter;)V

    invoke-static {v4}, Llibcore/io/EventLogger;->setReporter(Llibcore/io/EventLogger$Reporter;)V

    .line 6651
    :try_start_0
    const-string/jumbo v4, "com.sec.tima.TimaKeyStoreProvider"

    .line 6650
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6652
    .local v2, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider;

    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6661
    .end local v2    # "keyStoreClass":Ljava/lang/Class;
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 6662
    .local v0, "configDir":Ljava/io/File;
    invoke-static {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    .line 6664
    const-string/jumbo v4, "<pre-initialized>"

    invoke-static {v4}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 6666
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 6668
    new-instance v3, Landroid/app/ActivityThread;

    invoke-direct {v3}, Landroid/app/ActivityThread;-><init>()V

    .line 6669
    .local v3, "thread":Landroid/app/ActivityThread;
    invoke-direct {v3, v6}, Landroid/app/ActivityThread;->attach(Z)V

    .line 6671
    sget-object v4, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 6672
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    sput-object v4, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 6681
    :cond_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 6682
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 6684
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Main thread loop unexpectedly exited"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6654
    .end local v0    # "configDir":Ljava/io/File;
    .end local v3    # "thread":Landroid/app/ActivityThread;
    :catch_0
    move-exception v1

    .line 6655
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ActivityThread"

    const-string/jumbo v5, "Unable to add TimaKeyStore provider"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6656
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onCoreSettingsChange()V
    .locals 17

    .prologue
    .line 4418
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v2, "debug_view_attributes"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v12, 0x1

    .line 4419
    .local v12, "debugViewAttributes":Z
    :goto_0
    sget-boolean v1, Landroid/view/View;->mDebugViewAttributes:Z

    if-eq v12, v1, :cond_1

    .line 4420
    sput-boolean v12, Landroid/view/View;->mDebugViewAttributes:Z

    .line 4423
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 4424
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 4425
    const/4 v10, 0x0

    move-object/from16 v1, p0

    .line 4424
    invoke-virtual/range {v1 .. v10}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;ZZ)V

    goto :goto_1

    .line 4418
    .end local v12    # "debugViewAttributes":Z
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    .end local v14    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v12, 0x0

    .restart local v12    # "debugViewAttributes":Z
    goto :goto_0

    .line 4428
    :cond_1
    sget-boolean v1, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_CUSTOM_BG_COLOR:Z

    if-eqz v1, :cond_5

    .line 4429
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v2, "navigationbar_current_color"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 4430
    .local v15, "naviBarColor":I
    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/app/ActivityThread;->mNavigationBarColor:I

    .line 4431
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Landroid/app/ActivityThread;->mNavigationBarColor:I

    if-eq v1, v15, :cond_4

    .line 4432
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 4433
    .restart local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4434
    .local v11, "activity":Landroid/app/Activity;
    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v16

    check-cast v16, Lcom/android/internal/policy/PhoneWindow;

    .line 4435
    .local v16, "win":Lcom/android/internal/policy/PhoneWindow;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/PhoneWindow;->getNavigationBarColor()I

    move-result v1

    if-eqz v1, :cond_3

    .line 4436
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/PhoneWindow;->setNavigationBarInternalColor(I)V

    goto :goto_2

    .line 4440
    .end local v11    # "activity":Landroid/app/Activity;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    .end local v14    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "win":Lcom/android/internal/policy/PhoneWindow;
    :cond_4
    move-object/from16 v0, p0

    iput v15, v0, Landroid/app/ActivityThread;->mNavigationBarColor:I

    .line 4416
    .end local v15    # "naviBarColor":I
    :cond_5
    return-void
.end method

.method private performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V
    .locals 10
    .param p1, "cb"    # Landroid/content/ComponentCallbacks2;
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;
    .param p4, "amOverrideConfig"    # Landroid/content/res/Configuration;
    .param p5, "reportToActivity"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 5056
    instance-of v7, p1, Landroid/app/Activity;

    if-eqz v7, :cond_0

    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    move-object v0, v7

    .line 5057
    .local v0, "activity":Landroid/app/Activity;
    :cond_0
    if-eqz v0, :cond_1

    .line 5058
    iput-boolean v8, v0, Landroid/app/Activity;->mCalled:Z

    .line 5061
    :cond_1
    const/4 v6, 0x0

    .line 5062
    .local v6, "shouldChangeConfig":Z
    if-eqz v0, :cond_2

    iget-object v7, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    if-nez v7, :cond_9

    .line 5063
    :cond_2
    const/4 v6, 0x1

    .line 5074
    :cond_3
    :goto_0
    if-eqz v6, :cond_8

    .line 5079
    const/4 v3, 0x0

    .line 5080
    .local v3, "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    instance-of v7, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v7, :cond_4

    move-object v2, p1

    .line 5081
    check-cast v2, Landroid/view/ContextThemeWrapper;

    .line 5082
    .local v2, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 5089
    .end local v2    # "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    .end local v3    # "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    :cond_4
    if-eqz p2, :cond_5

    .line 5093
    invoke-static {p4, v3}, Landroid/app/ActivityThread;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v5

    .line 5095
    .local v5, "finalOverrideConfig":Landroid/content/res/Configuration;
    iget-object v7, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v7, p2, v5}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 5098
    .end local v5    # "finalOverrideConfig":Landroid/content/res/Configuration;
    :cond_5
    if-eqz p5, :cond_6

    .line 5102
    invoke-static {p3, v3}, Landroid/app/ActivityThread;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 5104
    .local v1, "configToReport":Landroid/content/res/Configuration;
    invoke-interface {p1, v1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5107
    .end local v1    # "configToReport":Landroid/content/res/Configuration;
    :cond_6
    if-eqz v0, :cond_8

    .line 5108
    if-eqz p5, :cond_7

    iget-boolean v7, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz v7, :cond_a

    .line 5113
    :cond_7
    iput v8, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5114
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v7, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 5052
    :cond_8
    return-void

    .line 5068
    :cond_9
    iget-object v7, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, p3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    .line 5069
    .local v4, "diff":I
    if-eqz v4, :cond_3

    .line 5070
    const/4 v6, 0x1

    goto :goto_0

    .line 5109
    .end local v4    # "diff":I
    :cond_a
    new-instance v7, Landroid/util/SuperNotCalledException;

    .line 5110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5111
    const-string/jumbo v9, " did not call through to super.onConfigurationChanged()"

    .line 5110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5109
    invoke-direct {v7, v8}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Z)V
    .locals 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "newBaseConfig"    # Landroid/content/res/Configuration;
    .param p3, "reportToActivity"    # Z

    .prologue
    .line 5011
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5012
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    .line 5013
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 5015
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    .line 5017
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 5010
    return-void
.end method

.method private performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4529
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4530
    .local v3, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v0, 0x0

    .line 4532
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v3, :cond_6

    .line 4533
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4534
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v5, v4, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v5, p3

    iput v5, v4, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4535
    if-eqz p2, :cond_0

    .line 4536
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v6, v4, Landroid/app/Activity;->mFinished:Z

    .line 4539
    :cond_0
    const-string/jumbo v4, "destroy"

    invoke-direct {p0, v3, v4}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 4541
    iget-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v4, :cond_2

    .line 4543
    :try_start_0
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    invoke-virtual {v4, v5}, Landroid/app/Activity;->performStop(Z)V
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4554
    :cond_1
    iput-boolean v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 4555
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 4556
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string/jumbo v5, "destroy"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 4555
    const/16 v5, 0x7561

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4558
    :cond_2
    if-eqz p4, :cond_3

    .line 4561
    :try_start_1
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    move-result-object v4

    .line 4560
    iput-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 4572
    :cond_3
    :try_start_2
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/app/Activity;->mCalled:Z

    .line 4573
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 4574
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v4, :cond_4

    .line 4575
    new-instance v4, Landroid/util/SuperNotCalledException;

    .line 4576
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4577
    const-string/jumbo v6, " did not call through to super.onDestroy()"

    .line 4576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4575
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Landroid/util/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 4582
    :catch_0
    move-exception v1

    .line 4583
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1

    .line 4546
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v2

    .line 4547
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4548
    new-instance v4, Ljava/lang/RuntimeException;

    .line 4549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to stop activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4550
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 4549
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4551
    const-string/jumbo v6, ": "

    .line 4549
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4551
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4549
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4548
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4544
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 4545
    .restart local v1    # "e":Landroid/util/SuperNotCalledException;
    throw v1

    .line 4562
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :catch_3
    move-exception v2

    .line 4563
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4564
    new-instance v4, Ljava/lang/RuntimeException;

    .line 4565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to retain activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4566
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 4565
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4567
    const-string/jumbo v6, ": "

    .line 4565
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4567
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4565
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4564
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4579
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v4, :cond_5

    .line 4580
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->closeAllPanels()V
    :try_end_3
    .catch Landroid/util/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 4593
    :cond_5
    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->getInstance()Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;

    move-result-object v4

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v4, v5}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;->removeContext(Landroid/content/Context;)V

    .line 4597
    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_6
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4598
    invoke-static {v0}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 4599
    return-object v3

    .line 4584
    .restart local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :catch_4
    move-exception v2

    .line 4585
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 4586
    new-instance v4, Ljava/lang/RuntimeException;

    .line 4587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to destroy activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4588
    const-string/jumbo v6, ": "

    .line 4587
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4588
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4587
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4586
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 25
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    .prologue
    .line 2788
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    .line 2789
    .local v19, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    if-nez v4, :cond_0

    .line 2790
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 2791
    const/4 v6, 0x1

    .line 2790
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 2794
    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    .line 2795
    .local v21, "component":Landroid/content/ComponentName;
    if-nez v21, :cond_1

    .line 2796
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 2797
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2796
    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v21

    .line 2798
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2801
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2802
    new-instance v21, Landroid/content/ComponentName;

    .end local v21    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2803
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 2802
    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2806
    .restart local v21    # "component":Landroid/content/ComponentName;
    :cond_2
    const/4 v2, 0x0

    .line 2808
    .local v2, "activity":Landroid/app/Activity;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v4}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    .line 2809
    .local v20, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 2810
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 2809
    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v5, v6}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v2

    .line 2811
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 2812
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2813
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 2814
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 2815
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2826
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v20    # "cl":Ljava/lang/ClassLoader;
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v8

    .line 2836
    .local v8, "app":Landroid/app/Application;
    if-eqz v2, :cond_f

    .line 2837
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v3

    .line 2840
    .local v3, "appContext":Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->getInstance()Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    invoke-interface {v4, v5, v3}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;->createContext(Landroid/content/Context;Landroid/content/Context;)V

    .line 2848
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 2849
    .local v11, "title":Ljava/lang/CharSequence;
    new-instance v15, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v15, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2850
    .local v15, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v4, :cond_4

    .line 2851
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v15, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 2855
    :cond_4
    const/16 v18, 0x0

    .line 2856
    .local v18, "window":Landroid/view/Window;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v4, :cond_5

    .line 2857
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    move-object/from16 v18, v0

    .line 2858
    .local v18, "window":Landroid/view/Window;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 2859
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 2861
    .end local v18    # "window":Landroid/view/Window;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 2862
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 2863
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 2864
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v17, v0

    move-object/from16 v4, p0

    .line 2861
    invoke-virtual/range {v2 .. v18}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;)V

    .line 2866
    if-eqz p2, :cond_6

    .line 2867
    move-object/from16 v0, p2

    iput-object v0, v2, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 2869
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 2870
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/app/Activity;->mStartedActivity:Z

    .line 2871
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v24

    .line 2872
    .local v24, "theme":I
    if-eqz v24, :cond_7

    .line 2873
    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 2876
    :cond_7
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    .line 2877
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2878
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v4, v2, v5, v6}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 2882
    :goto_0
    iget-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    if-nez v4, :cond_9

    .line 2883
    new-instance v4, Landroid/util/SuperNotCalledException;

    .line 2884
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2885
    const-string/jumbo v6, " did not call through to super.onCreate()"

    .line 2884
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2883
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2922
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v8    # "app":Landroid/app/Application;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v24    # "theme":I
    :catch_0
    move-exception v22

    .line 2923
    .local v22, "e":Landroid/util/SuperNotCalledException;
    throw v22

    .line 2817
    .end local v22    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v23

    .line 2818
    .local v23, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v23

    invoke-virtual {v4, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2819
    new-instance v4, Ljava/lang/RuntimeException;

    .line 2820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to instantiate activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2821
    const-string/jumbo v6, ": "

    .line 2820
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2821
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2820
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2819
    move-object/from16 v0, v23

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2880
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v3    # "appContext":Landroid/content/Context;
    .restart local v8    # "app":Landroid/app/Application;
    .restart local v11    # "title":Ljava/lang/CharSequence;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v24    # "theme":I
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v5}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/util/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2925
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v8    # "app":Landroid/app/Application;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v24    # "theme":I
    :catch_2
    move-exception v23

    .line 2926
    .restart local v23    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v23

    invoke-virtual {v4, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 2927
    new-instance v4, Ljava/lang/RuntimeException;

    .line 2928
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to start activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2929
    const-string/jumbo v6, ": "

    .line 2928
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2929
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2928
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2927
    move-object/from16 v0, v23

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2887
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v3    # "appContext":Landroid/content/Context;
    .restart local v8    # "app":Landroid/app/Application;
    .restart local v11    # "title":Ljava/lang/CharSequence;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v24    # "theme":I
    :cond_9
    :try_start_3
    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2888
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2889
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_a

    .line 2890
    invoke-virtual {v2}, Landroid/app/Activity;->performStart()V

    .line 2891
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2893
    :cond_a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_c

    .line 2894
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2895
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v4, :cond_b

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v4, :cond_c

    .line 2896
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2897
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 2896
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 2903
    :cond_c
    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_f

    .line 2904
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    .line 2905
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2906
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2907
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 2906
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 2911
    :goto_2
    iget-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    if-nez v4, :cond_f

    .line 2912
    new-instance v4, Landroid/util/SuperNotCalledException;

    .line 2913
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2914
    const-string/jumbo v6, " did not call through to super.onPostCreate()"

    .line 2913
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2912
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2899
    :cond_d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v4, :cond_c

    .line 2900
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v5}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2909
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v5}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_2

    .line 2918
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v24    # "theme":I
    :cond_f
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2920
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/util/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2933
    .end local v8    # "app":Landroid/app/Application;
    :cond_10
    return-object v2
.end method

.method private performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 4108
    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v2, :cond_0

    .line 4110
    return-void

    .line 4114
    :cond_0
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mCalled:Z

    .line 4115
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 4116
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4117
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 4116
    const/16 v3, 0x7545

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4118
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_1

    .line 4119
    new-instance v2, Landroid/util/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4120
    const-string/jumbo v4, " did not call through to super.onPause()"

    .line 4119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4122
    :catch_0
    move-exception v0

    .line 4123
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0

    .line 4124
    .end local v0    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v1

    .line 4125
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4126
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to pause activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4127
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 4126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4127
    const-string/jumbo v4, ": "

    .line 4126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4127
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4130
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iput-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 4107
    return-void
.end method

.method private performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZLjava/lang/String;)V
    .locals 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "info"    # Landroid/app/ActivityThread$StopInfo;
    .param p3, "keepShown"    # Z
    .param p4, "saveState"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4194
    if-eqz p1, :cond_5

    .line 4195
    if-nez p3, :cond_1

    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v2, :cond_1

    .line 4196
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-eqz v2, :cond_0

    .line 4200
    return-void

    .line 4202
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 4203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Performing stop of activity that is already stopped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4204
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    .line 4203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4202
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4205
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "ActivityThread"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4206
    const-string/jumbo v2, "ActivityThread"

    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4210
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    invoke-direct {p0, p1, p5}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 4212
    if-eqz p2, :cond_2

    .line 4217
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p2, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4229
    :cond_2
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_3

    if-eqz p4, :cond_3

    .line 4230
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v2, :cond_3

    .line 4231
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4235
    :cond_3
    if-nez p3, :cond_5

    .line 4238
    :try_start_1
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->performStop(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4247
    :cond_4
    iput-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 4248
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 4249
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p5, v2, v3

    .line 4248
    const/16 v3, 0x7561

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4192
    :cond_5
    return-void

    .line 4218
    :catch_0
    move-exception v0

    .line 4219
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4220
    new-instance v2, Ljava/lang/RuntimeException;

    .line 4221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to save state of activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4222
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 4221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4223
    const-string/jumbo v4, ": "

    .line 4221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4223
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4220
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4239
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 4240
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4241
    new-instance v2, Ljava/lang/RuntimeException;

    .line 4242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to stop activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4243
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 4242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4244
    const-string/jumbo v4, ": "

    .line 4242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4244
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4241
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 2366
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2365
    return-void
.end method

.method private reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 12
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    const/4 v8, 0x0

    .line 3029
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v1

    .line 3030
    .local v1, "configurations":[Landroid/content/res/Configuration;
    if-nez v1, :cond_0

    .line 3031
    return-void

    .line 3033
    :cond_0
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 3034
    .local v3, "horizontal":Landroid/util/SparseIntArray;
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 3035
    .local v6, "vertical":Landroid/util/SparseIntArray;
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 3036
    .local v5, "smallest":Landroid/util/SparseIntArray;
    array-length v7, v1

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_4

    .line 3037
    aget-object v0, v1, v4

    .line 3038
    .local v0, "config":Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v7, :cond_1

    .line 3039
    iget v7, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 3041
    :cond_1
    iget v7, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v7, :cond_2

    .line 3042
    iget v7, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 3044
    :cond_2
    iget v7, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v7, :cond_3

    .line 3045
    iget v7, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 3036
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3049
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 3050
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v9

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v10

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v11

    .line 3049
    invoke-interface {v7, v8, v9, v10, v11}, Landroid/app/IActivityManager;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3028
    return-void

    .line 3051
    :catch_0
    move-exception v2

    .line 3052
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4603
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4604
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const-string/jumbo v1, "[Unknown]"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    .line 2735
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 2734
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;I)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    .line 2739
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 2738
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;II)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 2743
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 2742
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;III)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "seq"    # I

    .prologue
    .line 2765
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2766
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 2767
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2768
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2769
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2770
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 2771
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 2772
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2773
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2761
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;IIZ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    .prologue
    .line 2750
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2751
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2752
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2753
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 2754
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 2755
    if-eqz p5, :cond_0

    .line 2756
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2758
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2746
    return-void
.end method

.method private setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V
    .locals 6
    .param p1, "info"    # Landroid/app/LoadedApk;
    .param p2, "cacheDir"    # Ljava/io/File;

    .prologue
    const-wide/16 v4, 0x40

    .line 5463
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5465
    return-void

    .line 5467
    :cond_0
    const-string/jumbo v3, "setupGraphicsSupport"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5469
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 5470
    .local v2, "uid":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 5472
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 5473
    invoke-static {p2}, Landroid/view/ThreadedRenderer;->setupDiskCache(Ljava/io/File;)V

    .line 5474
    invoke-static {p2}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5479
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 5462
    return-void

    .line 5476
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v2    # "uid":I
    :catch_0
    move-exception v0

    .line 5477
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5478
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 5479
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 5478
    throw v3
.end method

.method public static systemMain()Landroid/app/ActivityThread;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6511
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6512
    invoke-static {v2}, Landroid/view/ThreadedRenderer;->disable(Z)V

    .line 6516
    :goto_0
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 6517
    .local v0, "thread":Landroid/app/ActivityThread;
    invoke-direct {v0, v2}, Landroid/app/ActivityThread;->attach(Z)V

    .line 6518
    return-object v0

    .line 6514
    .end local v0    # "thread":Landroid/app/ActivityThread;
    :cond_0
    invoke-static {}, Landroid/view/ThreadedRenderer;->enableForegroundTrimming()V

    goto :goto_0
.end method

.method private updateConfigurationForDexCompatIfNeeded(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "activityOverrideConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 6763
    return-void
.end method

.method private updateDefaultDensity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5484
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 5485
    .local v0, "densityDpi":I
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    if-nez v1, :cond_0

    .line 5486
    if-eqz v0, :cond_0

    .line 5487
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    if-eq v0, v1, :cond_0

    .line 5488
    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 5489
    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 5496
    :cond_0
    iget v1, p0, Landroid/app/ActivityThread;->mDssScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 5497
    iget v1, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    sput v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 5498
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-static {v1}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 5499
    iget v1, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    int-to-float v1, v1

    iget v2, p0, Landroid/app/ActivityThread;->mDssScale:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Landroid/content/res/ResourcesImpl;->setLoadDensityDpi(I)V

    .line 5483
    :goto_0
    return-void

    .line 5501
    :cond_1
    invoke-static {v3}, Landroid/content/res/ResourcesImpl;->setLoadDensityDpi(I)V

    goto :goto_0
.end method

.method private updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newLocaleList"    # Landroid/os/LocaleList;

    .prologue
    .line 5537
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 5538
    .local v0, "bestLocale":Ljava/util/Locale;
    invoke-virtual {p2}, Landroid/os/LocaleList;->size()I

    move-result v2

    .line 5539
    .local v2, "newLocaleListSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 5540
    invoke-virtual {p2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5541
    invoke-static {p2, v1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 5542
    return-void

    .line 5539
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5549
    :cond_1
    new-instance v3, Landroid/os/LocaleList;

    invoke-direct {v3, v0, p2}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    invoke-static {v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 5536
    return-void
.end method

.method private updatePackageInfosLocked(Landroid/util/ArrayMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "packageInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;>;"
    const/4 v6, 0x0

    .line 5152
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ref$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 5153
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoadedApk;

    move-object v2, v5

    .line 5154
    .local v2, "pkgInfo":Landroid/app/LoadedApk;
    :goto_1
    if-eqz v2, :cond_0

    .line 5157
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 5158
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 5160
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 5159
    const/4 v9, 0x0

    .line 5157
    invoke-interface {v5, v7, v9, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5161
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 5162
    const-string/jumbo v5, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Resetting overlays for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5163
    const-string/jumbo v8, " overlays = "

    .line 5162
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5163
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 5162
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5164
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/app/LoadedApk;->setOverlayDirs([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5168
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 5170
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "pkgInfo":Landroid/app/LoadedApk;
    :cond_1
    move-object v2, v6

    .line 5153
    goto :goto_1

    .line 5151
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2
    return-void
.end method

.method private updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "show"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4255
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4256
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 4257
    if-eqz p2, :cond_2

    .line 4258
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v1, :cond_0

    .line 4259
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 4260
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 4261
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_0

    .line 4262
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    .line 4265
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    .line 4266
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, p1, v1, v3}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Z)V

    .line 4270
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 4254
    :cond_1
    :goto_0
    return-void

    .line 4273
    :cond_2
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v1, :cond_1

    .line 4274
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 4275
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 4276
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .prologue
    const/4 v9, 0x0

    .line 6036
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 6037
    :try_start_0
    new-instance v1, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v1, p2, p3}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 6038
    .local v1, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6039
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-nez v2, :cond_0

    monitor-exit v6

    .line 6040
    return-object v9

    .line 6043
    :cond_0
    :try_start_1
    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 6044
    .local v4, "provider":Landroid/content/IContentProvider;
    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 6045
    .local v0, "jBinder":Landroid/os/IBinder;
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-nez v5, :cond_1

    .line 6048
    const-string/jumbo v5, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Acquiring provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6049
    const-string/jumbo v8, ": existing object\'s process dead"

    .line 6048
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6050
    const/4 v5, 0x1

    invoke-virtual {p0, v0, v5}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 6051
    return-object v9

    .line 6056
    :cond_1
    :try_start_2
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 6057
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_2

    .line 6058
    invoke-direct {p0, v3, p4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v6

    .line 6060
    return-object v4

    .line 6036
    .end local v0    # "jBinder":Landroid/os/IBinder;
    .end local v1    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "provider":Landroid/content/IContentProvider;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public final acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 5936
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v8

    .line 5937
    .local v8, "provider":Landroid/content/IContentProvider;
    if-eqz v8, :cond_0

    .line 5938
    return-object v8

    .line 5947
    :cond_0
    const/4 v2, 0x0

    .line 5949
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5950
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 5949
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 5954
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    if-nez v2, :cond_1

    .line 5955
    const-string/jumbo v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to find provider info for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5956
    return-object v4

    .line 5951
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catch_0
    move-exception v7

    .line 5952
    .local v7, "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 5961
    .end local v7    # "ex":Landroid/os/RemoteException;
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_1
    iget-object v3, v2, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 5962
    iget-boolean v5, v2, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    .line 5961
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v2

    .line 5963
    iget-object v0, v2, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method final appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "provider"    # Landroid/os/IBinder;

    .prologue
    .line 6233
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 6234
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6235
    .local v1, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v1, :cond_0

    .line 6237
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 6238
    iget-object v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v4, v4, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 6237
    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v3

    .line 6232
    return-void

    .line 6239
    :catch_0
    move-exception v0

    .line 6240
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6233
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method final applyCompatConfiguration(I)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "displayDensity"    # I

    .prologue
    .line 5134
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 5135
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_0

    .line 5136
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 5138
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5139
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 5140
    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 5139
    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyCompatConfigurationLocked(ILandroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5141
    iget-object v0, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 5143
    :cond_1
    return-object v0
.end method

.method applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v0, 0x0

    .line 2015
    if-nez p2, :cond_0

    .line 2016
    return-object v0

    .line 2018
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2019
    iget-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2020
    iget-object p2, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 2021
    invoke-virtual {p3, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 2023
    :cond_1
    return-object p2
.end method

.method public final applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 5120
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 5123
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 5124
    iget-object v0, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->updatePackageInfosLocked(Landroid/util/ArrayMap;)V

    .line 5125
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->updatePackageInfosLocked(Landroid/util/ArrayMap;)V

    .line 5129
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 5119
    return-void

    .line 5120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "allActivities"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4950
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4952
    .local v6, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    iget-object v10, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v10

    .line 4953
    :try_start_0
    iget-object v9, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4954
    .local v1, "NAPP":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_0

    .line 4955
    iget-object v9, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentCallbacks2;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4954
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4957
    :cond_0
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4958
    .local v0, "NACT":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_4

    .line 4959
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4960
    .local v5, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v4, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4961
    .local v4, "a":Landroid/app/Activity;
    if-eqz v4, :cond_2

    .line 4963
    iget v9, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 4964
    iget-object v11, v5, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v11}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    .line 4962
    invoke-virtual {p0, v9, p2, v11}, Landroid/app/ActivityThread;->applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;

    move-result-object v8

    .line 4965
    .local v8, "thisConfig":Landroid/content/res/Configuration;
    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v9, v9, Landroid/app/Activity;->mFinished:Z

    if-nez v9, :cond_1

    if-nez p1, :cond_3

    iget-boolean v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v9, :cond_3

    .line 4969
    :cond_1
    if-eqz v8, :cond_2

    .line 4979
    iput-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 4958
    .end local v8    # "thisConfig":Landroid/content/res/Configuration;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4968
    .restart local v8    # "thisConfig":Landroid/content/res/Configuration;
    :cond_3
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 4952
    .end local v0    # "NACT":I
    .end local v1    # "NAPP":I
    .end local v4    # "a":Landroid/app/Activity;
    .end local v5    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v7    # "i":I
    .end local v8    # "thisConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 4983
    .restart local v0    # "NACT":I
    .restart local v1    # "NAPP":I
    .restart local v7    # "i":I
    :cond_4
    :try_start_1
    iget-object v9, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 4984
    .local v3, "NSVC":I
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_5

    .line 4985
    iget-object v9, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentCallbacks2;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4984
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    monitor-exit v10

    .line 4988
    iget-object v10, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 4989
    :try_start_2
    iget-object v9, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 4990
    .local v2, "NPRV":I
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v2, :cond_6

    .line 4991
    iget-object v9, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v9, v9, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4990
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    monitor-exit v10

    .line 4995
    return-object v6

    .line 4988
    .end local v2    # "NPRV":I
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method final completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .locals 9
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;

    .prologue
    .line 6154
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 6155
    :try_start_0
    iget-boolean v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    monitor-exit v7

    .line 6161
    return-void

    .line 6167
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 6169
    iget-object v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v6, v6, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 6170
    .local v3, "jBinder":Landroid/os/IBinder;
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;

    .line 6171
    .local v1, "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    if-ne v1, p1, :cond_1

    .line 6172
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6175
    :cond_1
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 6176
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 6177
    .local v5, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 6178
    .local v4, "myBinder":Landroid/os/IBinder;
    if-ne v4, v3, :cond_2

    .line 6179
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6175
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v4    # "myBinder":Landroid/os/IBinder;
    .end local v5    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_3
    monitor-exit v7

    .line 6189
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 6190
    iget-object v7, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v7, v7, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v8, 0x0

    .line 6189
    invoke-interface {v6, v7, v8}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6153
    :goto_1
    return-void

    .line 6154
    .end local v1    # "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v2    # "i":I
    .end local v3    # "jBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 6191
    .restart local v1    # "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    .restart local v2    # "i":I
    .restart local v3    # "jBinder":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method doGcIfNeeded()V
    .locals 6

    .prologue
    .line 2344
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2345
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2348
    .local v0, "now":J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 2350
    const-string/jumbo v2, "bg"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 2343
    :cond_0
    return-void
.end method

.method public dumpIntArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 3646
    if-nez p1, :cond_0

    .line 3647
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " { }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3649
    return-void

    .line 3651
    :cond_0
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3655
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3657
    :cond_1
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3658
    const-string/jumbo v1, "}"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3645
    return-void
.end method

.method ensureJitEnabled()V
    .locals 1

    .prologue
    .line 2321
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    if-nez v0, :cond_0

    .line 2322
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 2323
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 2320
    :cond_0
    return-void
.end method

.method final finishInstrumentation(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .prologue
    .line 5890
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5891
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v2, v2, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    if-eqz v2, :cond_0

    .line 5892
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_0

    .line 5893
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 5898
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v2, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5889
    return-void

    .line 5899
    :catch_0
    move-exception v1

    .line 5900
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2721
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .locals 1

    .prologue
    .line 2267
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    .line 6794
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    .line 6795
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 6797
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public getDssScale()F
    .locals 1

    .prologue
    .line 6743
    iget v0, p0, Landroid/app/ActivityThread;->mDssScale:F

    return v0
.end method

.method final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .prologue
    .line 2272
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 6528
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 6529
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 6530
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 6532
    return p2

    .line 6528
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 2285
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2106
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    move v5, v0

    .line 2107
    .local v5, "includeCode":Z
    :cond_0
    if-eqz v5, :cond_4

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v1, :cond_4

    .line 2108
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_3

    .line 2109
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v2, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    .line 2111
    .local v4, "securityViolation":Z
    :goto_0
    if-eqz v5, :cond_5

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p3

    if-eqz v1, :cond_5

    const/4 v6, 0x1

    .line 2112
    .local v6, "registerPackage":Z
    :goto_1
    and-int/lit8 v1, p3, 0x3

    if-ne v1, v0, :cond_6

    .line 2115
    if-eqz v4, :cond_6

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Requesting code from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2117
    const-string/jumbo v1, " (with uid "

    .line 2116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2117
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2117
    const-string/jumbo v1, ")"

    .line 2116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2118
    .local v7, "msg":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_1

    .line 2119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to be run in process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2120
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 2119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2120
    const-string/jumbo v1, " (with uid "

    .line 2119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2121
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2121
    const-string/jumbo v1, ")"

    .line 2119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2123
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2109
    .end local v4    # "securityViolation":Z
    .end local v6    # "registerPackage":Z
    .end local v7    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "securityViolation":Z
    goto :goto_0

    .line 2110
    .end local v4    # "securityViolation":Z
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "securityViolation":Z
    goto :goto_0

    .line 2107
    .end local v4    # "securityViolation":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "securityViolation":Z
    goto :goto_0

    .line 2111
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "registerPackage":Z
    goto :goto_1

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2126
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;I)Landroid/app/LoadedApk;
    .locals 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 2173
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    move v5, v0

    .line 2174
    .local v5, "includeCode":Z
    :cond_0
    if-eqz v5, :cond_4

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v1, :cond_4

    .line 2175
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_3

    .line 2176
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v2, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    .line 2178
    .local v4, "securityViolation":Z
    :goto_0
    if-eqz v5, :cond_5

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p4

    if-eqz v1, :cond_5

    const/4 v6, 0x1

    .line 2179
    .local v6, "registerPackage":Z
    :goto_1
    and-int/lit8 v1, p4, 0x3

    if-ne v1, v0, :cond_6

    .line 2182
    if-eqz v4, :cond_6

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Requesting code from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2184
    const-string/jumbo v1, " (with uid "

    .line 2183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2184
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2184
    const-string/jumbo v1, ")"

    .line 2183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2185
    .local v7, "msg":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_1

    .line 2186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to be run in process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2187
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 2186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2187
    const-string/jumbo v1, " (with uid "

    .line 2186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2188
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2188
    const-string/jumbo v1, ")"

    .line 2186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2190
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2176
    .end local v4    # "securityViolation":Z
    .end local v6    # "registerPackage":Z
    .end local v7    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "securityViolation":Z
    goto :goto_0

    .line 2177
    .end local v4    # "securityViolation":Z
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "securityViolation":Z
    goto :goto_0

    .line 2174
    .end local v4    # "securityViolation":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "securityViolation":Z
    goto :goto_0

    .line 2178
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "registerPackage":Z
    goto :goto_1

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2193
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .prologue
    .line 2052
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2057
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v5, p4, :cond_1

    const/4 v1, 0x1

    .line 2058
    .local v1, "differentUser":Z
    :goto_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v7

    .line 2060
    if-eqz v1, :cond_2

    .line 2062
    const/4 v4, 0x0

    .line 2069
    :goto_1
    if-eqz v4, :cond_4

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoadedApk;

    move-object v3, v5

    .line 2073
    .local v3, "packageInfo":Landroid/app/LoadedApk;
    :goto_2
    if-eqz v3, :cond_6

    iget-object v5, v3, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v5, :cond_0

    .line 2074
    iget-object v5, v3, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v5

    .line 2073
    if-eqz v5, :cond_6

    .line 2075
    :cond_0
    invoke-virtual {v3}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2076
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_5

    .line 2077
    new-instance v5, Ljava/lang/SecurityException;

    .line 2078
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Requesting code from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2079
    const-string/jumbo v8, " to be run in process "

    .line 2078
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2080
    iget-object v8, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v8, v8, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 2078
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2081
    const-string/jumbo v8, "/"

    .line 2078
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2081
    iget-object v8, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v8, v8, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2078
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2077
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2058
    .end local v3    # "packageInfo":Landroid/app/LoadedApk;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    .line 2057
    .end local v1    # "differentUser":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "differentUser":Z
    goto :goto_0

    .line 2063
    :cond_2
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_3

    .line 2064
    :try_start_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    .line 2066
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_3
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_4
    move-object v3, v6

    .line 2069
    goto :goto_2

    .restart local v3    # "packageInfo":Landroid/app/LoadedApk;
    :cond_5
    monitor-exit v7

    .line 2083
    return-object v3

    :cond_6
    monitor-exit v7

    .line 2087
    const/4 v0, 0x0

    .line 2089
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 2090
    const v7, 0x10000400

    .line 2089
    invoke-interface {v5, p1, v7, p4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 2097
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_7

    .line 2098
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v5

    return-object v5

    .line 2093
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 2094
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 2101
    .end local v2    # "e":Landroid/os/RemoteException;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :cond_7
    return-object v6
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;II)Landroid/app/LoadedApk;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "flags"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2133
    iget-object v6, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v6

    .line 2135
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1

    .line 2136
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 2140
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk;

    move-object v2, v4

    .line 2141
    .local v2, "packageInfo":Landroid/app/LoadedApk;
    :goto_1
    if-eqz v2, :cond_4

    iget-object v4, v2, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v4, :cond_0

    .line 2142
    iget-object v4, v2, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v4

    .line 2141
    if-eqz v4, :cond_4

    .line 2143
    :cond_0
    invoke-virtual {v2}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2144
    and-int/lit8 v4, p4, 0x2

    if-nez v4, :cond_3

    .line 2145
    new-instance v4, Ljava/lang/SecurityException;

    .line 2146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Requesting code from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2147
    const-string/jumbo v7, " to be run in process "

    .line 2146
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2148
    iget-object v7, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 2146
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2149
    const-string/jumbo v7, "/"

    .line 2146
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2149
    iget-object v7, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2146
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2145
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2133
    .end local v2    # "packageInfo":Landroid/app/LoadedApk;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .line 2138
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    :cond_2
    move-object v2, v5

    .line 2140
    goto :goto_1

    .restart local v2    # "packageInfo":Landroid/app/LoadedApk;
    :cond_3
    monitor-exit v6

    .line 2151
    return-object v2

    :cond_4
    monitor-exit v6

    .line 2155
    const/4 v0, 0x0

    .line 2157
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 2158
    const/16 v6, 0x400

    .line 2157
    invoke-interface {v4, p1, v6, p5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 2163
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_2
    if-eqz v0, :cond_5

    .line 2164
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;I)Landroid/app/LoadedApk;

    move-result-object v4

    return-object v4

    .line 2167
    :cond_5
    return-object v5

    .line 2159
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .locals 7
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v4, 0x0

    .line 2199
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2293
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2281
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemContext()Landroid/app/ContextImpl;
    .locals 3

    .prologue
    .line 2297
    monitor-enter p0

    .line 2298
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_0

    .line 2299
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 2303
    invoke-static {}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge;->getInstance()Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/bridge/multiscreen/common/ContextRelationManagerBridge$IContextRelationManagerBridge;->createContext(Landroid/content/Context;Landroid/content/Context;)V

    .line 2307
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThemeAppIconMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6569
    sget-object v1, Landroid/app/ActivityThread;->sThemeSync:Ljava/lang/Object;

    monitor-enter v1

    .line 6570
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 6571
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6572
    :try_start_1
    invoke-direct {p0}, Landroid/app/ActivityThread;->getThemeResourceFromMappingTable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit v1

    .line 6576
    iget-object v0, p0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    return-object v0

    .line 6571
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v0

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6569
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getTopActivityInstance()Landroid/app/Activity;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6750
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 6751
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6752
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6753
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6754
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 6751
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    monitor-exit v3

    .line 6758
    return-object v4

    .line 6750
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 8
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "pkgInfo"    # Landroid/app/LoadedApk;

    .prologue
    .line 2035
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 2034
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/LoadedApk;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/LoadedApk;I)Landroid/content/res/Resources;
    .locals 12
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "pkgInfo"    # Landroid/app/LoadedApk;
    .param p7, "userId"    # I

    .prologue
    .line 2041
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2042
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 2043
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2041
    const/4 v1, 0x0

    .line 2042
    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v11, p7

    .line 2041
    invoke-virtual/range {v0 .. v11}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method final handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;Z)V
    .locals 3
    .param p1, "data"    # Landroid/app/ActivityThread$ActivityConfigChangeData;
    .param p2, "reportToActivity"    # Z

    .prologue
    .line 5261
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5262
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 5263
    :cond_0
    return-void

    .line 5274
    :cond_1
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 5275
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0, v1, p2}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Z)V

    .line 5276
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5260
    return-void
.end method

.method public handleCancelVisibleBehind(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 3153
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3154
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_1

    .line 3155
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 3156
    iget-object v0, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3157
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v3, v0, Landroid/app/Activity;->mVisibleBehind:Z

    if-eqz v3, :cond_1

    .line 3158
    iput-boolean v4, v0, Landroid/app/Activity;->mCalled:Z

    .line 3159
    invoke-virtual {v0}, Landroid/app/Activity;->onVisibleBehindCanceled()V

    .line 3161
    iget-boolean v3, v0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_0

    .line 3162
    new-instance v3, Landroid/util/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3163
    const-string/jumbo v5, " did not call through to super.onVisibleBehindCanceled()"

    .line 3162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3165
    :cond_0
    iput-boolean v4, v0, Landroid/app/Activity;->mVisibleBehind:Z

    .line 3169
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/app/IActivityManager;->backgroundResourcesReleased(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3152
    return-void

    .line 3170
    :catch_0
    move-exception v1

    .line 3171
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method final handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 13
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 5179
    const/4 v9, 0x0

    .line 5181
    .local v9, "configDiff":I
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v3

    .line 5182
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1

    .line 5183
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5184
    iget-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 5185
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 5186
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 5188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5191
    :cond_1
    if-nez p1, :cond_2

    monitor-exit v3

    .line 5192
    return-void

    .line 5200
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    const/high16 v4, 0x10000

    and-int/2addr v0, v4

    if-eqz v0, :cond_3

    .line 5201
    iget-object v0, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->updatePackageInfosLocked(Landroid/util/ArrayMap;)V

    .line 5202
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->updatePackageInfosLocked(Landroid/util/ArrayMap;)V

    .line 5207
    :cond_3
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 5208
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5209
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v4}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 5208
    invoke-direct {p0, v0, v4}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    .line 5211
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_4

    .line 5212
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 5214
    :cond_4
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    if-nez p2, :cond_5

    monitor-exit v3

    .line 5215
    return-void

    .line 5218
    :cond_5
    :try_start_2
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v9

    .line 5219
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;

    move-result-object p1

    .line 5221
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    .line 5222
    .local v11, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v11}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    and-int/2addr v0, v9

    if-eqz v0, :cond_6

    .line 5223
    invoke-virtual {v11}, Landroid/content/res/Resources$Theme;->rebase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit v3

    .line 5227
    invoke-virtual {p0, v12, p1}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v8

    .line 5229
    .local v8, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-static {v9}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 5231
    if-eqz v8, :cond_8

    .line 5232
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5233
    .local v6, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v6, :cond_8

    .line 5234
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentCallbacks2;

    .line 5235
    .local v1, "cb":Landroid/content/ComponentCallbacks2;
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_7

    move-object v7, v1

    .line 5238
    check-cast v7, Landroid/app/Activity;

    .line 5239
    .local v7, "a":Landroid/app/Activity;
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {p0, v0, p1, v5}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Z)V

    .line 5233
    .end local v7    # "a":Landroid/app/Activity;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 5181
    .end local v1    # "cb":Landroid/content/ComponentCallbacks2;
    .end local v6    # "N":I
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    .end local v10    # "i":I
    .end local v11    # "systemTheme":Landroid/content/res/Resources$Theme;
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .restart local v1    # "cb":Landroid/content/ComponentCallbacks2;
    .restart local v6    # "N":I
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    .restart local v10    # "i":I
    .restart local v11    # "systemTheme":Landroid/content/res/Resources$Theme;
    :cond_7
    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    .line 5242
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    goto :goto_1

    .line 5177
    .end local v1    # "cb":Landroid/content/ComponentCallbacks2;
    .end local v6    # "N":I
    .end local v10    # "i":I
    :cond_8
    return-void
.end method

.method final handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 17
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .prologue
    .line 5342
    const/4 v6, 0x0

    .line 5343
    .local v6, "hasPkgInfo":Z
    packed-switch p1, :pswitch_data_0

    .line 5423
    :cond_0
    :goto_0
    :pswitch_0
    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 5341
    return-void

    .line 5347
    :pswitch_1
    if-nez p1, :cond_3

    const/4 v8, 0x1

    .line 5348
    .local v8, "killApp":Z
    :goto_1
    if-eqz p2, :cond_0

    .line 5351
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v14

    .line 5352
    :try_start_0
    move-object/from16 v0, p2

    array-length v13, v0

    add-int/lit8 v7, v13, -0x1

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_5

    .line 5353
    if-nez v6, :cond_1

    .line 5354
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v15, p2, v7

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    .line 5355
    .local v12, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 5356
    const/4 v6, 0x1

    .line 5364
    .end local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    :goto_3
    if-eqz v8, :cond_2

    .line 5365
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v15, p2, v7

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5366
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v15, p2, v7

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5352
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 5347
    .end local v7    # "i":I
    .end local v8    # "killApp":Z
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "killApp":Z
    goto :goto_1

    .line 5358
    .restart local v7    # "i":I
    .restart local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v15, p2, v7

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    check-cast v12, Ljava/lang/ref/WeakReference;

    .line 5359
    .restart local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    if-eqz v13, :cond_1

    .line 5360
    const/4 v6, 0x1

    goto :goto_3

    .end local v8    # "killApp":Z
    .end local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_5
    monitor-exit v14

    goto :goto_0

    .line 5351
    .end local v7    # "i":I
    .restart local v8    # "killApp":Z
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 5374
    .end local v8    # "killApp":Z
    :pswitch_2
    if-eqz p2, :cond_0

    .line 5377
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v14

    .line 5378
    :try_start_1
    move-object/from16 v0, p2

    array-length v13, v0

    add-int/lit8 v7, v13, -0x1

    .restart local v7    # "i":I
    :goto_4
    if-ltz v7, :cond_5

    .line 5379
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v15, p2, v7

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    .line 5380
    .restart local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/LoadedApk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5381
    :goto_5
    if-eqz v11, :cond_a

    .line 5382
    const/4 v6, 0x1

    .line 5394
    :cond_6
    :goto_6
    if-eqz v11, :cond_8

    .line 5396
    :try_start_2
    aget-object v10, p2, v7

    .line 5398
    .local v10, "packageName":Ljava/lang/String;
    sget-object v13, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 5401
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    .line 5400
    const/16 v16, 0x0

    .line 5398
    move/from16 v0, v16

    invoke-interface {v13, v10, v0, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 5403
    .local v2, "aInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 5404
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ar$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5405
    .local v3, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v13, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 5407
    iget-object v13, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v2, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5408
    iput-object v11, v3, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    .line 5415
    .end local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v4    # "ar$iterator":Ljava/util/Iterator;
    .end local v10    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 5378
    :cond_8
    :goto_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 5380
    :cond_9
    const/4 v11, 0x0

    .local v11, "pkgInfo":Landroid/app/LoadedApk;
    goto :goto_5

    .line 5384
    .end local v11    # "pkgInfo":Landroid/app/LoadedApk;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v15, p2, v7

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    check-cast v12, Ljava/lang/ref/WeakReference;

    .line 5385
    .restart local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/LoadedApk;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v11, v13

    .line 5386
    .local v11, "pkgInfo":Landroid/app/LoadedApk;
    :goto_9
    if-eqz v11, :cond_6

    .line 5387
    const/4 v6, 0x1

    goto :goto_6

    .line 5385
    .end local v11    # "pkgInfo":Landroid/app/LoadedApk;
    :cond_b
    const/4 v11, 0x0

    goto :goto_9

    .line 5413
    .restart local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "packageName":Ljava/lang/String;
    :cond_c
    :try_start_4
    sget-object v13, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v13, v10}, Landroid/content/pm/IPackageManager;->getPreviousCodePaths(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 5414
    .local v9, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v11, v2, v9}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    .line 5377
    .end local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "i":I
    .end local v9    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_1
    move-exception v13

    monitor-exit v14

    throw v13

    .line 5343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 3183
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3185
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3187
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3182
    return-void

    .line 3186
    :catchall_0
    move-exception v1

    .line 3187
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3186
    throw v1
.end method

.method final handleLowMemory()V
    .locals 6

    .prologue
    .line 5427
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5429
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5430
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5431
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentCallbacks2;

    invoke-interface {v4}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    .line 5430
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5435
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_1

    .line 5436
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v3

    .line 5437
    .local v3, "sqliteReleased":I
    const v4, 0x124fb

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5441
    .end local v3    # "sqliteReleased":I
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 5444
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 5446
    const-string/jumbo v4, "mem"

    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 5426
    return-void
.end method

.method public handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 3176
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3177
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3178
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onBackgroundVisibleBehindChanged(Z)V

    .line 3175
    :cond_0
    return-void
.end method

.method final handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 5
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .prologue
    .line 5280
    if-eqz p1, :cond_0

    .line 5284
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v2, p2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 5285
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5293
    :try_start_1
    iget-object v2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5279
    :goto_0
    return-void

    .line 5294
    :catch_0
    move-exception v0

    .line 5295
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v3, "Failure closing profile fd"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5288
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 5289
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Profiling failed on path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5290
    const-string/jumbo v4, " -- can the process access this path?"

    .line 5289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5293
    :try_start_3
    iget-object v2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 5294
    :catch_2
    move-exception v0

    .line 5295
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v3, "Failure closing profile fd"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5291
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    .line 5293
    :try_start_4
    iget-object v3, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 5291
    :goto_1
    throw v2

    .line 5294
    :catch_3
    move-exception v0

    .line 5295
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "ActivityThread"

    const-string/jumbo v4, "Failure closing profile fd"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5301
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    goto :goto_0
.end method

.method public handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V
    .locals 12
    .param p1, "cmd"    # Landroid/app/ActivityThread$RequestAssistContextExtras;

    .prologue
    .line 3089
    iget v1, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    iget v11, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    if-eq v1, v11, :cond_1

    .line 3091
    iget v1, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    iput v1, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    .line 3092
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 3093
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/assist/AssistStructure;

    .line 3094
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v3, :cond_0

    .line 3095
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure;->clearSendChannel()V

    .line 3097
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3092
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3100
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    .end local v8    # "i":I
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3101
    .local v2, "data":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 3102
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    new-instance v4, Landroid/app/assist/AssistContent;

    invoke-direct {v4}, Landroid/app/assist/AssistContent;-><init>()V

    .line 3103
    .local v4, "content":Landroid/app/assist/AssistContent;
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v11, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3104
    .local v10, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v5, 0x0

    .line 3105
    .local v5, "referrer":Landroid/net/Uri;
    if-eqz v10, :cond_3

    .line 3106
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v11, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v11, v2}, Landroid/app/Application;->dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3107
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    .line 3108
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v5

    .line 3109
    .local v5, "referrer":Landroid/net/Uri;
    iget v1, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v11, 0x1

    if-ne v1, v11, :cond_3

    .line 3110
    new-instance v3, Landroid/app/assist/AssistStructure;

    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-direct {v3, v1}, Landroid/app/assist/AssistStructure;-><init>(Landroid/app/Activity;)V

    .line 3111
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 3112
    .local v6, "activityIntent":Landroid/content/Intent;
    if-eqz v6, :cond_5

    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v1, :cond_2

    .line 3113
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_5

    .line 3115
    :cond_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3116
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x43

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3118
    invoke-virtual {v9}, Landroid/content/Intent;->removeUnsafeExtras()V

    .line 3119
    invoke-virtual {v4, v9}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 3123
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_1
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    .line 3126
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    .end local v5    # "referrer":Landroid/net/Uri;
    .end local v6    # "activityIntent":Landroid/content/Intent;
    :cond_3
    if-nez v3, :cond_4

    .line 3127
    new-instance v3, Landroid/app/assist/AssistStructure;

    invoke-direct {v3}, Landroid/app/assist/AssistStructure;-><init>()V

    .line 3129
    :cond_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3130
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3132
    .local v0, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3088
    return-void

    .line 3121
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    .restart local v3    # "structure":Landroid/app/assist/AssistStructure;
    .restart local v5    # "referrer":Landroid/net/Uri;
    .restart local v6    # "activityIntent":Landroid/content/Intent;
    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v1}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 3133
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    .end local v5    # "referrer":Landroid/net/Uri;
    .end local v6    # "activityIntent":Landroid/content/Intent;
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :catch_0
    move-exception v7

    .line 3134
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method final handleResumeActivity(Landroid/os/IBinder;ZZZILjava/lang/String;)V
    .locals 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "clearHide"    # Z
    .param p3, "isForward"    # Z
    .param p4, "reallyResume"    # Z
    .param p5, "seq"    # I
    .param p6, "reason"    # Ljava/lang/String;

    .prologue
    .line 3821
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3822
    .local v12, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const-string/jumbo v15, "resumeActivity"

    move/from16 v0, p5

    invoke-static {v0, v12, v15}, Landroid/app/ActivityThread;->checkAndUpdateLifecycleSeq(ILandroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 3823
    return-void

    .line 3828
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3829
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 3832
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v12

    .line 3834
    if-eqz v12, :cond_e

    .line 3835
    iget-object v4, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3842
    .local v4, "a":Landroid/app/Activity;
    if-eqz p3, :cond_7

    .line 3843
    const/16 v9, 0x100

    .line 3848
    .local v9, "forwardBit":I
    :goto_0
    iget-boolean v15, v4, Landroid/app/Activity;->mStartedActivity:Z

    if-eqz v15, :cond_8

    const/4 v13, 0x0

    .line 3849
    .local v13, "willBeVisible":Z
    :goto_1
    if-nez v13, :cond_1

    .line 3851
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    .line 3852
    invoke-virtual {v4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v16

    .line 3851
    invoke-interface/range {v15 .. v16}, Landroid/app/IActivityManager;->willActivityBeVisible(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 3857
    :cond_1
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v15, :cond_2

    iget-boolean v15, v4, Landroid/app/Activity;->mFinished:Z

    if-eqz v15, :cond_9

    .line 3898
    :cond_2
    if-nez v13, :cond_3

    .line 3901
    const/4 v15, 0x1

    iput-boolean v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 3905
    :cond_3
    :goto_2
    const/4 v15, 0x0

    invoke-static {v12, v15}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 3909
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v15, v15, Landroid/app/Activity;->mFinished:Z

    if-nez v15, :cond_4

    if-eqz v13, :cond_4

    .line 3910
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v15, v15, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v15, :cond_4

    iget-boolean v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v15, :cond_b

    .line 3939
    :cond_4
    :goto_3
    iget-boolean v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-nez v15, :cond_5

    .line 3940
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3941
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3944
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v15

    new-instance v16, Landroid/app/ActivityThread$Idler;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$Idler;)V

    invoke-virtual/range {v15 .. v16}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3946
    :cond_5
    const/4 v15, 0x0

    iput-boolean v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 3949
    if-eqz p4, :cond_6

    .line 3951
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/app/IActivityManager;->activityResumed(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3820
    .end local v4    # "a":Landroid/app/Activity;
    .end local v9    # "forwardBit":I
    .end local v13    # "willBeVisible":Z
    :cond_6
    :goto_4
    return-void

    .line 3843
    .restart local v4    # "a":Landroid/app/Activity;
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "forwardBit":I
    goto :goto_0

    .line 3848
    :cond_8
    const/4 v13, 0x1

    goto :goto_1

    .line 3853
    .restart local v13    # "willBeVisible":Z
    :catch_0
    move-exception v6

    .line 3854
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v15

    throw v15

    .line 3857
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_9
    if-eqz v13, :cond_2

    .line 3858
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v15

    iput-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 3859
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v15}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 3860
    .local v5, "decor":Landroid/view/View;
    const/4 v15, 0x4

    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 3861
    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    .line 3862
    .local v14, "wm":Landroid/view/ViewManager;
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 3863
    .local v11, "l":Landroid/view/WindowManager$LayoutParams;
    iput-object v5, v4, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3864
    const/4 v15, 0x1

    iput v15, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3865
    iget v15, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v15, v9

    iput v15, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3866
    iget-boolean v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v15, :cond_a

    .line 3873
    :try_start_2
    invoke-interface {v14, v5, v11}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3879
    :goto_5
    const/4 v15, 0x1

    iput-boolean v15, v4, Landroid/app/Activity;->mWindowAdded:Z

    .line 3880
    const/4 v15, 0x0

    iput-boolean v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 3885
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v10

    .line 3886
    .local v10, "impl":Landroid/view/ViewRootImpl;
    if-eqz v10, :cond_a

    .line 3887
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->notifyChildRebuilt()V

    .line 3890
    .end local v10    # "impl":Landroid/view/ViewRootImpl;
    :cond_a
    iget-boolean v15, v4, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v15, :cond_3

    iget-boolean v15, v4, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v15, :cond_3

    .line 3891
    const/4 v15, 0x1

    iput-boolean v15, v4, Landroid/app/Activity;->mWindowAdded:Z

    .line 3892
    invoke-interface {v14, v5, v11}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 3874
    :catch_1
    move-exception v7

    .line 3875
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5

    .line 3911
    .end local v5    # "decor":Landroid/view/View;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "l":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "wm":Landroid/view/ViewManager;
    :cond_b
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v15, :cond_c

    .line 3912
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v12, v15, v1}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Z)V

    .line 3915
    const/4 v15, 0x0

    iput-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 3919
    :cond_c
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 3920
    .restart local v11    # "l":Landroid/view/WindowManager$LayoutParams;
    iget v15, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v15, v15, 0x100

    if-eq v15, v9, :cond_d

    .line 3923
    iget v15, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v15, v15, -0x101

    or-int/2addr v15, v9

    iput v15, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3926
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v15, v15, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v15, :cond_d

    .line 3927
    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    .line 3928
    .restart local v14    # "wm":Landroid/view/ViewManager;
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v15}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 3929
    .restart local v5    # "decor":Landroid/view/View;
    invoke-interface {v14, v5, v11}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3932
    .end local v5    # "decor":Landroid/view/View;
    .end local v14    # "wm":Landroid/view/ViewManager;
    :cond_d
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 3933
    move-object/from16 v0, p0

    iget v15, v0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 3934
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v15, v15, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v15, :cond_4

    .line 3935
    iget-object v15, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->makeVisible()V

    goto/16 :goto_3

    .line 3952
    .end local v11    # "l":Landroid/view/WindowManager$LayoutParams;
    :catch_2
    move-exception v8

    .line 3953
    .local v8, "ex":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v15

    throw v15

    .line 3961
    .end local v4    # "a":Landroid/app/Activity;
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v9    # "forwardBit":I
    .end local v13    # "willBeVisible":Z
    :cond_e
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    .line 3962
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 3963
    const/16 v18, 0x0

    .line 3961
    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-interface {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    .line 3964
    :catch_3
    move-exception v8

    .line 3965
    .restart local v8    # "ex":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v15

    throw v15
.end method

.method public handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .prologue
    .line 3139
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3140
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3141
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onTranslucentConversionComplete(Z)V

    .line 3138
    :cond_0
    return-void
.end method

.method final handleTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 5452
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5454
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5455
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5456
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks2;

    invoke-interface {v3, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 5455
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5459
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 5449
    return-void
.end method

.method final handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .prologue
    .line 6197
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 6198
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 6196
    return-void

    .line 6197
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method final handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .prologue
    .line 6203
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 6204
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_2

    .line 6207
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6208
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6209
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 6210
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 6211
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing dead content provider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6212
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 6208
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6216
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_1
    if-eqz p2, :cond_2

    .line 6223
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 6224
    iget-object v5, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v5, v5, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 6223
    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6202
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 6225
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2312
    monitor-enter p0

    .line 2313
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2316
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2311
    return-void

    .line 2312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final installSystemProviders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6522
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p1, :cond_0

    .line 6523
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 6521
    :cond_0
    return-void
.end method

.method public isDexCompatMode()Z
    .locals 1

    .prologue
    .line 6789
    const/4 v0, 0x0

    return v0
.end method

.method public isProfiling()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2276
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2277
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2276
    :cond_0
    return v0
.end method

.method public isSystemThread()Z
    .locals 1

    .prologue
    .line 6691
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    return v0
.end method

.method public onMultiWindowSettingsChange(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "mwSettings"    # Landroid/os/Bundle;

    .prologue
    .line 6728
    invoke-static {p1}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->onMultiWindowSettingsChange(Landroid/os/Bundle;)I

    move-result v0

    .line 6729
    .local v0, "changes":I
    invoke-static {v0}, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->updateDecorCaption(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6730
    invoke-direct {p0}, Landroid/app/ActivityThread;->handleMultiWindowFeaturesChanged()V

    .line 6732
    :cond_0
    return v0
.end method

.method public onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 3146
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3147
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3148
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onNewActivityOptions(Landroid/app/ActivityOptions;)V

    .line 3145
    :cond_0
    return-void
.end method

.method public final peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeCode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2203
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 2205
    if-eqz p2, :cond_1

    .line 2206
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2210
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v1

    .line 2208
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    .line 2203
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4524
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    return-object v0
.end method

.method public final performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3069
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3070
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 3071
    iget-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v4, :cond_2

    move v1, v2

    .line 3072
    .local v1, "resumed":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3073
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v4, Landroid/app/Activity;->mTemporaryPause:Z

    .line 3074
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3076
    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 3077
    if-eqz v1, :cond_1

    .line 3078
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->performResume()V

    .line 3079
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v3, Landroid/app/Activity;->mTemporaryPause:Z

    .line 3068
    .end local v1    # "resumed":Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 3071
    goto :goto_0
.end method

.method final performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "saveState"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 4071
    iget-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v4, :cond_1

    .line 4072
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-eqz v4, :cond_0

    .line 4076
    return-object v5

    .line 4078
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 4079
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Performing pause of activity that is not resumed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4080
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 4079
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4078
    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4081
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4083
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    if-eqz p2, :cond_2

    .line 4084
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/app/Activity;->mFinished:Z

    .line 4088
    :cond_2
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_3

    if-eqz p3, :cond_3

    .line 4089
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4092
    :cond_3
    invoke-direct {p0, p1, p4}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 4096
    iget-object v6, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 4097
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v6

    .line 4099
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4100
    .local v3, "size":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 4101
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/OnActivityPausedListener;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v4, v6}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    .line 4100
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4096
    .end local v1    # "i":I
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .line 4099
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "size":I
    goto :goto_0

    .line 4104
    .restart local v1    # "i":I
    :cond_5
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_6

    if-eqz p3, :cond_6

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    :goto_2
    return-object v4

    :cond_6
    move-object v4, v5

    goto :goto_2
.end method

.method final performPauseActivity(Landroid/os/IBinder;ZZLjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "saveState"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 4065
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4066
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method final performRestartActivity(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 4330
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4331
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_0

    .line 4332
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 4333
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 4329
    :cond_0
    return-void
.end method

.method public final performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "clearHide"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3749
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3752
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-eqz v4, :cond_1

    .line 3798
    :cond_0
    :goto_0
    return-object v2

    .line 3753
    :cond_1
    if-eqz p2, :cond_2

    .line 3754
    iput-boolean v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 3755
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v5, v4, Landroid/app/Activity;->mStartedActivity:Z

    .line 3758
    :cond_2
    :try_start_0
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->onStateNotSaved()V

    .line 3759
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, v4, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 3760
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 3761
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 3762
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 3764
    :cond_3
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 3765
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 3766
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 3768
    :cond_4
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->performResume()V

    .line 3774
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 3775
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3776
    .local v3, "relaunching":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v4, v5, :cond_5

    .line 3777
    iget-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 3776
    if-eqz v4, :cond_5

    .line 3777
    iget-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 3776
    if-eqz v4, :cond_5

    .line 3778
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 3774
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3782
    .end local v3    # "relaunching":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_6
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 3783
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object p3, v4, v5

    .line 3782
    const/16 v5, 0x7546

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3785
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 3786
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3787
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 3788
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3789
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 3790
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3791
    new-instance v4, Ljava/lang/RuntimeException;

    .line 3792
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to resume activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3793
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 3792
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3794
    const-string/jumbo v6, ": "

    .line 3792
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3794
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3792
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3791
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method final performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "saveState"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 4134
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4135
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZLjava/lang/String;)V

    .line 4133
    return-void
.end method

.method final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    .line 4060
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 4059
    return-void
.end method

.method public registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .prologue
    .line 2662
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2663
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2664
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-nez v0, :cond_0

    .line 2665
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2666
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2668
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2661
    return-void

    .line 2662
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final releaseProvider(Landroid/content/IContentProvider;Z)Z
    .locals 11
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "stable"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 6065
    if-nez p1, :cond_0

    .line 6066
    return v6

    .line 6069
    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 6070
    .local v1, "jBinder":Landroid/os/IBinder;
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 6071
    :try_start_0
    iget-object v8, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6072
    .local v4, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v4, :cond_1

    monitor-exit v7

    .line 6074
    return v6

    .line 6077
    :cond_1
    const/4 v2, 0x0

    .line 6078
    .local v2, "lastRef":Z
    if-eqz p2, :cond_7

    .line 6079
    :try_start_1
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_2

    monitor-exit v7

    .line 6082
    return v6

    .line 6084
    :cond_2
    :try_start_2
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 6085
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v8, :cond_4

    .line 6092
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_6

    const/4 v2, 0x1

    .line 6098
    :goto_0
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    .line 6099
    iget-object v9, v4, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v9, v9, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    if-eqz v2, :cond_3

    move v6, v5

    :cond_3
    const/4 v10, -0x1

    .line 6098
    invoke-interface {v8, v9, v10, v6}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6131
    .end local v2    # "lastRef":Z
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 6132
    :try_start_4
    iget-boolean v6, v4, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v6, :cond_a

    .line 6142
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 6143
    iget-object v6, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v8, 0x83

    invoke-virtual {v6, v8, v4}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 6144
    .local v3, "msg":Landroid/os/Message;
    iget-object v6, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v6, v3}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    :goto_2
    monitor-exit v7

    .line 6149
    return v5

    .line 6092
    .restart local v2    # "lastRef":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 6105
    :cond_7
    :try_start_5
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v8, :cond_8

    monitor-exit v7

    .line 6108
    return v6

    .line 6110
    :cond_8
    :try_start_6
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 6111
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v8, :cond_4

    .line 6115
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v8, :cond_9

    move v2, v5

    .line 6116
    .local v2, "lastRef":Z
    :goto_3
    if-nez v2, :cond_4

    .line 6122
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 6123
    iget-object v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v8, v8, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 6122
    invoke-interface {v6, v8, v9, v10}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 6124
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    .local v2, "lastRef":Z
    :cond_9
    move v2, v6

    .line 6115
    goto :goto_3

    .line 6146
    .end local v2    # "lastRef":Z
    :cond_a
    :try_start_8
    const-string/jumbo v6, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Duplicate remove pending of provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v9, v9, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 6070
    .end local v4    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    .line 6100
    .restart local v2    # "lastRef":Z
    .restart local v4    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public final requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;ZZ)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "fromServer"    # Z
    .param p9, "preserveWindow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 4686
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v5, 0x0

    .line 4688
    .local v5, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v8, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v8

    .line 4689
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_d

    .line 4690
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4692
    .local v4, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v7, p1, :cond_b

    .line 4693
    move-object v5, v4

    .line 4694
    .local v5, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz p2, :cond_0

    .line 4695
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v7, :cond_9

    .line 4696
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4701
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 4702
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v7, :cond_a

    .line 4703
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v7, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4710
    :cond_1
    :goto_2
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v7, :cond_2

    .line 4711
    iget-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    move/from16 v0, p9

    if-eq v7, v0, :cond_2

    .line 4712
    move/from16 v0, p9

    iput-boolean v0, v4, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 4718
    :cond_2
    iget-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_3

    if-eqz p8, :cond_3

    .line 4720
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, p1}, Landroid/app/IActivityManager;->activityRelaunched(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v6, v5

    .line 4729
    .end local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v6, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_3
    if-nez v6, :cond_c

    .line 4732
    :try_start_2
    new-instance v5, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v5}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4733
    .end local v6    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :try_start_3
    iput-object p1, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 4734
    iput-object p2, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 4735
    iput-object p3, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 4736
    move/from16 v0, p9

    iput-boolean v0, v5, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 4737
    if-nez p8, :cond_5

    .line 4738
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4740
    .local v2, "existing":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_4

    .line 4743
    iget-boolean v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 4744
    iget-object v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 4746
    :cond_4
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 4748
    .end local v2    # "existing":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_5
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4749
    const/16 v7, 0x7e

    invoke-direct {p0, v7, v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 4752
    :goto_4
    if-eqz p8, :cond_6

    .line 4753
    iput-boolean p5, v5, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 4754
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 4756
    :cond_6
    if-eqz p6, :cond_7

    .line 4757
    iput-object p6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 4759
    :cond_7
    if-eqz p7, :cond_8

    .line 4760
    move-object/from16 v0, p7

    iput-object v0, v5, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 4762
    :cond_8
    iget v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v7, p4

    iput v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    .line 4763
    invoke-direct {p0}, Landroid/app/ActivityThread;->getLifecycleSeq()I

    move-result v7

    iput v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v8

    .line 4685
    return-void

    .line 4698
    .restart local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_9
    :try_start_4
    iput-object p2, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 4688
    .end local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v7

    :goto_5
    monitor-exit v8

    throw v7

    .line 4705
    .restart local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_a
    :try_start_5
    iput-object p3, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_2

    .line 4721
    :catch_0
    move-exception v1

    .line 4722
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4689
    .end local v1    # "e":Landroid/os/RemoteException;
    .local v5, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 4688
    .end local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v6    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v5, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_5

    .end local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v6    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_c
    move-object v5, v6

    .end local v6    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_4

    .local v5, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_d
    move-object v6, v5

    .restart local v6    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_3
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2684
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x400

    .line 2683
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2685
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 2688
    const/4 v1, -0x2

    .line 2687
    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 2690
    :cond_0
    return-object v0
.end method

.method final scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 2778
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    .line 2779
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 2780
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 2781
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 2782
    const/16 v1, 0x77

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2777
    return-void
.end method

.method scheduleGcIdler()V
    .locals 2

    .prologue
    .line 2328
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_0

    .line 2329
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2330
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2332
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2327
    return-void
.end method

.method public final sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .prologue
    .line 2729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2730
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2731
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2726
    return-void
.end method

.method public final startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;
    .locals 2
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "state"    # Landroid/os/Bundle;
    .param p7, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;

    .prologue
    .line 2696
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 2697
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 2698
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 2699
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 2700
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2701
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 2702
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 2703
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2704
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 2717
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public stopProfiling()V
    .locals 1

    .prologue
    .line 5314
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 5313
    return-void
.end method

.method public unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .prologue
    .line 2674
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2675
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2676
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v0, :cond_0

    .line 2677
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 2673
    return-void

    .line 2674
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method unscheduleGcIdler()V
    .locals 2

    .prologue
    .line 2336
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_0

    .line 2337
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2338
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2340
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2335
    return-void
.end method
