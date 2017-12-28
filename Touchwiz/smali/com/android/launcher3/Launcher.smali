.class public Lcom/android/launcher3/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;
.implements Lcom/android/launcher3/LauncherModel$Callbacks;
.implements Lcom/android/launcher3/LauncherProviderChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Launcher$GSAPrewamingClientCallbacks;,
        Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;
    }
.end annotation


# static fields
.field public static final APPWIDGET_HOST_ID:I = 0x400

.field static final DEBUG_DUMP_LOG:Z = false

.field static final DEBUG_RESUME_TIME:Z = false

.field static final DUMP_STATE_PROPERTY:Ljava/lang/String; = "launcher_dump_state"

.field private static final EASY_MODE:I = 0x0

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field public static final GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

.field static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field public static final LAUNCHER_SYSTEM_UI_FLAG_LIGHT_STATUS_BAR:I = 0x2000

.field static final LOGD:Z = false

.field static final PROFILE_STARTUP:Z = false

.field private static final RUNTIME_STATE_VIEW_IDS:Ljava/lang/String; = "launcher.view_ids"

.field private static final SETTINGS_WALLPAPER_TILT_STATUS:Ljava/lang/String; = "wallpaper_tilt_status"

.field private static final STANDARD_MODE:I = 0x1

.field static final TAG:Ljava/lang/String; = "Launcher"

.field static sDateFormat:Ljava/text/DateFormat;

.field static sDateStamp:Ljava/util/Date;

.field private static sDensityDpi:I

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsRecreateModeChange:Z

.field private static sNeedCheckEasyMode:Z

.field private static sRecreateCountOnCreate:I

.field static sRunStart:J


# instance fields
.field private mAttached:Z

.field private mBindOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBuildLayersRunnable:Ljava/lang/Runnable;

.field private mChangeMode:Z

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private final mDarkFontObserver:Landroid/database/ContentObserver;

.field private final mDarkNavigationBarObserver:Landroid/database/ContentObserver;

.field private final mDarkStatusBarObserver:Landroid/database/ContentObserver;

.field private mDateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private final mEasyModeObserver:Landroid/database/ContentObserver;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mGlobalSettingUtils:Lcom/android/launcher3/util/GlobalSettingUtils;

.field private mHasFocus:Z

.field private mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHotseatOnResumeCallback:Ljava/lang/Runnable;

.field private mHotword:Lcom/android/launcher3/home/HotWord;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSafeModeEnabled:Z

.field private mItemIdToViewId:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLCExtractor:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

.field private mLCExtractorReceiver:Landroid/content/BroadcastReceiver;

.field private mLauncherView:Landroid/view/View;

.field private mLongPress:Z

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnResumeNeedsLoad:Z

.field private mOnResumeState:I

.field private mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

.field private mPaused:Z

.field private mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

.field private mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestoreScreenOrientationDelay:I

.field private mSSecureUpdater:Lcom/android/launcher3/util/SSecureUpdater;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSearchedApp:Ljava/lang/String;

.field private mSearchedAppUser:Landroid/os/UserHandle;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mShortPress:Z

.field private mSkipAnim:Z

.field private mStageManager:Lcom/android/launcher3/common/stage/StageManager;

.field private mStats:Lcom/android/launcher3/Stats;

.field private mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

.field private mVisible:Z

.field private mWallpaperTiltSettingEnabled:Z

.field private mWindowToken:Landroid/os/IBinder;

.field private mZeropageStartedByHomeKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->sDateStamp:Ljava/util/Date;

    .line 254
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/Launcher;->sDateFormat:Ljava/text/DateFormat;

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/launcher3/Launcher;->sRunStart:J

    .line 285
    sput-boolean v2, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    .line 286
    sput v2, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    .line 288
    sput-boolean v2, Lcom/android/launcher3/Launcher;->sNeedCheckEasyMode:Z

    .line 301
    sput v2, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    .line 307
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/Launcher;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    .line 208
    new-instance v0, Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    iput v1, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    .line 228
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    .line 236
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mHotseatOnResumeCallback:Ljava/lang/Runnable;

    .line 242
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    .line 243
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    .line 244
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    .line 250
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/launcher3/Launcher;->mRestoreScreenOrientationDelay:I

    .line 262
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    .line 264
    new-instance v0, Lcom/android/launcher3/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$1;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 281
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mSkipAnim:Z

    .line 291
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    .line 292
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mSearchedAppUser:Landroid/os/UserHandle;

    .line 293
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mChangeMode:Z

    .line 297
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    .line 298
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mWallpaperTiltSettingEnabled:Z

    .line 312
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mZeropageStartedByHomeKey:Z

    .line 313
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mShortPress:Z

    .line 314
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mLongPress:Z

    .line 316
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mLCExtractor:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    .line 2321
    new-instance v0, Lcom/android/launcher3/Launcher$8;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$8;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2363
    new-instance v0, Lcom/android/launcher3/Launcher$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$9;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDarkFontObserver:Landroid/database/ContentObserver;

    .line 2373
    new-instance v0, Lcom/android/launcher3/Launcher$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$10;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDarkStatusBarObserver:Landroid/database/ContentObserver;

    .line 2383
    new-instance v0, Lcom/android/launcher3/Launcher$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$11;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDarkNavigationBarObserver:Landroid/database/ContentObserver;

    .line 2392
    new-instance v0, Lcom/android/launcher3/Launcher$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$12;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mEasyModeObserver:Landroid/database/ContentObserver;

    .line 2788
    new-instance v0, Lcom/android/launcher3/Launcher$15;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$15;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 3118
    new-instance v0, Lcom/android/launcher3/Launcher$18;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$18;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mLCExtractorReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 1453
    const-string v1, "input_method"

    .line 1454
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1455
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->closeSystemDialogs()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher3/Launcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->resetWallpaperOffsets()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/Launcher;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/home/HomeBindController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/drag/DragManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/stage/StageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->changeColorForBg()V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 174
    sput-boolean p0, Lcom/android/launcher3/Launcher;->sNeedCheckEasyMode:Z

    return p0
.end method

.method public static addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "debugLog"    # Z

    .prologue
    .line 2531
    if-eqz p3, :cond_0

    .line 2532
    if-eqz p2, :cond_1

    .line 2533
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2553
    :cond_0
    :goto_0
    return-void

    .line 2535
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "debugLog"    # Z

    .prologue
    .line 2527
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 2528
    return-void
.end method

.method private changeColorForBg()V
    .locals 2

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v0, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageManager;->onChangeColorForBg(Z)V

    .line 2437
    :cond_0
    return-void
.end method

.method private changeEasyModeIfNecessary(Z)V
    .locals 5
    .param p1, "needReCreate"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2400
    .line 2401
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    .line 2400
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 2402
    .local v0, "isEasyMode":Z
    :goto_0
    sput-boolean v2, Lcom/android/launcher3/Launcher;->sNeedCheckEasyMode:Z

    .line 2403
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 2404
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeEasyMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mChangeMode:Z

    .line 2406
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2407
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherAppState;->writeEasyModeEnabled(Z)V

    .line 2409
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    .line 2410
    if-eqz p1, :cond_0

    .line 2411
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->recreateLauncher()V

    .line 2415
    :cond_0
    return-void

    .end local v0    # "isEasyMode":Z
    :cond_1
    move v0, v2

    .line 2400
    goto :goto_0
.end method

.method private changeHomeModeIfNecessary()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 2418
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2419
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_home_screen_mode"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2420
    const-string v2, "pref_home_screen_mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2421
    .local v0, "HomeOnlySettingValue":Z
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-ne v0, v2, :cond_1

    .line 2431
    .end local v0    # "HomeOnlySettingValue":Z
    :cond_0
    :goto_0
    return-void

    .line 2424
    .restart local v0    # "HomeOnlySettingValue":Z
    :cond_1
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change home mode setting value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appstate value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2425
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2424
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2427
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/LauncherAppState;->writeHomeOnlyModeEnabled(Z)V

    .line 2428
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/android/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1591
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1592
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1593
    return-void
.end method

.method private closeDialogIfNeeded()V
    .locals 2

    .prologue
    .line 2487
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 2488
    .local v0, "manager":Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2489
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->dismissIfNeeded(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 2492
    :cond_0
    invoke-static {v0}, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2493
    invoke-static {v0}, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->dismiss(Landroid/app/FragmentManager;)V

    .line 2495
    :cond_1
    return-void
.end method

.method private closeSystemDialogs()V
    .locals 2

    .prologue
    .line 2480
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 2483
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->setWaitingForResult(Z)V

    .line 2484
    return-void
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mannerModeSet()V
    .locals 8

    .prologue
    const v7, 0x7f0900ba

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3097
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3098
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-nez v3, :cond_1

    .line 3099
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 3100
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 3101
    invoke-virtual {v2}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3102
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3103
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 3116
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 3105
    .restart local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 3106
    invoke-static {p0, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3108
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 3109
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 3110
    invoke-static {p0, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3112
    :cond_2
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 3113
    const v3, 0x7f0900bb

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private resetWallpaperOffsets()V
    .locals 5

    .prologue
    .line 2936
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_1

    .line 2937
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 2938
    .local v1, "wallpaperManager":Landroid/app/WallpaperManager;
    if-eqz v1, :cond_0

    .line 2940
    :try_start_0
    const-string v2, "Launcher"

    const-string v3, "resetWallpaperOffsets"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2951
    .end local v1    # "wallpaperManager":Landroid/app/WallpaperManager;
    :goto_0
    return-void

    .line 2942
    .restart local v1    # "wallpaperManager":Landroid/app/WallpaperManager;
    :catch_0
    move-exception v0

    .line 2943
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetWallpaperOffsets exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2946
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "Launcher"

    const-string v3, "resetWallpaperOffsets - wallpaper manager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2949
    .end local v1    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_1
    const-string v2, "Launcher"

    const-string v3, "resetWallpaperOffsets - mWindowToken is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 1816
    if-nez p1, :cond_0

    .line 1822
    :goto_0
    return-void

    .line 1819
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->restoreState(Landroid/os/Bundle;)V

    .line 1820
    const-string v0, "launcher.view_ids"

    .line 1821
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private setCloneItemEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->updateAppsForCloneItemEnabled(Z)V

    .line 2764
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 1875
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1876
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 1877
    .local v1, "topStage":Lcom/android/launcher3/common/stage/Stage;
    const/16 v0, 0x400

    .line 1878
    .local v0, "flags":I
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->supportStatusBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1879
    or-int/lit16 v0, v0, 0x800

    .line 1881
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 1882
    return-void
.end method

.method private setLiveIconAlarm()V
    .locals 1

    .prologue
    .line 2783
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2784
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->setCalendarAlarm(Landroid/content/Context;)V

    .line 2785
    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->setClockAlarm(Landroid/content/Context;)V

    .line 2786
    return-void
.end method

.method private setOrientation()V
    .locals 1

    .prologue
    .line 802
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 807
    :goto_0
    return-void

    .line 805
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setWallpaperOffsetToCenter()V
    .locals 3

    .prologue
    .line 2923
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mWallpaperTiltSettingEnabled:Z

    if-nez v1, :cond_1

    .line 2924
    const-string v1, "Launcher"

    const-string v2, "set wallpaper offset to center"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 2926
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 2927
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2928
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    .line 2931
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->resetWallpaperOffsets()V

    .line 2933
    :cond_1
    return-void
.end method

.method private setWhichTransitionEffect(I)V
    .locals 1
    .param p1, "whichTransitionEffect"    # I

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    if-eqz v0, :cond_0

    .line 2277
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setCurrentTransitionEffect(I)V

    .line 2279
    :cond_0
    return-void
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 780
    const v0, 0x7f1100ad

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    .line 781
    const v0, 0x7f1100ae

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 783
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/view/DragLayer;->setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/drag/DragManager;)V

    .line 790
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->setup(Landroid/app/Activity;)V

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->setupStartupViews()V

    .line 796
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->setup(Landroid/app/Activity;Lcom/android/launcher3/common/drag/DragManager;)V

    .line 799
    :cond_1
    return-void
.end method

.method private setupWallpaperScroller()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2868
    const-string v2, "Launcher"

    const-string v5, "setupWallpaperScroller"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wallpaper_tilt_status"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mWallpaperTiltSettingEnabled:Z

    .line 2872
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    .line 2873
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2876
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSensorManager:Landroid/hardware/SensorManager;

    const v5, 0x1002b

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 2878
    .local v0, "gyroSensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_3

    .line 2879
    const-string v2, "Launcher"

    const-string v3, "Launcher::onCreate() - gyroSensor not support"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    invoke-static {v4}, Lcom/android/launcher3/LauncherFeature;->setSupportWallpaperTilt(Z)V

    .line 2905
    :cond_1
    :goto_1
    return-void

    .end local v0    # "gyroSensor":Landroid/hardware/Sensor;
    :cond_2
    move v2, v4

    .line 2869
    goto :goto_0

    .line 2882
    .restart local v0    # "gyroSensor":Landroid/hardware/Sensor;
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-nez v2, :cond_4

    .line 2883
    new-instance v2, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    .line 2886
    :cond_4
    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mWallpaperTiltSettingEnabled:Z

    if-eqz v2, :cond_1

    .line 2887
    invoke-static {p0, p0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->initialize(Landroid/content/Context;Landroid/app/Activity;)V

    .line 2888
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-eqz v2, :cond_5

    .line 2889
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->start(Z)V

    .line 2892
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 2893
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_6

    .line 2894
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    .line 2897
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-eqz v2, :cond_7

    .line 2898
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    .line 2902
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->resume(Z)V

    goto :goto_1

    .line 2900
    :cond_7
    const-string v2, "Launcher"

    const-string v4, "WallpaperScroller - mWindowToken is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private shutdownWallpaperScroller()V
    .locals 2

    .prologue
    .line 2908
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2909
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->pause()V

    .line 2910
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2911
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher3/Launcher$16;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$16;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2920
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 3058
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3059
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDarkFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3060
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDarkStatusBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3061
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDarkNavigationBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3062
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3063
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mEasyModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3068
    :cond_0
    :goto_0
    return-void

    .line 3065
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateWhiteBgIfNecessary()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3023
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    .line 3024
    .local v0, "isWhiteBg":Z
    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setup(Landroid/content/Context;)V

    .line 3025
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v3

    if-eq v0, v3, :cond_0

    .line 3026
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDarkFontObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3029
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v2

    .line 3030
    .local v2, "isWhiteStatusBar":Z
    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setupForStatusBar(Landroid/content/Context;)V

    .line 3031
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 3032
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDarkStatusBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3035
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v1

    .line 3036
    .local v1, "isWhiteNavigationBar":Z
    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setupForNavigationBar(Landroid/content/Context;)V

    .line 3037
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v3

    if-eq v1, v3, :cond_2

    .line 3038
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDarkNavigationBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3040
    :cond_2
    return-void
.end method


# virtual methods
.method public addOnResumeCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2030
    return-void
.end method

.method public beginDragFromQuickOptionPopup(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;F)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p4, "dragInfo"    # Ljava/lang/Object;
    .param p5, "bounds"    # Landroid/graphics/Rect;
    .param p6, "initialDragViewScale"    # F

    .prologue
    .line 2246
    invoke-static {p0, p2}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragOutline(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2248
    .local v8, "dragOutline":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    .line 2249
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/common/drag/DragManager;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;IFLandroid/graphics/drawable/Drawable;Z)V

    .line 2251
    return-void
.end method

.method public beginDragFromWidget(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;F)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;
    .param p3, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p4, "dragInfo"    # Ljava/lang/Object;
    .param p5, "viewImageBounds"    # Landroid/graphics/Rect;
    .param p6, "initialDragViewScale"    # F

    .prologue
    .line 2232
    move-object/from16 v10, p4

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2233
    .local v10, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v11

    .line 2235
    .local v11, "size":[I
    instance-of v0, v10, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_0

    .line 2236
    invoke-static {p0, p2}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragOutline(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2241
    .local v8, "dragOutline":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/common/drag/DragManager;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;IFLandroid/graphics/drawable/Drawable;Z)V

    .line 2243
    return-void

    .line 2238
    .end local v8    # "dragOutline":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    aget v0, v11, v0

    const/4 v1, 0x1

    aget v1, v11, v1

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/common/drag/DragViewHelper;->createWidgetDragOutline(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .restart local v8    # "dragOutline":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;ZZ)V
    .locals 37
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p3, "allowQuickOption"    # Z
    .param p4, "fromEmptyCell"    # Z

    .prologue
    .line 2132
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v4, :cond_0

    .line 2133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2135
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2136
    .local v28, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2139
    .end local v28    # "msg":Ljava/lang/String;
    :cond_0
    const/16 v36, 0x0

    .line 2140
    .local v36, "topDelta":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    .line 2144
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v4, :cond_3

    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_4

    .line 2146
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2147
    .local v25, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/common/base/item/ItemInfo;->getChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v4, p1

    .line 2148
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZI)V

    move-object/from16 v4, p1

    .line 2149
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    move-object/from16 v4, p1

    .line 2153
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(ZZ)V

    move-object/from16 v4, p1

    .line 2155
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v36

    .line 2157
    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    const v4, 0x7f0900d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_a

    .line 2158
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f090045

    .line 2159
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aput-object v17, v11, v16

    .line 2158
    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v9, v10

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 2160
    invoke-virtual {v10}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    .line 2157
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/launcher3/util/Talk;->postSay(Ljava/lang/String;)V

    .line 2164
    .end local v25    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 2165
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2169
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v4, :cond_b

    .line 2170
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2171
    .restart local v25    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v33

    .line 2172
    .local v33, "size":[I
    const/4 v4, 0x0

    aget v4, v33, v4

    const/4 v5, 0x1

    aget v5, v33, v5

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/launcher3/common/drag/DragViewHelper;->createWidgetDragOutline(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 2178
    .end local v25    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v33    # "size":[I
    .local v15, "dragOutline":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-instance v30, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x6

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2180
    .local v30, "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 2181
    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v4

    .line 2180
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1, v4}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2183
    .local v6, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 2184
    .local v19, "bmpWidth":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 2186
    .local v18, "bmpHeight":I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 2187
    .local v34, "tempPt":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v14

    .line 2190
    .local v14, "scale":F
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2191
    :cond_5
    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v14, v4

    .line 2194
    :cond_6
    const/4 v4, 0x0

    aget v4, v34, v4

    int-to-float v4, v4

    move/from16 v0, v19

    int-to-float v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v14

    sub-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 2195
    .local v7, "dragLayerX":I
    const/4 v4, 0x1

    aget v4, v34, v4

    int-to-float v4, v4

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v18

    int-to-float v8, v0

    mul-float/2addr v8, v14

    sub-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    .line 2196
    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    int-to-float v5, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    .line 2195
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 2198
    .local v21, "dragLayerY":I
    const/4 v12, 0x0

    .line 2199
    .local v12, "dragVisualizeOffset":Landroid/graphics/Point;
    const/4 v13, 0x0

    .line 2200
    .local v13, "dragRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_7

    move-object/from16 v24, p1

    .line 2201
    check-cast v24, Lcom/android/launcher3/common/view/IconView;

    .line 2202
    .local v24, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/view/IconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Landroid/widget/FrameLayout$LayoutParams;

    .line 2203
    .local v27, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/view/IconView;->getIconSize()I

    move-result v23

    .line 2204
    .local v23, "iconSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    move-object/from16 v0, v27

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v35, v4, v5

    .line 2205
    .local v35, "top":I
    sub-int v4, v19, v23

    div-int/lit8 v26, v4, 0x2

    .line 2206
    .local v26, "left":I
    add-int v32, v26, v23

    .line 2207
    .local v32, "right":I
    add-int v20, v35, v23

    .line 2208
    .local v20, "bottom":I
    add-int v21, v21, v35

    .line 2211
    new-instance v12, Landroid/graphics/Point;

    .end local v12    # "dragVisualizeOffset":Landroid/graphics/Point;
    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v12, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 2212
    .restart local v12    # "dragVisualizeOffset":Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "dragRect":Landroid/graphics/Rect;
    move/from16 v0, v26

    move/from16 v1, v35

    move/from16 v2, v32

    move/from16 v3, v20

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2215
    .end local v20    # "bottom":I
    .end local v23    # "iconSize":I
    .end local v24    # "iconView":Lcom/android/launcher3/common/view/IconView;
    .end local v26    # "left":I
    .end local v27    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v32    # "right":I
    .end local v35    # "top":I
    .restart local v13    # "dragRect":Landroid/graphics/Rect;
    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p3, :cond_8

    .line 2216
    new-instance v31, Landroid/graphics/Rect;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    .line 2217
    .local v31, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->setAnchorRect(Landroid/graphics/Rect;)V

    .line 2219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->setAnchorView(Landroid/view/View;)V

    .line 2221
    .end local v31    # "r":Landroid/graphics/Rect;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    sub-int v8, v21, v36

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    move/from16 v16, p3

    move/from16 v17, p4

    invoke-virtual/range {v4 .. v17}, Lcom/android/launcher3/common/drag/DragManager;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;IILcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FLandroid/graphics/drawable/Drawable;ZZ)Lcom/android/launcher3/common/drag/DragView;

    move-result-object v22

    .line 2224
    .local v22, "dv":Lcom/android/launcher3/common/drag/DragView;
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher3/common/drag/DragSource;->getIntrinsicIconSize()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/drag/DragView;->setIntrinsicIconSize(I)V

    .line 2225
    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragView;->setTopDelta(I)V

    .line 2227
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 2228
    return-void

    .end local v6    # "b":Landroid/graphics/Bitmap;
    .end local v7    # "dragLayerX":I
    .end local v12    # "dragVisualizeOffset":Landroid/graphics/Point;
    .end local v13    # "dragRect":Landroid/graphics/Rect;
    .end local v14    # "scale":F
    .end local v15    # "dragOutline":Landroid/graphics/drawable/Drawable;
    .end local v18    # "bmpHeight":I
    .end local v19    # "bmpWidth":I
    .end local v21    # "dragLayerY":I
    .end local v22    # "dv":Lcom/android/launcher3/common/drag/DragView;
    .end local v30    # "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v34    # "tempPt":[I
    .restart local v25    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_9
    move-object/from16 v4, p1

    .line 2151
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    const/4 v5, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v8}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZI)V

    goto/16 :goto_0

    .line 2158
    :cond_a
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2174
    .end local v25    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_b
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher3/common/drag/DragSource;->getOutlineColor()I

    move-result v29

    .line 2175
    .local v29, "outlineColor":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragOutline(Landroid/content/Context;Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .restart local v15    # "dragOutline":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 2181
    .end local v29    # "outlineColor":I
    .restart local v30    # "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method public bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/MultiHashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3048
    .local p1, "deepShortcutMapCopy":Lcom/android/launcher3/util/MultiHashMap;, "Lcom/android/launcher3/util/MultiHashMap<Lcom/android/launcher3/util/ComponentKey;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V

    .line 3049
    return-void
.end method

.method public changeNavigationBarColor(Z)V
    .locals 5
    .param p1, "whiteBg"    # Z

    .prologue
    .line 2456
    :try_start_0
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeNavigationBarColor whiteBg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    if-eqz p1, :cond_1

    const v2, 0x7f0e0039

    :goto_0
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 2458
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->semSetNavigationBarIconColor(I)V

    .line 2461
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    if-eqz v2, :cond_0

    .line 2462
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2467
    .end local v0    # "color":I
    :cond_0
    :goto_1
    return-void

    .line 2457
    :cond_1
    const v2, 0x7f0e0038

    goto :goto_0

    .line 2464
    :catch_0
    move-exception v1

    .line 2465
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const-string v2, "Launcher"

    const-string v3, "NoSuchMethodError occur when change nevigation color."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public changeStatusBarColor(Z)V
    .locals 3
    .param p1, "whiteBg"    # Z

    .prologue
    .line 2440
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStatusBarColor whiteBg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    if-eqz p1, :cond_0

    .line 2442
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2443
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2452
    :goto_0
    return-void

    .line 2447
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2448
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public closeFolder()V
    .locals 1

    .prologue
    .line 2282
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 2283
    .local v0, "folder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_0

    .line 2284
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->closeFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 2286
    :cond_0
    return-void
.end method

.method public closeFolder(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 2290
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1614
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1615
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1632
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/stage/StageManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1635
    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 1619
    :sswitch_1
    const-string v1, "launcher_dump_state"

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1620
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->dumpState()V

    goto :goto_1

    .line 1625
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1626
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1635
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1615
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 1626
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1967
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 1968
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/stage/StageManager;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1969
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 1970
    .local v1, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1971
    const v2, 0x7f0900f4

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1973
    .end local v1    # "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_0
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 2516
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2517
    sget-object v2, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2518
    :try_start_0
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2519
    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/android/launcher3/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2523
    :cond_0
    monitor-exit v2

    .line 2524
    return-void

    .line 2523
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dumpLogsToLocalData()V
    .locals 0

    .prologue
    .line 2601
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 2501
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher3 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isRestoring()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isWaitingForResult()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/home/HomeBindController;->sFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->dumpState()V

    .line 2511
    const-string v0, "Launcher"

    const-string v1, "END launcher3 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    return-void
.end method

.method public enableVoiceSearch(Landroid/widget/SearchView;)V
    .locals 9
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 2696
    if-eqz p1, :cond_0

    .line 2697
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2698
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2699
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    .local v1, "componentName":Landroid/content/ComponentName;
    const-string v6, "search"

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 2703
    .local v4, "searchManager":Landroid/app/SearchManager;
    :try_start_0
    invoke-virtual {v4, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v5

    .line 2705
    .local v5, "searchableInfo":Landroid/app/SearchableInfo;
    invoke-virtual {p1, v5}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2710
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "searchManager":Landroid/app/SearchManager;
    .end local v5    # "searchableInfo":Landroid/app/SearchableInfo;
    :cond_0
    :goto_0
    return-void

    .line 2706
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "searchManager":Landroid/app/SearchManager;
    :catch_0
    move-exception v2

    .line 2707
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalStateException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finishSettingsActivity()V
    .locals 2

    .prologue
    .line 3071
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/Launcher$17;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$17;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3089
    return-void
.end method

.method public finishStageOnTouchOutSide()Z
    .locals 2

    .prologue
    .line 2313
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    .line 2314
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->finishOnTouchOutSide()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2315
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->onBackPressed()V

    .line 2316
    const/4 v1, 0x1

    .line 2318
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBindOnResumeCallbacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .locals 1

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher3/common/view/DragLayer;
    .locals 1

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    return-object v0
.end method

.method public getDragMgr()Lcom/android/launcher3/common/drag/DragManager;
    .locals 1

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-object v0
.end method

.method public getHomeController()Lcom/android/launcher3/home/HomeController;
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method public getHotWordInstance()Lcom/android/launcher3/home/HotWord;
    .locals 1

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    return-object v0
.end method

.method public getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLauncherModel()Lcom/android/launcher3/LauncherModel;
    .locals 1

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .locals 1

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    return-object v0
.end method

.method public getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2296
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v5}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v1

    .line 2297
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2298
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2299
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v5, :cond_2

    move-object v2, v0

    .line 2300
    check-cast v2, Lcom/android/launcher3/folder/view/FolderView;

    .line 2301
    .local v2, "folder":Lcom/android/launcher3/folder/view/FolderView;
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 2309
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    :goto_1
    return-object v2

    .line 2304
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    .line 2297
    .end local v2    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v2, v4

    .line 2309
    goto :goto_1
.end method

.method public getOutlineColor()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2959
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2960
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 2964
    .local v0, "outlineColor":I
    :goto_0
    return v0

    .line 2962
    .end local v0    # "outlineColor":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .restart local v0    # "outlineColor":I
    goto :goto_0
.end method

.method public getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;
    .locals 1

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    return-object v0
.end method

.method public getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;
    .locals 1

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    return-object v0
.end method

.method public getSavedState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSearchedApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchedAppUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 2856
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSearchedAppUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getSecondTopStageMode()I
    .locals 2

    .prologue
    .line 2112
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 2113
    .local v0, "secondTopStage":Lcom/android/launcher3/common/stage/Stage;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 2112
    .end local v0    # "secondTopStage":Lcom/android/launcher3/common/stage/Stage;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getSecondTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    goto :goto_0

    .line 2113
    .restart local v0    # "secondTopStage":Lcom/android/launcher3/common/stage/Stage;
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    goto :goto_1
.end method

.method public getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getStageManager()Lcom/android/launcher3/common/stage/StageManager;
    .locals 1

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    return-object v0
.end method

.method public getStats()Lcom/android/launcher3/Stats;
    .locals 1

    .prologue
    .line 2751
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStats:Lcom/android/launcher3/Stats;

    return-object v0
.end method

.method public getTopStageMode()I
    .locals 2

    .prologue
    .line 2107
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 2108
    .local v0, "topStage":Lcom/android/launcher3/common/stage/Stage;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 2107
    .end local v0    # "topStage":Lcom/android/launcher3/common/stage/Stage;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    goto :goto_0

    .line 2108
    .restart local v0    # "topStage":Lcom/android/launcher3/common/stage/Stage;
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    goto :goto_1
.end method

.method public getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;
    .locals 1

    .prologue
    .line 2759
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    return-object v0
.end method

.method public getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1865
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    long-to-int v0, v2

    .line 1866
    .local v0, "itemId":I
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1867
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1871
    :goto_0
    return v1

    .line 1869
    :cond_0
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    .line 1870
    .local v1, "viewId":I
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 2121
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    return v0
.end method

.method public hasVoiceSearch()Z
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2713
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2714
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2716
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    .local v1, "componentName":Landroid/content/ComponentName;
    const-string v12, "search"

    invoke-virtual {p0, v12}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchManager;

    .line 2718
    .local v6, "searchManager":Landroid/app/SearchManager;
    const/4 v7, 0x0

    .line 2720
    .local v7, "searchableInfo":Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v6, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2725
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2726
    const/4 v3, 0x0

    .line 2727
    .local v3, "micIntent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2728
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_DisableGoogle"

    invoke-virtual {v12, v13, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_1

    move v8, v10

    .line 2729
    .local v8, "supportGoogleSevice":Z
    :goto_1
    if-nez v8, :cond_2

    .line 2730
    new-instance v9, Landroid/content/Intent;

    const-string v12, "samsung.svoiceime.action.RECOGNIZE_SPEECH"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2731
    .local v9, "voiceAppSearchIntent":Landroid/content/Intent;
    move-object v3, v9

    .line 2732
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 2733
    const-string v12, "android.speech.extra.LANGUAGE_MODEL"

    const-string v13, "free_form"

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2741
    .end local v8    # "supportGoogleSevice":Z
    .end local v9    # "voiceAppSearchIntent":Landroid/content/Intent;
    :cond_0
    :goto_2
    if-eqz v3, :cond_4

    .line 2742
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/high16 v13, 0x10000

    invoke-virtual {v12, v3, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 2744
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_3

    .line 2747
    .end local v3    # "micIntent":Landroid/content/Intent;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_3
    return v10

    .line 2721
    :catch_0
    move-exception v2

    .line 2722
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v12, "Launcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IllegalStateException:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "micIntent":Landroid/content/Intent;
    :cond_1
    move v8, v11

    .line 2728
    goto :goto_1

    .line 2736
    .restart local v8    # "supportGoogleSevice":Z
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string v12, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2737
    .restart local v9    # "voiceAppSearchIntent":Landroid/content/Intent;
    move-object v3, v9

    .line 2738
    const-string v12, "android.speech.extra.LANGUAGE_MODEL"

    const-string v13, "free_form"

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .end local v8    # "supportGoogleSevice":Z
    .end local v9    # "voiceAppSearchIntent":Landroid/content/Intent;
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    move v10, v11

    .line 2744
    goto :goto_3

    .end local v3    # "micIntent":Landroid/content/Intent;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    move v10, v11

    .line 2747
    goto :goto_3
.end method

.method public isAppsPickerStage()Z
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 2635
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppsStage()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 2625
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraggingEnabled()Z
    .locals 1

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderStage()Z
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 2630
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoogleSearchWidget(I)Z
    .locals 10
    .param p1, "currentPage"    # I

    .prologue
    const/4 v7, 0x0

    .line 2984
    iget-object v8, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-nez v8, :cond_1

    .line 3007
    :cond_0
    :goto_0
    return v7

    .line 2988
    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v6

    .line 2989
    .local v6, "workspace":Lcom/android/launcher3/home/Workspace;
    invoke-virtual {v6, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2990
    .local v0, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 2993
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 2994
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz v1, :cond_0

    .line 2997
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 2998
    .local v3, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 2999
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3000
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 3001
    .local v4, "tag":Ljava/lang/Object;
    instance-of v8, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v8, :cond_2

    .line 3002
    check-cast v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .end local v4    # "tag":Ljava/lang/Object;
    iget-object v8, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    sget-object v9, Lcom/android/launcher3/Launcher;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3003
    const/4 v7, 0x1

    goto :goto_0

    .line 2998
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isHomeNormal()Z
    .locals 1

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHomeStage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2620
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 2755
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    return v0
.end method

.method public isRunningAnimation()Z
    .locals 1

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->isRunningAnimation()Z

    move-result v0

    return v0
.end method

.method public isSafeModeEnabled()Z
    .locals 1

    .prologue
    .line 1977
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    return v0
.end method

.method public isSkipAnim()Z
    .locals 1

    .prologue
    .line 2779
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mSkipAnim:Z

    return v0
.end method

.method public isTrayAnimating()Z
    .locals 1

    .prologue
    .line 3053
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/TrayManager;->isMoveAndAnimated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockScreenOrientation()V
    .locals 1

    .prologue
    .line 824
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    .line 827
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/common/stage/StageManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 1828
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->onActivityResult(IILandroid/content/Intent;)V

    .line 1832
    :cond_0
    return-void
.end method

.method public onAppWidgetHostReset()V
    .locals 2

    .prologue
    .line 1851
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1852
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v0

    .line 1853
    .local v0, "appWidgetHost":Lcom/android/launcher3/home/LauncherAppWidgetHost;
    if-eqz v0, :cond_0

    .line 1854
    invoke-virtual {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->startListening()V

    .line 1857
    .end local v0    # "appWidgetHost":Lcom/android/launcher3/home/LauncherAppWidgetHost;
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1087
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1088
    const-string v2, "Launcher"

    const-string v3, "onAttachedToWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1091
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v2, :cond_0

    .line 1092
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v2}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onAttachedToWindow()V

    .line 1100
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1101
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 1104
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportWallpaperTilt()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1105
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-nez v2, :cond_3

    .line 1107
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 1108
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1109
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    .line 1111
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_7

    .line 1112
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->setWindowToken(Landroid/os/IBinder;)V

    .line 1113
    const-string v2, "Launcher"

    const-string v3, "WallpaperScroller - onAttachedToWindow - set mWindowToken"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    .end local v1    # "v":Landroid/view/View;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setWallpaperOffsetToCenter()V

    .line 1123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1124
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1125
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1126
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1127
    const-string v2, "com.sec.android.intent.action.SET_ZERO_PAGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1129
    :cond_4
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1130
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1131
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_font"

    .line 1132
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mDarkFontObserver:Landroid/database/ContentObserver;

    .line 1131
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1133
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_statusbar"

    .line 1134
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mDarkStatusBarObserver:Landroid/database/ContentObserver;

    .line 1133
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1135
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_navigationbar"

    .line 1136
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mDarkNavigationBarObserver:Landroid/database/ContentObserver;

    .line 1135
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1138
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->updateWhiteBgIfNecessary()V

    .line 1140
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1141
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    .line 1142
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mEasyModeObserver:Landroid/database/ContentObserver;

    .line 1141
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1144
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 1145
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setIndicatorTransparency()V

    .line 1146
    iput-boolean v5, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    .line 1147
    iput-boolean v5, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    .line 1148
    return-void

    .line 1095
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    if-eqz v2, :cond_0

    .line 1096
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotWord;->onAttachedToWindow()V

    goto/16 :goto_0

    .line 1115
    .restart local v1    # "v":Landroid/view/View;
    :cond_7
    const-string v2, "Launcher"

    const-string v3, "WallpaperScroller - onAttachedToWindow - mWindowToken is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v0, :cond_1

    .line 1641
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    .line 1652
    :goto_0
    return-void

    .line 1645
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1646
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    goto :goto_0

    .line 1651
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->onBackPressed()V

    goto :goto_0
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 1
    .param p1, "enter"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->onChangeSelectMode(ZZ)V

    .line 2831
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1658
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1662
    :goto_0
    return-void

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickFolderIcon(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1696
    instance-of v5, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v5, :cond_0

    .line 1697
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Input must be a FolderIcon"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v1, p1

    .line 1701
    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 1702
    .local v1, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v3

    .line 1703
    .local v3, "info":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/home/HomeController;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v4

    .line 1707
    .local v4, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    iget-boolean v5, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    .line 1708
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    .line 1713
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1714
    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->isLockedFolderOpenedOnce()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1716
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 1717
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->openLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 1718
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Lcom/android/launcher3/util/logging/SALogging;->insertLockedItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1742
    :cond_2
    :goto_0
    return-void

    .line 1719
    :catch_0
    move-exception v0

    .line 1720
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Launcher"

    const-string v6, " can not open that locked folder "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1722
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-boolean v5, v3, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v5, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderView;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1724
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->closeFolder()V

    .line 1726
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    goto :goto_0

    .line 1730
    :cond_4
    if-eqz v4, :cond_2

    .line 1731
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher3/home/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v2

    .line 1733
    .local v2, "folderScreen":I
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->closeFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 1734
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v5

    if-eq v2, v5, :cond_2

    .line 1736
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->closeFolder()V

    .line 1738
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1037
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged. newConfig : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1041
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1043
    const-string v1, "Launcher"

    const-string v2, "onConfigurationChanged. launcher do not support landscape"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 1048
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->makeDeviceProfile()V

    .line 1049
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppState;->initScreenGrid(Z)V

    .line 1051
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    .line 1052
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutGrid(Lcom/android/launcher3/Launcher;)V

    .line 1053
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/stage/StageManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1054
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_2

    .line 1055
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1057
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/TrayManager;->setBottomViewDragEnable()V

    .line 1059
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/TrayManager;->onConfigurationChanged()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 320
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 323
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 324
    .local v1, "configuration":Landroid/content/res/Configuration;
    const-string v6, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate configuration = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", displayMetrics = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isDeskTopMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 328
    const-string v6, "Launcher"

    const-string v10, "kill Process cause of wrong info from DeX"

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 343
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 344
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 346
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 347
    invoke-direct {p0, v8}, Lcom/android/launcher3/Launcher;->changeEasyModeIfNecessary(Z)V

    .line 349
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->changeHomeModeIfNecessary()V

    .line 353
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->makeDeviceProfile()V

    .line 354
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/launcher3/LauncherAppState;->initScreenGrid(Z)V

    .line 357
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v6

    if-nez v6, :cond_2

    .line 358
    new-instance v6, Lcom/android/launcher3/home/HotWord;

    invoke-direct {v6, p0}, Lcom/android/launcher3/home/HotWord;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    .line 360
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 361
    new-instance v6, Lcom/google/android/libraries/launcherclient/LauncherClient;

    new-instance v10, Lcom/android/launcher3/Launcher$GSAPrewamingClientCallbacks;

    invoke-direct {v10, v9}, Lcom/android/launcher3/Launcher$GSAPrewamingClientCallbacks;-><init>(Lcom/android/launcher3/Launcher$1;)V

    new-instance v11, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v12

    invoke-direct {v11, v8, v12, v7}, Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;-><init>(ZZZ)V

    invoke-direct {v6, p0, v10, v11}, Lcom/google/android/libraries/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/launcherclient/LauncherClient$ClientOptions;)V

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    .line 365
    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    .line 367
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChangeGridForDpi()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 368
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    invoke-static {p0, v6}, Lcom/android/launcher3/util/ScreenGridUtilities;->changeGridForDpi(Landroid/content/Context;Z)V

    .line 372
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    if-ne v6, v7, :cond_13

    move v6, v7

    :goto_1
    sput-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    .line 374
    const/4 v3, 0x0

    .line 375
    .local v3, "isDpiChanged":Z
    sget v6, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    if-lez v6, :cond_6

    sget v6, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v6, v10, :cond_6

    .line 376
    const-string v6, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sDensityDpi = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", densityDpi = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 378
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v6

    iget-object v10, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    iget v10, v10, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    invoke-virtual {v6, v10}, Lcom/android/launcher3/common/model/IconCache;->clearCache(I)V

    .line 380
    :cond_5
    const/4 v3, 0x1

    .line 382
    :cond_6
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v6, Lcom/android/launcher3/Launcher;->sDensityDpi:I

    .line 384
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/launcher3/theme/OpenThemeManager;->initThemeForIconLoading(Z)V

    .line 385
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager;->preloadResources()V

    .line 387
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v8}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 388
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    .line 390
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 391
    new-instance v6, Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-direct {v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 394
    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 395
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 396
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setup(Lcom/android/launcher3/Launcher;)V

    .line 399
    :cond_8
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSSecureSupported()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 400
    invoke-static {}, Lcom/android/launcher3/util/SSecureUpdater;->getInstance()Lcom/android/launcher3/util/SSecureUpdater;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mSSecureUpdater:Lcom/android/launcher3/util/SSecureUpdater;

    .line 401
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mSSecureUpdater:Lcom/android/launcher3/util/SSecureUpdater;

    invoke-virtual {v6}, Lcom/android/launcher3/util/SSecureUpdater;->setup()V

    .line 404
    :cond_9
    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 405
    new-instance v6, Lcom/android/launcher3/common/drag/DragManager;

    invoke-direct {v6, p0}, Lcom/android/launcher3/common/drag/DragManager;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 406
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    .line 408
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-nez v6, :cond_a

    .line 409
    new-instance v6, Lcom/android/launcher3/common/tray/TrayManager;

    invoke-direct {v6}, Lcom/android/launcher3/common/tray/TrayManager;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 412
    :cond_a
    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setup(Landroid/content/Context;)V

    .line 413
    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setupForStatusBar(Landroid/content/Context;)V

    .line 414
    invoke-static {p0}, Lcom/android/launcher3/util/WhiteBgManager;->setupForNavigationBar(Landroid/content/Context;)V

    .line 416
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteNavigationBar()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->changeNavigationBarColor(Z)V

    .line 417
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteStatusBar()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->changeStatusBarColor(Z)V

    .line 419
    new-instance v10, Lcom/android/launcher3/common/stage/StageManager;

    sget-boolean v6, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    if-eqz v6, :cond_14

    move-object v6, v9

    :goto_2
    invoke-direct {v10, p0, v6}, Lcom/android/launcher3/common/stage/StageManager;-><init>(Lcom/android/launcher3/Launcher;Landroid/os/Bundle;)V

    iput-object v10, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    .line 420
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/HomeController;

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 421
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    .line 424
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 425
    new-instance v6, Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-direct {v6, p0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .line 428
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 430
    new-instance v6, Lcom/android/launcher3/Stats;

    invoke-direct {v6, p0}, Lcom/android/launcher3/Stats;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mStats:Lcom/android/launcher3/Stats;

    .line 435
    iput-boolean v8, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 442
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 446
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setOrientation()V

    .line 448
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 449
    const v6, 0x7f040033

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->setContentView(I)V

    .line 454
    :goto_3
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setupViews()V

    .line 455
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutGrid(Lcom/android/launcher3/Launcher;)V

    .line 457
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 458
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v6, :cond_16

    sget-boolean v6, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    if-nez v6, :cond_16

    .line 459
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v6}, Lcom/android/launcher3/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 463
    :goto_4
    sput-boolean v8, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    .line 469
    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutTray;->checkIconTrayEnabled(Landroid/content/Context;)V

    .line 470
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->isRestoring()Z

    move-result v6

    if-nez v6, :cond_d

    .line 471
    iget-boolean v6, p0, Lcom/android/launcher3/Launcher;->mChangeMode:Z

    if-eqz v6, :cond_c

    .line 472
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v6

    const/16 v7, -0x3e9

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->setRestorePage(I)V

    .line 473
    iput-boolean v8, p0, Lcom/android/launcher3/Launcher;->mChangeMode:Z

    .line 477
    :cond_c
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v7, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v7}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/LauncherModel;->startLoader(I)V

    .line 480
    :cond_d
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v6, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 482
    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/launcher3/gamehome/GameHomeManager;->initGameHomeManager(Lcom/android/launcher3/Launcher;)V

    .line 484
    sget-object v6, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v6, p0}, Lcom/android/launcher3/util/LightingEffectManager;->setup(Landroid/app/Activity;)V

    .line 486
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 487
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 489
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 490
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    const-string v6, "com.samsung.action.MIDNIGHT_LIVEICONUPDATE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    const-string v6, "com.samsung.action.EVERY_MINUTE_CLOCK_UPDATE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 496
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->setLiveIconAlarm()V

    .line 498
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "com.sec.android.intent.action.LCEXTRACTOR"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 499
    .local v4, "lcExtractorFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mLCExtractorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v4}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 501
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 502
    new-instance v6, Lcom/android/launcher3/pagetransition/PageTransitionManager;

    invoke-direct {v6, p0}, Lcom/android/launcher3/pagetransition/PageTransitionManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    .line 505
    :cond_e
    new-instance v6, Lcom/android/launcher3/util/GlobalSettingUtils;

    invoke-direct {v6, p0}, Lcom/android/launcher3/util/GlobalSettingUtils;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v6, p0, Lcom/android/launcher3/Launcher;->mGlobalSettingUtils:Lcom/android/launcher3/util/GlobalSettingUtils;

    .line 507
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "StartEdit"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 508
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mGlobalSettingUtils:Lcom/android/launcher3/util/GlobalSettingUtils;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/GlobalSettingUtils;->startHomeSettingBySettingMenu(Landroid/content/Intent;)V

    .line 511
    :cond_f
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/Launcher$2;

    invoke-direct {v7, p0}, Lcom/android/launcher3/Launcher$2;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v6, v7}, Lcom/android/launcher3/proxy/LauncherProxy;->setLauncherActivityProxyCallbacks(Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;)V

    .line 774
    return-void

    .line 330
    .end local v0    # "app":Lcom/android/launcher3/LauncherAppState;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "isDpiChanged":Z
    .end local v4    # "lcExtractorFilter":Landroid/content/IntentFilter;
    :cond_10
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v6

    if-nez v6, :cond_12

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 331
    sget v6, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    .line 332
    const-string v6, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrong configuration -> recreateLauncher (count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget v6, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    const/4 v10, 0x5

    if-gt v6, v10, :cond_11

    .line 334
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->recreateLauncher()V

    goto/16 :goto_0

    .line 336
    :cond_11
    const-string v6, "Launcher"

    const-string v10, "We can\'t recreate activity any more"

    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sput v8, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    goto/16 :goto_0

    .line 340
    :cond_12
    sput v8, Lcom/android/launcher3/Launcher;->sRecreateCountOnCreate:I

    goto/16 :goto_0

    .restart local v0    # "app":Lcom/android/launcher3/LauncherAppState;
    :cond_13
    move v6, v8

    .line 372
    goto/16 :goto_1

    .restart local v3    # "isDpiChanged":Z
    :cond_14
    move-object v6, p1

    .line 419
    goto/16 :goto_2

    .line 451
    :cond_15
    const v6, 0x7f040031

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->setContentView(I)V

    goto/16 :goto_3

    .line 461
    :cond_16
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v6, v7, v9}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1794
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1374
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1375
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v1, :cond_0

    .line 1376
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onDestroy()V

    .line 1379
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1380
    const-string v1, "Launcher"

    const-string v2, "onDestroy: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v1, :cond_1

    .line 1382
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    .line 1383
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearUninstallApplist()V

    .line 1386
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    if-eqz v1, :cond_2

    .line 1387
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->onDestroy()V

    .line 1388
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mQuickOptionManager:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .line 1392
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->removeAdvanceMessage()V

    .line 1393
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1396
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 1400
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1401
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 1402
    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    .line 1404
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeLoader;->unRegisterCallbacks()V

    .line 1408
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    .line 1409
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->onDestroy()V

    .line 1410
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    .line 1412
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_4

    .line 1413
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/TrayManager;->onDestroy()V

    .line 1414
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 1417
    :cond_4
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 1418
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1419
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLCExtractorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1421
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 1422
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 1424
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_5

    .line 1425
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1426
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1428
    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v1, :cond_6

    .line 1429
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->onDestroy()V

    .line 1431
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSSecureSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mSSecureUpdater:Lcom/android/launcher3/util/SSecureUpdater;

    if-eqz v1, :cond_7

    .line 1432
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mSSecureUpdater:Lcom/android/launcher3/util/SSecureUpdater;

    invoke-virtual {v1}, Lcom/android/launcher3/util/SSecureUpdater;->onDestroy()V

    .line 1434
    :cond_7
    invoke-static {}, Lcom/android/launcher3/util/BlurUtils;->resetBlur()V

    .line 1435
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mPageTransitionManager:Lcom/android/launcher3/pagetransition/PageTransitionManager;

    .line 1436
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->onDestroyActivity()V

    .line 1437
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->unregisterReceivers()V

    .line 1438
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1152
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 1153
    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    .line 1155
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow mAttached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onDetachedFromWindow()V

    .line 1162
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    if-eqz v0, :cond_2

    .line 1163
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    if-eqz v0, :cond_1

    .line 1164
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotWord;->onDetachedFromWindow()V

    .line 1166
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->unregisterReceivers()V

    .line 1167
    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mAttached:Z

    .line 1169
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    .line 1170
    return-void
.end method

.method public onDragEnd()Z
    .locals 1

    .prologue
    .line 1448
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 1449
    const/4 v0, 0x1

    return v0
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->lockScreenOrientation()V

    .line 1443
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1491
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    .line 1492
    .local v8, "uniChar":I
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    .line 1493
    .local v4, "handled":Z
    if-lez v8, :cond_2

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v6, 0x1

    .line 1494
    .local v6, "isKeyNotWhitespace":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1496
    .local v0, "config":Landroid/content/res/Configuration;
    iget v9, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    .line 1497
    const/16 v9, 0x12

    if-eq p1, v9, :cond_0

    const/16 v9, 0x11

    if-ne p1, v9, :cond_4

    .line 1498
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1499
    iget-boolean v9, p0, Lcom/android/launcher3/Launcher;->mLongPress:Z

    if-eqz v9, :cond_3

    .line 1500
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher3/Launcher;->mShortPress:Z

    .line 1505
    :goto_1
    const/4 v4, 0x1

    .line 1582
    .end local v4    # "handled":Z
    :cond_1
    :goto_2
    return v4

    .line 1493
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v6    # "isKeyNotWhitespace":Z
    .restart local v4    # "handled":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1502
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v6    # "isKeyNotWhitespace":Z
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher3/Launcher;->mShortPress:Z

    .line 1503
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher3/Launcher;->mLongPress:Z

    goto :goto_1

    .line 1506
    :cond_4
    const/4 v9, 0x7

    if-lt p1, v9, :cond_5

    const/16 v9, 0x12

    if-gt p1, v9, :cond_5

    .line 1507
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    const-string v10, "tel:"

    .line 1508
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1509
    .local v7, "myIntentDial":Landroid/content/Intent;
    const-string v9, "firstKeycode"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1510
    const-string v9, "isKeyTone"

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1511
    invoke-virtual {p0, v7}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1512
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->clearTypedText()V

    goto :goto_2

    .line 1514
    .end local v7    # "myIntentDial":Landroid/content/Intent;
    :cond_5
    const/16 v9, 0x1b

    if-ne p1, v9, :cond_7

    .line 1516
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v9, 0x4000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1518
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1519
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_3
    if-nez v4, :cond_9

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->acceptFilter()Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v6, :cond_9

    .line 1540
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v10}, Lcom/android/launcher3/home/HomeController;->getContainerView()Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v10, v11, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 1542
    .local v3, "gotKey":Z
    if-eqz v3, :cond_9

    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_9

    .line 1549
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onSearchRequested()Z

    move-result v4

    goto :goto_2

    .line 1520
    .end local v3    # "gotKey":Z
    :catch_0
    move-exception v1

    .line 1521
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const v9, 0x7f090011

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 1523
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_7
    const/16 v9, 0x43

    if-ne p1, v9, :cond_6

    .line 1524
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1525
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1527
    :cond_8
    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v9, :cond_6

    .line 1528
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v2

    .line 1529
    .local v2, "folder":Lcom/android/launcher3/folder/view/FolderView;
    if-nez v2, :cond_6

    .line 1530
    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v9}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1531
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    goto :goto_3

    .line 1554
    .end local v2    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_9
    const/16 v9, 0x52

    if-ne p1, v9, :cond_a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1555
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1558
    :cond_a
    const/16 v9, 0x3ea

    if-ne p1, v9, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1559
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v9

    if-nez v9, :cond_f

    .line 1560
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1561
    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1562
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_b

    .line 1563
    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1572
    :cond_b
    :goto_4
    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v9}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1573
    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v9}, Lcom/android/launcher3/common/stage/StageManager;->onBackPressed()V

    .line 1575
    :cond_c
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v9, :cond_d

    .line 1576
    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v9}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 1578
    :cond_d
    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1579
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1565
    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v9

    if-nez v9, :cond_b

    .line 1566
    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 1567
    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZZ)V

    goto :goto_4

    .line 1570
    :cond_f
    iget-object v9, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZZ)V

    goto :goto_4
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1597
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1598
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1599
    const/16 v2, 0x12

    if-ne p1, v2, :cond_0

    .line 1600
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mShortPress:Z

    .line 1601
    iput-boolean v4, p0, Lcom/android/launcher3/Launcher;->mLongPress:Z

    .line 1602
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->mannerModeSet()V

    .line 1609
    :goto_0
    return v1

    .line 1604
    :cond_0
    const/16 v2, 0x11

    if-ne p1, v2, :cond_1

    .line 1605
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mShortPress:Z

    .line 1606
    iput-boolean v4, p0, Lcom/android/launcher3/Launcher;->mLongPress:Z

    .line 1609
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x12

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1460
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1461
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1462
    .local v0, "config":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 1463
    if-eq p1, v8, :cond_0

    const/16 v5, 0x11

    if-ne p1, v5, :cond_1

    .line 1464
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/Stage;->searchBarHasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v4

    .line 1486
    .end local v1    # "handled":Z
    :cond_1
    :goto_0
    return v1

    .line 1467
    .restart local v1    # "handled":Z
    :cond_2
    iget-boolean v5, p0, Lcom/android/launcher3/Launcher;->mShortPress:Z

    if-eqz v5, :cond_3

    .line 1468
    const/4 v3, 0x0

    .line 1469
    .local v3, "uri":Landroid/net/Uri;
    if-ne p1, v8, :cond_4

    .line 1470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1474
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1475
    .local v2, "myIntentDial":Landroid/content/Intent;
    const-string v5, "isPoundKey"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1476
    const-string v5, "firstKeycode"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1477
    const-string v5, "isKeyTone"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1478
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1479
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->clearTypedText()V

    .line 1481
    .end local v2    # "myIntentDial":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    iput-boolean v7, p0, Lcom/android/launcher3/Launcher;->mShortPress:Z

    .line 1482
    iput-boolean v4, p0, Lcom/android/launcher3/Launcher;->mLongPress:Z

    goto :goto_0

    .line 1472
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1174
    const-wide/16 v14, 0x0

    .line 1178
    .local v14, "startTime":J
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1179
    const-string v19, "Launcher"

    const-string v20, "onNewIntent"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v19

    const/high16 v20, 0x400000

    and-int v19, v19, v20

    const/high16 v20, 0x400000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    const/4 v5, 0x1

    .line 1185
    .local v5, "alreadyOnHome":Z
    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/Launcher;->mSkipAnim:Z

    .line 1186
    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v19

    if-eqz v19, :cond_2

    const/4 v11, 0x1

    .line 1187
    .local v11, "isModalState":Z
    :goto_1
    const-string v19, "android.intent.action.MAIN"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1188
    .local v10, "isActionMain":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v13

    .line 1189
    .local v13, "topStage":I
    if-eqz v10, :cond_14

    .line 1190
    const-string v19, "extra_enter_screen_grid"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1192
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    .line 1193
    .local v12, "mHandler":Landroid/os/Handler;
    new-instance v19, Lcom/android/launcher3/Launcher$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/Launcher$5;-><init>(Lcom/android/launcher3/Launcher;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1346
    .end local v12    # "mHandler":Landroid/os/Handler;
    :cond_0
    :goto_2
    return-void

    .line 1182
    .end local v5    # "alreadyOnHome":Z
    .end local v10    # "isActionMain":Z
    .end local v11    # "isModalState":Z
    .end local v13    # "topStage":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1186
    .restart local v5    # "alreadyOnHome":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 1204
    .restart local v10    # "isActionMain":Z
    .restart local v11    # "isModalState":Z
    .restart local v13    # "topStage":I
    :cond_3
    const-string v19, "ZeroPageSetting"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1205
    const v19, 0x7f05000e

    const v20, 0x7f05000f

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->overridePendingTransition(II)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v18

    .line 1207
    .local v18, "zeroPageController":Lcom/android/launcher3/home/ZeroPageController;
    if-eqz v18, :cond_0

    .line 1208
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/home/ZeroPageController;->enterZeroPageSetting()V

    goto :goto_2

    .line 1211
    .end local v18    # "zeroPageController":Lcom/android/launcher3/home/ZeroPageController;
    :cond_4
    const-string v19, "StartEdit"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mGlobalSettingUtils:Lcom/android/launcher3/util/GlobalSettingUtils;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/GlobalSettingUtils;->startHomeSettingBySettingMenu(Landroid/content/Intent;)V

    goto :goto_2

    .line 1214
    :cond_5
    const-string v19, "extra_enter_widgets"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1215
    const/16 v19, 0x3

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    goto :goto_2

    .line 1217
    :cond_6
    const-string v19, "extra_enter_apps_screen_grid"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1218
    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    goto/16 :goto_2

    .line 1222
    :cond_7
    const-string v19, "extra_enter_hide_apps"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1223
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v19

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 1226
    :cond_8
    new-instance v6, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v6}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1227
    .local v6, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v6, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1228
    const-string v19, "KEY_PICKER_MODE"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_2

    .line 1233
    .end local v6    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_9
    const-string v19, "AppSearch"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    .line 1234
    const-string v19, "android.intent.extra.USER"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/Launcher;->mSearchedAppUser:Landroid/os/UserHandle;

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mSearchedAppUser:Landroid/os/UserHandle;

    move-object/from16 v19, v0

    if-nez v19, :cond_a

    .line 1236
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/Launcher;->mSearchedAppUser:Landroid/os/UserHandle;

    .line 1238
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v19

    if-nez v19, :cond_b

    .line 1239
    new-instance v7, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v7}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1240
    .local v7, "entry":Lcom/android/launcher3/common/stage/StageEntry;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1241
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v7, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 1242
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v7, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_2

    .line 1248
    .end local v7    # "entry":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->closeSystemDialogs()V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/HomeController;->getContainerView()Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const-string v21, "3"

    invoke-virtual/range {v19 .. v21}, Lcom/android/launcher3/home/HomeController;->exitResizeState(ZLjava/lang/String;)V

    .line 1261
    const-string v19, "android.intent.extra.FROM_HOME_KEY"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1262
    .local v8, "fromHomeKey":Z
    const-string v19, "sec.android.intent.extra.LAUNCHER_ACTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_18

    .line 1263
    if-nez v5, :cond_c

    if-eqz v8, :cond_17

    .line 1264
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v19

    if-eqz v19, :cond_15

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/HomeController;->cancelGridChange()V

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/HomeController;->finishAllStage()V

    .line 1271
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showMultiSelectPanel(ZZ)V

    .line 1274
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    .line 1276
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearUninstallApplist()V

    .line 1278
    :cond_f
    if-eqz v5, :cond_10

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_11

    if-eqz v11, :cond_11

    .line 1279
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher3/home/HomeController;->enableCustomLayoutAnimation(Z)V

    .line 1281
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v19

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    .line 1282
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/ZeroPageController;->isCurrentZeroPage()Z

    move-result v19

    if-eqz v19, :cond_16

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/HomeController;->getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/ZeroPageController;->startZeroPage()V

    .line 1284
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/Launcher;->mZeropageStartedByHomeKey:Z

    .line 1316
    :cond_12
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v16

    .line 1317
    .local v16, "v":Landroid/view/View;
    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v19

    if-eqz v19, :cond_13

    .line 1318
    const-string v19, "input_method"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    .line 1319
    .local v9, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1322
    .end local v9    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_13
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/Utilities;->closeDialog(Landroid/app/Activity;)V

    .line 1328
    .end local v8    # "fromHomeKey":Z
    .end local v16    # "v":Landroid/view/View;
    :cond_14
    if-eqz v10, :cond_0

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v17

    .line 1330
    .local v17, "workspace":Lcom/android/launcher3/home/Workspace;
    if-eqz v5, :cond_0

    if-nez v11, :cond_0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_0

    .line 1331
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/home/Workspace;->isTouchActive()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1332
    new-instance v19, Lcom/android/launcher3/Launcher$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/Launcher$6;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/Workspace;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 1267
    .end local v17    # "workspace":Lcom/android/launcher3/home/Workspace;
    .restart local v8    # "fromHomeKey":Z
    :cond_15
    if-nez v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/home/HomeController;->finishAllStage()V

    goto/16 :goto_3

    .line 1286
    :cond_16
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->resetSettingsValue()V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher3/home/HomeController;->enableCustomLayoutAnimation(Z)V

    goto/16 :goto_4

    .line 1291
    :cond_17
    new-instance v6, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v6}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1292
    .restart local v6    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v6, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    goto/16 :goto_4

    .line 1295
    .end local v6    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_18
    const-string v19, "sec.android.intent.extra.LAUNCHER_ACTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1296
    .local v4, "action":Ljava/lang/String;
    const-string v19, "com.android.launcher2.ALL_APPS"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1297
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v19

    if-nez v19, :cond_12

    .line 1298
    new-instance v6, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v6}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 1299
    .restart local v6    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v6, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 1300
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v19

    if-nez v19, :cond_19

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 1307
    :cond_19
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/common/stage/StageManager;->onBackPressed()V

    .line 1310
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto/16 :goto_4

    .line 1303
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v19

    if-nez v19, :cond_19

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_5
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 997
    const-string v1, "Launcher"

    const-string v2, "Launcher.onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->onPause()V

    .line 1000
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/LauncherAppState;->enableExternalQueue(Z)V

    .line 1001
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v1, :cond_0

    .line 1003
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onPause()V

    .line 1006
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1007
    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 1008
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v1, :cond_1

    .line 1009
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    .line 1010
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->resetLastGestureUpTime()V

    .line 1011
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1012
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 1015
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportWallpaperTilt()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1016
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->shutdownWallpaperScroller()V

    .line 1019
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 1020
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->hasStartedSFinder()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1021
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1022
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher3/Launcher$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$4;-><init>(Lcom/android/launcher3/Launcher;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1032
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->closeDialogIfNeeded()V

    .line 1033
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->onPrepareOptionMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 3132
    packed-switch p1, :pswitch_data_0

    .line 3145
    :goto_0
    return-void

    .line 3134
    :pswitch_0
    invoke-static {p3}, Lcom/android/launcher3/util/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3135
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLCExtractor:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    if-eqz v0, :cond_0

    .line 3136
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLCExtractor:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-virtual {v0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->startExtractLayout()V

    goto :goto_0

    .line 3138
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "mLCExtractor object didn\'t created."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3141
    :cond_1
    const-string v0, "Launcher"

    const-string v1, "REQUEST_LAUCHER_EXTRACTOR not granted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3132
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 845
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 846
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/TrayManager;->resetMoving()V

    .line 849
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1350
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1351
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1354
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 20

    .prologue
    .line 854
    invoke-static {}, Lcom/android/launcher3/Utilities;->launcherResumeTesterStart()V

    .line 856
    const-wide/16 v12, 0x0

    .line 860
    .local v12, "startTime":J
    const-string v3, "Launcher"

    const-string v4, "Launcher.onResume()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 864
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 865
    const-string v3, "Launcher"

    const-string v4, "move to home stage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v3, :cond_0

    .line 867
    new-instance v10, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v10}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 868
    .local v10, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const/4 v3, 0x0

    iput-boolean v3, v10, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v10}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 871
    .end local v10    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    .line 874
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/Launcher;->mZeropageStartedByHomeKey:Z

    if-nez v3, :cond_2

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "start_from_zeropage"

    invoke-static {v3, v4}, Lcom/android/launcher3/Utilities;->getZeroPageKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "start_from_zeropage"

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    .line 881
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/util/logging/GSIMLogging;->getZeroPageStayTime()J

    move-result-wide v6

    .line 882
    .local v6, "stayTime":J
    const-wide/16 v4, -0x1

    cmp-long v3, v6, v4

    if-eqz v3, :cond_3

    .line 883
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "ZPST"

    .line 884
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/util/logging/GSIMLogging;->classifyZeroPageStayTime(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 883
    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 888
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/Launcher;->mZeropageStartedByHomeKey:Z

    .line 890
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/launcher3/Launcher;->sNeedCheckEasyMode:Z

    if-eqz v3, :cond_4

    .line 891
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher3/Launcher;->changeEasyModeIfNecessary(Z)V

    .line 892
    sget-boolean v3, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    if-eqz v3, :cond_4

    .line 893
    const-string v3, "Launcher"

    const-string v4, "recreateModeChange return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :goto_0
    return-void

    .line 899
    :cond_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 900
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v16

    .line 901
    .local v16, "themeManager":Lcom/android/launcher3/theme/OpenThemeManager;
    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TRANSITON_EFFECT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v3}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/launcher3/theme/OpenThemeManager;->getInteger(I)I

    move-result v17

    .line 902
    .local v17, "transitionId":I
    const/4 v3, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_5

    const/16 v17, 0x0

    .end local v17    # "transitionId":I
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/launcher3/Launcher;->setWhichTransitionEffect(I)V

    .line 905
    .end local v16    # "themeManager":Lcom/android/launcher3/theme/OpenThemeManager;
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v3, :cond_7

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v3}, Lcom/google/android/libraries/launcherclient/LauncherClient;->onResume()V

    .line 912
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v3, :cond_8

    .line 913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 914
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeState:I

    .line 917
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/Launcher;->mPaused:Z

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->isRestoring()Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v3, :cond_a

    .line 919
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/HomeBindController;->setWorkspaceLoading(Z)V

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 926
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    const/16 v4, -0x3e9

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherModel;->startLoader(I)V

    .line 927
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/HomeController;->setRestoring(Z)V

    .line 928
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    .line 931
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 934
    const-string v3, "Launcher"

    const-string v4, "mBindOnResumeCallbacks run"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-wide/16 v14, 0x0

    .line 936
    .local v14, "startTimeCallbacks":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 938
    .local v9, "callBackSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_c

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 940
    .local v2, "bindRunnable":Ljava/lang/Runnable;
    if-eqz v2, :cond_b

    .line 941
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 938
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 944
    .end local v2    # "bindRunnable":Ljava/lang/Runnable;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 945
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time spent processing callbacks in onResume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CallCount  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 945
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    .end local v9    # "callBackSize":I
    .end local v11    # "i":I
    .end local v14    # "startTimeCallbacks":J
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 950
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_e

    .line 951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 950
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 953
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 956
    .end local v11    # "i":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHotseatOnResumeCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_10

    .line 957
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHotseatOnResumeCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 958
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/Launcher;->mHotseatOnResumeCallback:Ljava/lang/Runnable;

    .line 965
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v3, :cond_12

    .line 966
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v3

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 967
    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    .line 970
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isSkipAnim()Z

    move-result v3

    if-nez v3, :cond_12

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->postUninstallActivity()V

    .line 975
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v3

    if-nez v3, :cond_13

    .line 977
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->disableAndFlushExternalQueue()V

    .line 980
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/StageManager;->onResume()V

    .line 981
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/Launcher;->mSkipAnim:Z

    .line 983
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->finishSettingsActivity()V

    .line 985
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportWallpaperTilt()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 986
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->setupWallpaperScroller()V

    .line 988
    :cond_15
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/Utilities;->broadcastStkIntent(Landroid/content/Context;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mGlobalSettingUtils:Lcom/android/launcher3/util/GlobalSettingUtils;

    invoke-virtual {v3}, Lcom/android/launcher3/util/GlobalSettingUtils;->checkEnterNormalState()V

    .line 992
    invoke-static {}, Lcom/android/launcher3/Utilities;->launcherResumeTesterEnd()V

    goto/16 :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->isCurrentCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 1071
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1358
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1360
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/StageManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1369
    :cond_0
    const-string v0, "launcher.view_ids"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mItemIdToViewId:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1370
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1804
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1806
    return v1
.end method

.method public onSettingsChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "settings"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1836
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingsChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    const-string v0, "pref_home_screen_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1838
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/home/HomeController;->changeHomeScreenMode(Ljava/lang/String;Z)V

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1839
    :cond_1
    const-string v0, "pref_CloneItemEnabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1840
    invoke-direct {p0, p2}, Lcom/android/launcher3/Launcher;->setCloneItemEnabled(Z)V

    goto :goto_0

    .line 1841
    :cond_2
    const-string v0, "pref_apps_button_setting"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/home/HomeController;->setAppsButtonEnabled(Z)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 838
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 839
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 840
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->onStart()V

    .line 841
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 831
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 832
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 833
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->onStop()V

    .line 834
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1954
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 1955
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 1958
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 1963
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1077
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1078
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    .line 1079
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mHasFocus:Z

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    .line 1081
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1083
    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 1885
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    .line 1886
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowVisibilityChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    .line 1891
    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    if-eqz v1, :cond_1

    .line 1892
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1893
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getContainerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1897
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/launcher3/Launcher$7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$7;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1923
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->clearTypedText()V

    .line 1925
    :cond_1
    return-void

    .line 1885
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onZeroPageActiveChanged(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeController;->onZeroPageActiveChanged(Z)V

    .line 3094
    return-void
.end method

.method public openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 5
    .param p1, "folderIconView"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 2259
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 2260
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2273
    :goto_0
    return-void

    .line 2263
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 2270
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2271
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v1, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2272
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    .line 2265
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2266
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 2267
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_1
.end method

.method public recreateLauncher()V
    .locals 1

    .prologue
    .line 2057
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/Launcher;->sIsRecreateModeChange:Z

    .line 2058
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->recreate()V

    .line 2059
    return-void
.end method

.method public relayoutLauncher()V
    .locals 1

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutGrid(Lcom/android/launcher3/Launcher;)V

    .line 2068
    return-void
.end method

.method public setHotWordDetection(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 3011
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3012
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    if-eqz v0, :cond_0

    .line 3013
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotword:Lcom/android/launcher3/home/HotWord;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HotWord;->setEnableHotWord(Z)V

    .line 3020
    :cond_0
    :goto_0
    return-void

    .line 3015
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 3016
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPrewarmingClient:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->requestHotwordDetection(Z)V

    .line 3017
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHotWordDetection : call requestHotwordDetection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLoadOnResume()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2047
    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2049
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeNeedsLoad:Z

    .line 2052
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSavedState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "option"    # Landroid/os/Bundle;

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 1986
    return-void
.end method

.method public setSearchedApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "SearchedApp"    # Ljava/lang/String;

    .prologue
    .line 2860
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSearchedApp:Ljava/lang/String;

    .line 2861
    return-void
.end method

.method public setSearchedAppUser(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 2864
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mSearchedAppUser:Landroid/os/UserHandle;

    .line 2865
    return-void
.end method

.method public showAppsOrWidgets(IZZ)Z
    .locals 7
    .param p1, "toMode"    # I
    .param p2, "animated"    # Z
    .param p3, "fromSetting"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2656
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 2657
    if-eqz p3, :cond_1

    if-ne p1, v5, :cond_1

    .line 2658
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2659
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v2, "KEY_WIDGET_FROM_SETTING"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2660
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->deliverDataWithOutStageChange(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 2688
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_0
    :goto_0
    return v1

    .line 2661
    :cond_1
    if-eqz p3, :cond_0

    if-ne p1, v4, :cond_0

    .line 2662
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2663
    .restart local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 2664
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->deliverDataWithOutStageChange(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0

    .line 2669
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_2
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 2670
    .restart local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p2, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 2671
    if-eqz p3, :cond_3

    .line 2672
    if-ne p1, v4, :cond_4

    .line 2673
    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 2679
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v3, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 2682
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/HomeBindController;->setUserPresent(Z)V

    .line 2683
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->updateAutoAdvanceState()V

    .line 2686
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x20

    .line 2687
    invoke-virtual {v1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    move v1, v2

    .line 2688
    goto :goto_0

    .line 2674
    :cond_4
    if-ne p1, v5, :cond_3

    .line 2675
    const-string v3, "KEY_WIDGET_FROM_SETTING"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public showAppsView(ZZ)V
    .locals 3
    .param p1, "animated"    # Z
    .param p2, "resetToTop"    # Z

    .prologue
    .line 2643
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAppsView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resetToTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    .line 2645
    return-void
.end method

.method public showWidgetsView(ZZ)V
    .locals 3
    .param p1, "animated"    # Z
    .param p2, "resetToTop"    # Z

    .prologue
    .line 2651
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showWidgetsView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resetToTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/Launcher;->showAppsOrWidgets(IZZ)Z

    .line 2653
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/StageManager;->onStartForResult(I)V

    .line 1747
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1748
    return-void
.end method

.method public startAppShortcutOrInfoActivity(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1665
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1668
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 1669
    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1670
    .local v3, "shortcut":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Lcom/android/launcher3/util/logging/SALogging;->insertItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    .line 1671
    iget-object v5, v3, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1672
    .local v1, "intent":Landroid/content/Intent;
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 1673
    .local v2, "pos":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1674
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v2, v8

    aget v7, v2, v10

    aget v8, v2, v8

    .line 1675
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v2, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1674
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1680
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 1681
    invoke-virtual {v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1683
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {v5, v3, p0}, Lcom/android/launcher3/util/logging/SALogging;->insertLockedItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1689
    :cond_0
    :goto_0
    invoke-static {p0, p1, v1, v4}, Lcom/android/launcher3/Utilities;->startActivitySafely(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 1690
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mStats:Lcom/android/launcher3/Stats;

    invoke-virtual {v5, p1, v1, v3}, Lcom/android/launcher3/Stats;->recordLaunch(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 1691
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/logging/GSIMLogging;->runAllStatusLogging()V

    .line 1692
    return-void

    .line 1677
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pos":[I
    .end local v3    # "shortcut":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Input must be a Shortcut or AppInfo"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1684
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "pos":[I
    .restart local v3    # "shortcut":Lcom/android/launcher3/common/base/item/IconInfo;
    :catch_0
    move-exception v0

    .line 1685
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Launcher"

    const-string v6, " can not SALogging locked app "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startApplicationUninstallActivity(Landroid/content/ComponentName;ILcom/android/launcher3/common/compat/UserHandleCompat;Z)Z
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "showToast"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1929
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_1

    .line 1932
    if-eqz p4, :cond_0

    .line 1933
    const v6, 0x7f090076

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, " "

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1934
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1948
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 1938
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1939
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1940
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    const-string v6, "package"

    .line 1941
    invoke-static {v6, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1942
    .local v1, "intent":Landroid/content/Intent;
    const v4, 0x10808000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1944
    if-eqz p3, :cond_2

    .line 1945
    const-string v4, "android.intent.extra.USER"

    invoke-virtual {p3, v1, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1947
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 1948
    goto :goto_0
.end method

.method public startHomeSettingActivity()V
    .locals 1

    .prologue
    .line 2838
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity(Z)V

    .line 2839
    return-void
.end method

.method public startHomeSettingActivity(Z)V
    .locals 3
    .param p1, "fromGlobalSettings"    # Z

    .prologue
    .line 2842
    const-string v1, "Launcher"

    const-string v2, "launch setting Activity."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher3/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2844
    .local v0, "homescreenSetting":Landroid/content/Intent;
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2845
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2846
    if-eqz p1, :cond_0

    .line 2847
    const v1, 0x7f05000a

    const v2, 0x7f050005

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/Launcher;->overridePendingTransition(II)V

    .line 2849
    :cond_0
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1753
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/common/stage/StageManager;->onStartForResult(I)V

    .line 1755
    :try_start_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1760
    return-void

    .line 1757
    :catch_0
    move-exception v0

    .line 1758
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
.end method

.method public startLCExtractor(I)V
    .locals 1
    .param p1, "extractType"    # I

    .prologue
    .line 3126
    new-instance v0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mLCExtractor:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    .line 3127
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLCExtractor:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-virtual {v0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->checkCondition()V

    .line 3128
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 1770
    if-nez p1, :cond_0

    .line 1772
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 1774
    :cond_0
    if-nez p3, :cond_1

    .line 1775
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1776
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    :cond_1
    const-string v1, "search"

    .line 1780
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1781
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1785
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 1786
    return-void
.end method

.method public startSearchFromAllApps(Landroid/view/View;Landroid/content/Intent;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "searchIntent"    # Landroid/content/Intent;

    .prologue
    .line 1789
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/Utilities;->startActivitySafely(Landroid/app/Activity;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 1790
    return-void
.end method

.method public unlockScreenOrientation(Z)V
    .locals 4
    .param p1, "immediate"    # Z

    .prologue
    .line 810
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    if-eqz p1, :cond_1

    .line 812
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/Launcher$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Launcher$3;-><init>(Lcom/android/launcher3/Launcher;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2767
    .local p1, "hideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/LauncherModel;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 2768
    return-void
.end method

.method public updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p3, "isGameapp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2771
    .local p1, "hideItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 2772
    return-void
.end method

.method public updateItemInfoToAppsItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2775
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherModel;->updateItemInfoToAppsItems(Ljava/util/ArrayList;)V

    .line 2776
    return-void
.end method

.method public updateZeroPage(I)V
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2605
    new-instance v0, Lcom/android/launcher3/Launcher$14;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Launcher$14;-><init>(Lcom/android/launcher3/Launcher;I)V

    .line 2610
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2617
    :cond_0
    :goto_0
    return-void

    .line 2614
    :cond_1
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v1, :cond_0

    .line 2615
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/HomeController;->updateZeroPage(I)V

    goto :goto_0
.end method

.method public waitUntilResume(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 2016
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v0

    return v0
.end method

.method public waitUntilResume(Ljava/lang/Runnable;Z)Z
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;
    .param p2, "deletePreviousRunnables"    # Z

    .prologue
    .line 2002
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v0, :cond_2

    .line 2004
    if-eqz p2, :cond_1

    .line 2005
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2008
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mBindOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2009
    const/4 v0, 0x1

    .line 2011
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public waitUntilResumeForHotseat(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 2020
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2021
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mHotseatOnResumeCallback:Ljava/lang/Runnable;

    .line 2022
    const/4 v0, 0x1

    .line 2024
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
