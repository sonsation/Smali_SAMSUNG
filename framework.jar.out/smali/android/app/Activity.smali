.class public Landroid/app/Activity;
.super Landroid/view/ContextThemeWrapper;
.source "Activity.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/Window$OnWindowDismissedCallback;
.implements Landroid/view/Window$WindowControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$1;,
        Landroid/app/Activity$HostCallbacks;,
        Landroid/app/Activity$ManagedCursor;,
        Landroid/app/Activity$ManagedDialog;,
        Landroid/app/Activity$NonConfigurationInstances;,
        Landroid/app/Activity$SemTranslucentConversionListener;,
        Landroid/app/Activity$TranslucentConversionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_LIFECYCLE:Z = false

.field public static final DEFAULT_KEYS_DIALER:I = 0x1

.field public static final DEFAULT_KEYS_DISABLE:I = 0x0

.field public static final DEFAULT_KEYS_SEARCH_GLOBAL:I = 0x4

.field public static final DEFAULT_KEYS_SEARCH_LOCAL:I = 0x3

.field public static final DEFAULT_KEYS_SHORTCUT:I = 0x2

.field public static final DONT_FINISH_TASK_WITH_ACTIVITY:I = 0x0

.field public static final FINISH_TASK_WITH_ACTIVITY:I = 0x2

.field public static final FINISH_TASK_WITH_ROOT_ACTIVITY:I = 0x1

.field protected static final FOCUSED_STATE_SET:[I

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field private static final HAS_CURENT_PERMISSIONS_REQUEST_KEY:Ljava/lang/String; = "android:hasCurrentPermissionsRequest"

.field private static final KEYBOARD_SHORTCUTS_RECEIVER_CLASS_NAME:Ljava/lang/String; = "com.android.systemui.statusbar.KeyboardShortcutsReceiver"

.field private static final KEYBOARD_SHORTCUTS_RECEIVER_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static METHOD_ON_SCREEN_CHANGED:Ljava/lang/reflect/Method; = null

.field private static final MULTI_SCREEN_LISTENER_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.multiscreen.MultiScreenListener"

.field private static final REQUEST_PERMISSIONS_WHO_PREFIX:Ljava/lang/String; = "@android:requestPermissions:"

.field public static final RESULT_CANCELED:I = 0x0

.field public static final RESULT_FIRST_USER:I = 0x1

.field public static final RESULT_OK:I = -0x1

.field private static final SAVED_DIALOGS_TAG:Ljava/lang/String; = "android:savedDialogs"

.field private static final SAVED_DIALOG_ARGS_KEY_PREFIX:Ljava/lang/String; = "android:dialog_args_"

.field private static final SAVED_DIALOG_IDS_KEY:Ljava/lang/String; = "android:savedDialogIds"

.field private static final SAVED_DIALOG_KEY_PREFIX:Ljava/lang/String; = "android:dialog_"

.field private static final TAG:Ljava/lang/String; = "Activity"

.field private static final WINDOW_HIERARCHY_TAG:Ljava/lang/String; = "android:viewHierarchyState"

.field private static mAsParamVal:[I

.field private static mDragBoostPossible:I

.field private static mIsFirstACtivityStart:Z

.field private static mPerf:Landroid/util/BoostFramework;

.field private static mPerfLockDuration:I

.field private static final mSupportSmartManagerTrafficManagerFeature:Z

.field private static sKlassMultiScreenListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field mActionBar:Landroid/app/ActionBar;

.field private mActionModeTypeStarting:I

.field mActivityInfo:Landroid/content/pm/ActivityInfo;

.field mActivityTransitionState:Landroid/app/ActivityTransitionState;

.field private final mAppLockCheckRunnable:Ljava/lang/Runnable;

.field private mAppLockIsInMultiWindowMode:Z

.field private mApplication:Landroid/app/Application;

.field mCalled:Z

.field private mChangeCanvasToTranslucent:Z

.field mChangingConfigurations:Z

.field private mComponent:Landroid/content/ComponentName;

.field mConfigChangeFlags:I

.field mCurrentConfig:Landroid/content/res/Configuration;

.field mDecor:Landroid/view/View;

.field private mDefaultKeyMode:I

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDestroyed:Z

.field private mDoReportFullyDrawn:Z

.field private mEatKeyUpEvent:Z

.field mEmbeddedID:Ljava/lang/String;

.field private mEnableDefaultActionBarUp:Z

.field mEnterTransitionListener:Landroid/app/SharedElementCallback;

.field mExitTransitionListener:Landroid/app/SharedElementCallback;

.field mFinished:Z

.field private mFlipfont:I

.field final mFragments:Landroid/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field private mHasCurrentPermissionsRequest:Z

.field private mIdent:I

.field private final mInstanceTracker:Ljava/lang/Object;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field mIntent:Landroid/content/Intent;

.field mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field mMainThread:Landroid/app/ActivityThread;

.field private final mManagedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity$ManagedCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Activity$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuInflater:Landroid/view/MenuInflater;

.field mParent:Landroid/app/Activity;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field mReferrer:Ljava/lang/String;

.field mResultCode:I

.field mResultData:Landroid/content/Intent;

.field mResumed:Z

.field private mScreenChangeListener:Ljava/lang/Object;

.field private mSearchEvent:Landroid/view/SearchEvent;

.field private mSearchManager:Landroid/app/SearchManager;

.field mStartedActivity:Z

.field mStopped:Z

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field mTemporaryPause:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleReady:Z

.field private mToken:Landroid/os/IBinder;

.field private mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

.field private mUiThread:Ljava/lang/Thread;

.field mVisibleBehind:Z

.field mVisibleFromClient:Z

.field mVisibleFromServer:Z

.field private mVoiceInteractor:Landroid/app/VoiceInteractor;

.field private mWindow:Landroid/view/Window;

.field mWindowAdded:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;
    .locals 1

    iget-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;->checkAppLockState()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/app/Activity;Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 733
    sput-object v2, Landroid/app/Activity;->mPerf:Landroid/util/BoostFramework;

    .line 734
    sput v0, Landroid/app/Activity;->mDragBoostPossible:I

    .line 735
    sput v0, Landroid/app/Activity;->mPerfLockDuration:I

    .line 783
    sput-boolean v3, Landroid/app/Activity;->mIsFirstACtivityStart:Z

    .line 784
    const-string/jumbo v0, "trafficmanager"

    invoke-static {v0}, Landroid/app/Activity;->isSupportSmartManagerCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/app/Activity;->mSupportSmartManagerTrafficManagerFeature:Z

    .line 884
    new-array v0, v3, [I

    const v1, 0x101009c

    aput v1, v0, v4

    sput-object v0, Landroid/app/Activity;->FOCUSED_STATE_SET:[I

    .line 7546
    sput-object v2, Landroid/app/Activity;->sKlassMultiScreenListener:Ljava/lang/Class;

    .line 7547
    sput-object v2, Landroid/app/Activity;->METHOD_ON_SCREEN_CHANGED:Ljava/lang/reflect/Method;

    .line 7553
    sget-object v0, Landroid/app/Activity;->sKlassMultiScreenListener:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 7556
    const-string/jumbo v0, "com.samsung.android.multiscreen.MultiScreenListener"

    .line 7555
    invoke-static {v0}, Lcom/samsung/android/bridge/ReflectionHelper;->loadKlass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/app/Activity;->sKlassMultiScreenListener:Ljava/lang/Class;

    .line 7558
    :cond_0
    sget-object v0, Landroid/app/Activity;->METHOD_ON_SCREEN_CHANGED:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 7559
    sget-object v0, Landroid/app/Activity;->sKlassMultiScreenListener:Ljava/lang/Class;

    .line 7560
    const-string/jumbo v1, "onScreenChanged"

    new-array v2, v3, [Ljava/lang/Class;

    .line 7561
    const-class v3, Landroid/view/Display;

    aput-object v3, v2, v4

    .line 7559
    invoke-static {v0, v1, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/app/Activity;->METHOD_ON_SCREEN_CHANGED:Ljava/lang/reflect/Method;

    .line 727
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 727
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;-><init>()V

    .line 780
    iput v1, p0, Landroid/app/Activity;->mFlipfont:I

    .line 811
    iput-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 813
    iput-boolean v1, p0, Landroid/app/Activity;->mTemporaryPause:Z

    .line 815
    iput-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 833
    iput-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 834
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 835
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 836
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 837
    iput-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 843
    iput v1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 846
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    .line 847
    new-instance v0, Landroid/app/Activity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/app/Activity$HostCallbacks;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Landroid/app/FragmentController;->createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    .line 864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 863
    iput-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    .line 867
    iput v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 868
    iput-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 875
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 876
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 878
    iput v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 879
    iput-object v2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 882
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 881
    iput-object v0, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 887
    invoke-static {p0}, Landroid/os/StrictMode;->trackActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mInstanceTracker:Ljava/lang/Object;

    .line 891
    new-instance v0, Landroid/app/ActivityTransitionState;

    invoke-direct {v0}, Landroid/app/ActivityTransitionState;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 892
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 893
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 7008
    iput-boolean v1, p0, Landroid/app/Activity;->mAppLockIsInMultiWindowMode:Z

    .line 7010
    new-instance v0, Landroid/app/Activity$1;

    invoke-direct {v0, p0}, Landroid/app/Activity$1;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/app/Activity;->mAppLockCheckRunnable:Ljava/lang/Runnable;

    .line 7545
    iput-object v2, p0, Landroid/app/Activity;->mScreenChangeListener:Ljava/lang/Object;

    .line 727
    return-void
.end method

.method private cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 4437
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 4438
    .local v0, "decor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 4439
    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 4441
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/app/Activity;->isTopOfTask()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4436
    :cond_2
    :goto_0
    return-void

    .line 4442
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v1, p0, p1}, Landroid/app/ActivityTransitionState;->startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private final checkAppLockState()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 7018
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 7019
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7020
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v2

    .line 7021
    .local v2, "isLocked":Z
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v3

    .line 7022
    .local v3, "isVerifying":Z
    const-string/jumbo v6, "Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "AppLock checkAppLockState locked:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " verifying:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " pkgName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isInMultiWindowMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/app/Activity;->mAppLockIsInMultiWindowMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7023
    if-eqz v2, :cond_0

    if-eqz v3, :cond_1

    .line 7017
    :cond_0
    :goto_0
    return-void

    .line 7024
    :cond_1
    invoke-virtual {v0, v4, v9}, Landroid/app/ActivityManager;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 7025
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.intent.action.CHECK_APPLOCK_SERVICE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7026
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.samsung.android.applock"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7027
    const-string/jumbo v6, "LAUNCH_FROM_RESUME"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7028
    const-string/jumbo v6, "LOCKED_PACKAGE_NAME"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7029
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 7030
    .local v5, "targetIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7031
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7032
    const-string/jumbo v6, "LOCKED_PACKAGE_INTENT"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7033
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private checkFireWallPermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1360
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1361
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/app/Activity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    sget-boolean v2, Landroid/app/Activity;->mIsFirstACtivityStart:Z

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/NetworkPolicyManager;->checkFireWallPermission(ZLjava/lang/String;)V

    .line 1362
    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/Activity;->mIsFirstACtivityStart:Z

    .line 1359
    return-void
.end method

.method private createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # Ljava/lang/Integer;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1193
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 1194
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 1195
    return-object v2

    .line 1197
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 1198
    return-object v0
.end method

.method private dispatchRequestPermissionsResult(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 7428
    iput-boolean v3, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 7430
    if-eqz p2, :cond_0

    .line 7431
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    .line 7430
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7432
    .local v1, "permissions":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    .line 7433
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    .line 7432
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 7434
    .local v0, "grantResults":[I
    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7427
    return-void

    .line 7431
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_0

    .line 7433
    :cond_1
    new-array v0, v3, [I

    goto :goto_1
.end method

.method private dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 7440
    if-eqz p2, :cond_0

    .line 7441
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    .line 7440
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7442
    .local v1, "permissions":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    .line 7443
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    .line 7442
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 7444
    .local v0, "grantResults":[I
    :goto_1
    invoke-virtual {p3, p1, v1, v0}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7438
    return-void

    .line 7441
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_0

    .line 7443
    :cond_1
    new-array v0, v3, [I

    goto :goto_1
.end method

.method private ensureSearchManager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5751
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_0

    .line 5752
    return-void

    .line 5755
    :cond_0
    new-instance v0, Landroid/app/SearchManager;

    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    .line 5750
    return-void
.end method

.method private finish(I)V
    .locals 5
    .param p1, "finishTask"    # I

    .prologue
    .line 5353
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_2

    .line 5356
    monitor-enter p0

    .line 5357
    :try_start_0
    iget v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 5358
    .local v1, "resultCode":I
    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "resultData":Landroid/content/Intent;
    monitor-exit p0

    .line 5362
    if-eqz v2, :cond_0

    .line 5363
    :try_start_1
    invoke-virtual {v2, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 5365
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 5366
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5365
    invoke-interface {v3, v4, v1, v2, p1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5367
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5352
    .end local v1    # "resultCode":I
    .end local v2    # "resultData":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 5356
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 5373
    :cond_2
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v3, p0}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    goto :goto_0

    .line 5369
    .restart local v1    # "resultCode":I
    .restart local v2    # "resultData":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getActiveFragments()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 7629
    iget-object v6, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v6}, Landroid/app/FragmentController;->getActiveFragmentsOnTopActivity()Ljava/util/ArrayList;

    move-result-object v5

    .line 7630
    .local v5, "tempFragmentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7631
    .local v4, "fragmentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7632
    .local v0, "emptyBounds":Landroid/graphics/Rect;
    if-eqz v5, :cond_1

    .line 7633
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 7634
    .local v3, "fragmentIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/Fragment;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7635
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 7636
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    iget-object v6, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 7637
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 7638
    .local v2, "fragmentBounds":Landroid/graphics/Rect;
    iget-object v6, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 7639
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 7640
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7644
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v2    # "fragmentBounds":Landroid/graphics/Rect;
    .end local v3    # "fragmentIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/Fragment;>;"
    :cond_1
    return-object v4
.end method

.method private static native getDlWarning()Ljava/lang/String;
.end method

.method private initWindowDecorActionBar()V
    .locals 3

    .prologue
    .line 2517
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2521
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2523
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 2524
    :cond_0
    return-void

    .line 2527
    :cond_1
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 2528
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v2, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 2530
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 2531
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 2516
    return-void
.end method

.method private static isSupportSmartManagerCHNEnhancedFeature(Ljava/lang/String;)Z
    .locals 3
    .param p0, "featureName"    # Ljava/lang/String;

    .prologue
    .line 2217
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2218
    .local v0, "features":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTopOfTask()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6168
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_1

    .line 6169
    :cond_0
    return v3

    .line 6172
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isTopOfTask(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 6173
    :catch_0
    move-exception v0

    .line 6174
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method private missingDialog(I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 3955
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no dialog with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was ever "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3956
    const-string/jumbo v2, "shown via Activity#showDialog"

    .line 3955
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 7243
    if-eqz p1, :cond_0

    .line 7245
    const-string/jumbo v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x0

    .line 7244
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 7242
    :cond_0
    return-void
.end method

.method private restoreManagedDialogs(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 1166
    const-string/jumbo v7, "android:savedDialogs"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1167
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1168
    return-void

    .line 1171
    :cond_0
    const-string/jumbo v7, "android:savedDialogIds"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1172
    .local v4, "ids":[I
    array-length v6, v4

    .line 1173
    .local v6, "numDialogs":I
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1174
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 1175
    aget v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1176
    .local v1, "dialogId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1177
    .local v2, "dialogState":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 1180
    new-instance v5, Landroid/app/Activity$ManagedDialog;

    invoke-direct {v5, v10}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog;)V

    .line 1181
    .local v5, "md":Landroid/app/Activity$ManagedDialog;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 1182
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, v7}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 1183
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_1

    .line 1184
    iget-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1185
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    iget-object v9, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1186
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1174
    .end local v5    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1165
    .end local v1    # "dialogId":Ljava/lang/Integer;
    .end local v2    # "dialogState":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method private saveManagedDialogs(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1606
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v6, :cond_0

    .line 1607
    return-void

    .line 1610
    :cond_0
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1611
    .local v5, "numDialogs":I
    if-nez v5, :cond_1

    .line 1612
    return-void

    .line 1615
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1617
    .local v0, "dialogState":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    new-array v2, v6, [I

    .line 1620
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 1621
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1622
    .local v3, "key":I
    aput v3, v2, v1

    .line 1623
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedDialog;

    .line 1624
    .local v4, "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {v3}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1625
    iget-object v6, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 1626
    invoke-static {v3}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1620
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1630
    .end local v3    # "key":I
    .end local v4    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_3
    const-string/jumbo v6, "android:savedDialogIds"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1631
    const-string/jumbo v6, "android:savedDialogs"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1605
    return-void
.end method

.method private static savedDialogArgsKeyFor(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:dialog_args_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static savedDialogKeyFor(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4609
    const/4 v5, 0x0

    .line 4610
    .local v5, "resolvedType":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 4611
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 4612
    move-object/from16 v0, p4

    invoke-virtual {v0, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 4613
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 4615
    .end local v5    # "resolvedType":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 4616
    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 4617
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    .line 4615
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v13

    .line 4619
    .local v13, "result":I
    const/4 v1, -0x6

    if-ne v13, v1, :cond_2

    .line 4620
    new-instance v1, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4623
    .end local v13    # "result":I
    :catch_0
    move-exception v12

    .line 4625
    :goto_0
    if-ltz p3, :cond_1

    .line 4633
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4607
    :cond_1
    return-void

    .line 4622
    .restart local v13    # "result":I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v13, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 7237
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v0, :cond_0

    .line 7238
    const-string/jumbo v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7236
    :cond_0
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2601
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2602
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2600
    return-void
.end method

.method final attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aThread"    # Landroid/app/ActivityThread;
    .param p3, "instr"    # Landroid/app/Instrumentation;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "ident"    # I
    .param p6, "application"    # Landroid/app/Application;
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "info"    # Landroid/content/pm/ActivityInfo;
    .param p9, "title"    # Ljava/lang/CharSequence;
    .param p10, "parent"    # Landroid/app/Activity;
    .param p11, "id"    # Ljava/lang/String;
    .param p12, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "referrer"    # Ljava/lang/String;
    .param p15, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p16, "window"    # Landroid/view/Window;

    .prologue
    .line 6878
    invoke-virtual {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 6880
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentController;->attachHost(Landroid/app/Fragment;)V

    .line 6882
    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v0, p16

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    iput-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 6883
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V

    .line 6884
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 6885
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 6886
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 6887
    iget v1, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v1, :cond_0

    .line 6888
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v2, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 6890
    :cond_0
    iget v1, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v1, :cond_1

    .line 6891
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v2, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 6893
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    .line 6895
    iput-object p2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6896
    iput-object p3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 6897
    iput-object p4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6898
    iput p5, p0, Landroid/app/Activity;->mIdent:I

    .line 6899
    iput-object p6, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 6900
    iput-object p7, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 6901
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 6902
    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 6903
    iput-object p8, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 6904
    iput-object p9, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 6905
    move-object/from16 v0, p10

    iput-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 6906
    move-object/from16 v0, p11

    iput-object v0, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6907
    move-object/from16 v0, p12

    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 6908
    if-eqz p15, :cond_2

    .line 6909
    if-eqz p12, :cond_4

    .line 6910
    move-object/from16 v0, p12

    iget-object v1, v0, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 6917
    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 6918
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 6919
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 6920
    iget v2, p8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 6917
    :goto_1
    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 6921
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 6922
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 6924
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 6925
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 6877
    return-void

    .line 6912
    :cond_4
    new-instance v1, Landroid/app/VoiceInteractor;

    .line 6913
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 6912
    move-object/from16 v0, p15

    invoke-direct {v1, v0, p0, p0, v2}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_0

    .line 6920
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public canStartActivityForResult()Z
    .locals 1

    .prologue
    .line 5049
    const/4 v0, 0x1

    return v0
.end method

.method public closeContextMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 3727
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3728
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 3726
    :cond_0
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3666
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3667
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 3665
    :cond_0
    return-void
.end method

.method public convertFromTranslucent()V
    .locals 4

    .prologue
    .line 6196
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 6197
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6198
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6194
    :cond_0
    :goto_0
    return-void

    .line 6200
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z
    .locals 6
    .param p1, "callback"    # Landroid/app/Activity$TranslucentConversionListener;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v5, 0x0

    .line 6290
    :try_start_0
    iput-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 6292
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, p2}, Landroid/app/IActivityManager;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v2

    .line 6291
    iput-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 6293
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6294
    const/4 v0, 0x1

    .line 6300
    .local v0, "drawComplete":Z
    :goto_0
    iget-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v2, :cond_0

    .line 6302
    iget-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-interface {v2, v0}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 6304
    :cond_0
    iget-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    return v2

    .line 6295
    .end local v0    # "drawComplete":Z
    :catch_0
    move-exception v1

    .line 6297
    .local v1, "e":Landroid/os/RemoteException;
    iput-boolean v5, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 6298
    const/4 v0, 0x0

    .restart local v0    # "drawComplete":Z
    goto :goto_0
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 13
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 5588
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5590
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 5592
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5594
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5595
    :goto_0
    iget-object v4, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v6, v1, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p2, v6, v1

    .line 5596
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 5593
    const/4 v1, 0x3

    .line 5595
    const/4 v7, 0x0

    const/4 v9, 0x0

    move v5, p1

    move/from16 v8, p3

    .line 5592
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 5597
    .local v12, "target":Landroid/content/IIntentSender;
    if-eqz v12, :cond_1

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    :goto_1
    return-object v0

    .line 5594
    .end local v12    # "target":Landroid/content/IIntentSender;
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    iget-object v3, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5597
    .restart local v12    # "target":Landroid/content/IIntentSender;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 5598
    .end local v12    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v11

    .line 5601
    .local v11, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public demoteRenderer()V
    .locals 1

    .prologue
    .line 2589
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->demoteRenderer()V

    .line 2588
    return-void
.end method

.method public final dismissDialog(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3939
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 3940
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 3943
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 3944
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_1

    .line 3945
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 3947
    :cond_1
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3938
    return-void
.end method

.method public final dismissKeyboardShortcutsHelper()V
    .locals 4

    .prologue
    .line 1795
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1796
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1797
    const-string/jumbo v3, "com.android.systemui.statusbar.KeyboardShortcutsReceiver"

    .line 1796
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1798
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1794
    return-void
.end method

.method dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 6
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 7254
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 7255
    if-nez p1, :cond_1

    .line 7256
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 7250
    :cond_0
    :goto_0
    return-void

    .line 7257
    :cond_1
    const-string/jumbo v4, "@android:requestPermissions:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7258
    const-string/jumbo v4, "@android:requestPermissions:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 7259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7260
    invoke-direct {p0, p2, p4}, Landroid/app/Activity;->dispatchRequestPermissionsResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 7262
    :cond_2
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 7263
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 7264
    invoke-direct {p0, p2, p4, v0}, Landroid/app/Activity;->dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V

    goto :goto_0

    .line 7267
    .end local v0    # "frag":Landroid/app/Fragment;
    :cond_3
    const-string/jumbo v4, "@android:view:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7268
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    .line 7269
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    .line 7268
    invoke-virtual {v4, v5}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v3

    .line 7270
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "viewRoot$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 7271
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 7272
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    .line 7271
    if-eqz v4, :cond_4

    .line 7274
    return-void

    .line 7278
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v2    # "viewRoot$iterator":Ljava/util/Iterator;
    .end local v3    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    :cond_5
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 7279
    .restart local v0    # "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 7280
    invoke-virtual {v0, p2, p3, p4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public dispatchEnterAnimationComplete()V
    .locals 1

    .prologue
    .line 6458
    invoke-virtual {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 6459
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6460
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnEnterAnimationComplete()V

    .line 6457
    :cond_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3271
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3272
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3273
    const/4 v0, 0x1

    return v0

    .line 3275
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 3135
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3139
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 3140
    .local v3, "keyCode":I
    const/16 v6, 0x52

    if-ne v3, v6, :cond_0

    .line 3141
    iget-object v6, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, p1}, Landroid/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    .line 3140
    if-eqz v6, :cond_0

    .line 3142
    return v8

    .line 3143
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3144
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    and-int/lit16 v6, v6, -0x7001

    invoke-virtual {p1, v6}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v6

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_2

    .line 3146
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3147
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 3148
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 3149
    .local v1, "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Landroid/app/ActionBar;->requestFocus()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3150
    iput-boolean v8, p0, Landroid/app/Activity;->mEatKeyUpEvent:Z

    .line 3151
    return v8

    .line 3153
    .end local v1    # "actionBar":Landroid/app/ActionBar;
    :cond_1
    if-ne v0, v8, :cond_2

    iget-boolean v6, p0, Landroid/app/Activity;->mEatKeyUpEvent:Z

    if-eqz v6, :cond_2

    .line 3154
    iput-boolean v9, p0, Landroid/app/Activity;->mEatKeyUpEvent:Z

    .line 3155
    return v8

    .line 3159
    .end local v0    # "action":I
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 3160
    .local v4, "win":Landroid/view/Window;
    invoke-virtual {v4, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3161
    return v8

    .line 3163
    :cond_3
    iget-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3164
    .local v2, "decor":Landroid/view/View;
    if-nez v2, :cond_4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 3165
    :cond_4
    if-eqz v2, :cond_5

    .line 3166
    invoke-virtual {v2}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    .line 3165
    :cond_5
    invoke-virtual {p1, p0, v5, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3179
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3180
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3181
    const/4 v0, 0x1

    return v0

    .line 3183
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method final dispatchMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 7205
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    .line 7206
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 7207
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->onMultiWindowModeChanged()V

    .line 7209
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 7202
    return-void
.end method

.method final dispatchPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 7215
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    .line 7216
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPictureInPictureModeChanged(Z)V

    .line 7212
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 3279
    invoke-virtual {p0}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3280
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3282
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3283
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v5, :cond_0

    .line 3284
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v5, :cond_0

    move v0, v3

    .line 3285
    .local v0, "isFullScreen":Z
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 3287
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3288
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3289
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3292
    :cond_1
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 3197
    sget v6, Landroid/app/Activity;->mDragBoostPossible:I

    if-ne v6, v8, :cond_0

    .line 3198
    sput v5, Landroid/app/Activity;->mDragBoostPossible:I

    .line 3199
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3200
    .local v2, "currentActivity":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 3201
    const v7, 0x1070070

    .line 3200
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3202
    .local v0, "activityList":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3203
    array-length v6, v0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v0, v5

    .line 3204
    .local v3, "match":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_6

    .line 3205
    sput v9, Landroid/app/Activity;->mDragBoostPossible:I

    .line 3212
    .end local v0    # "activityList":[Ljava/lang/String;
    .end local v2    # "currentActivity":Ljava/lang/String;
    .end local v3    # "match":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3213
    .local v1, "context":Landroid/content/Context;
    sget-object v5, Landroid/app/Activity;->mPerf:Landroid/util/BoostFramework;

    if-nez v5, :cond_1

    .line 3214
    new-instance v5, Landroid/util/BoostFramework;

    invoke-direct {v5}, Landroid/util/BoostFramework;-><init>()V

    sput-object v5, Landroid/app/Activity;->mPerf:Landroid/util/BoostFramework;

    .line 3216
    :cond_1
    sget-object v5, Landroid/app/Activity;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v5, v1, p1, v6}, Landroid/util/BoostFramework;->boostOverride(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Z

    move-result v4

    .line 3218
    .local v4, "override":Z
    sget v5, Landroid/app/Activity;->mDragBoostPossible:I

    if-ne v5, v9, :cond_4

    if-nez v4, :cond_4

    .line 3219
    sget-object v5, Landroid/app/Activity;->mPerf:Landroid/util/BoostFramework;

    if-nez v5, :cond_2

    .line 3220
    new-instance v5, Landroid/util/BoostFramework;

    invoke-direct {v5}, Landroid/util/BoostFramework;-><init>()V

    sput-object v5, Landroid/app/Activity;->mPerf:Landroid/util/BoostFramework;

    .line 3222
    :cond_2
    sget v5, Landroid/app/Activity;->mPerfLockDuration:I

    if-ne v5, v8, :cond_3

    .line 3223
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3224
    const v6, 0x10e00ab

    .line 3223
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Landroid/app/Activity;->mPerfLockDuration:I

    .line 3225
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3226
    const v6, 0x1070071

    .line 3225
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Landroid/app/Activity;->mAsParamVal:[I

    .line 3228
    :cond_3
    sget-object v5, Landroid/app/Activity;->mPerf:Landroid/util/BoostFramework;

    .line 3229
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 3230
    sget v7, Landroid/app/Activity;->mPerfLockDuration:I

    sget-object v8, Landroid/app/Activity;->mAsParamVal:[I

    .line 3228
    invoke-virtual {v5, p1, v6, v7, v8}, Landroid/util/BoostFramework;->perfLockAcquireTouch(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;I[I)I

    .line 3233
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 3234
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3236
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3237
    return v9

    .line 3203
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "override":Z
    .restart local v0    # "activityList":[Ljava/lang/String;
    .restart local v2    # "currentActivity":Ljava/lang/String;
    .restart local v3    # "match":Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3239
    .end local v0    # "activityList":[Ljava/lang/String;
    .end local v2    # "currentActivity":Ljava/lang/String;
    .end local v3    # "match":Ljava/lang/String;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v4    # "override":Z
    :cond_7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3253
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3254
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3255
    const/4 v0, 0x1

    return v0

    .line 3257
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 6094
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6093
    return-void
.end method

.method dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 6098
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Local Activity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6099
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6100
    const-string/jumbo v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6102
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6103
    iget-boolean v1, p0, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6104
    iget-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mFinished="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6105
    iget-boolean v1, p0, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6106
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mChangingConfigurations="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6107
    iget-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6108
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCurrentConfig="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6109
    iget-object v1, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6113
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    if-eqz v1, :cond_0

    .line 6114
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6115
    const-string/jumbo v1, "threadConfig="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6116
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6121
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 6126
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6127
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6128
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_1

    .line 6129
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/VoiceInteractor;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6132
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6133
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6134
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6135
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6138
    :cond_2
    iget-object v1, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6097
    return-void
.end method

.method public enterPictureInPictureMode()V
    .locals 3

    .prologue
    .line 2036
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->enterPictureInPictureMode(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2034
    :goto_0
    return-void

    .line 2037
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public enterPictureInPictureModeIfPossible()V
    .locals 2

    .prologue
    .line 3120
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3121
    invoke-virtual {p0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    .line 3119
    :cond_0
    return-void
.end method

.method public exitFreeformMode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3102
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->exitFreeformMode(Landroid/os/IBinder;)V

    .line 3101
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2453
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 5383
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    .line 5382
    return-void
.end method

.method public finishActivity(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    .line 5452
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 5454
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5455
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 5454
    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5451
    :goto_0
    return-void

    .line 5460
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p0, p1}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    goto :goto_0

    .line 5456
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 4
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 5474
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5475
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 5474
    invoke-interface {v1, v2, v3, p2}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5472
    :goto_0
    return-void

    .line 5476
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishAffinity()V
    .locals 3

    .prologue
    .line 5401
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 5402
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can not be called from an embedded activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5404
    :cond_0
    iget v1, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 5405
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can not be called to deliver a result"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5408
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5409
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5400
    :cond_3
    :goto_0
    return-void

    .line 5411
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishAfterTransition()V
    .locals 1

    .prologue
    .line 5437
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5438
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5436
    :cond_0
    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 1

    .prologue
    .line 5486
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    .line 5485
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 0
    .param p1, "child"    # Landroid/app/Activity;

    .prologue
    .line 5426
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5425
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 2463
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2464
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method getActivityOptions()Landroid/app/ActivityOptions;
    .locals 3

    .prologue
    .line 6336
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 6337
    :catch_0
    move-exception v0

    .line 6339
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getActivityToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 6930
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public final getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 5260
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 5261
    :catch_0
    move-exception v0

    .line 5262
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5237
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 5238
    :catch_0
    move-exception v0

    .line 5239
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 2104
    iget v0, p0, Landroid/app/Activity;->mConfigChangeFlags:I

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 5731
    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .prologue
    .line 2615
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 976
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFragmentBoundsOnTopActivity()[Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 7653
    invoke-direct {p0}, Landroid/app/Activity;->getActiveFragments()Ljava/util/ArrayList;

    move-result-object v0

    .line 7654
    .local v0, "fragmentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7655
    .local v3, "size":I
    if-lez v3, :cond_1

    .line 7656
    new-array v2, v3, [Landroid/graphics/Rect;

    .line 7657
    .local v2, "rect":[Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 7658
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v2, v1

    .line 7659
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    iget-object v4, v4, Landroid/app/Fragment;->mView:Landroid/view/View;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 7657
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7661
    :cond_0
    return-object v2

    .line 7663
    .end local v1    # "i":I
    .end local v2    # "rect":[Landroid/graphics/Rect;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 2280
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getLastNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2208
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v1, :cond_0

    .line 2209
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 2208
    :cond_0
    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2129
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v1, :cond_0

    .line 2130
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 2129
    :cond_0
    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 4162
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5714
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5715
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 5716
    .local v0, "cls":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 5717
    .local v1, "packageLen":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_1

    .line 5719
    :cond_0
    return-object v0

    .line 5718
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 5721
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 6031
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 4171
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 4172
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 4173
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 4174
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 4179
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0

    .line 4176
    :cond_1
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_0
.end method

.method public final getParent()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 6770
    iget-object v6, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 6771
    .local v4, "parentName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6772
    return-object v9

    .line 6776
    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6778
    .local v5, "target":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 6779
    .local v2, "parentInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 6780
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 6781
    invoke-static {v5}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 6783
    .local v3, "parentIntent":Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 6782
    .end local v3    # "parentIntent":Landroid/content/Intent;
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 6784
    .end local v1    # "parentActivity":Ljava/lang/String;
    .end local v2    # "parentInfo":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    .line 6785
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6786
    const-string/jumbo v8, "\' in manifest"

    .line 6785
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6787
    return-object v9
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 5747
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5184
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 5186
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    const-string/jumbo v4, "android.intent.extra.REFERRER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 5187
    .local v2, "referrer":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 5188
    return-object v2

    .line 5190
    :cond_0
    const-string/jumbo v4, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5191
    .local v3, "referrerName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 5192
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 5194
    .end local v2    # "referrer":Landroid/net/Uri;
    .end local v3    # "referrerName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 5195
    .local v0, "e":Landroid/os/BadParcelableException;
    const-string/jumbo v4, "Activity"

    const-string/jumbo v5, "Cannot read referrer from intent; intent extras contain unknown custom Parcelable objects"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5198
    .end local v0    # "e":Landroid/os/BadParcelableException;
    :cond_1
    iget-object v4, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 5199
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v5, "android-app"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 5201
    :cond_2
    return-object v6
.end method

.method public getRequestedOrientation()I
    .locals 3

    .prologue
    .line 5643
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 5645
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5646
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5645
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getRequestedOrientation(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5651
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    return v1

    .line 5647
    :catch_0
    move-exception v0

    .line 5653
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public final getSearchEvent()Landroid/view/SearchEvent;
    .locals 1

    .prologue
    .line 4043
    iget-object v0, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public getSubWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 7617
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5760
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5761
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5762
    const-string/jumbo v1, "System services not available to Activities before onCreate()"

    .line 5761
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5765
    :cond_0
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5766
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 5767
    :cond_1
    const-string/jumbo v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5768
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 5769
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    return-object v0

    .line 5771
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTaskId()I
    .locals 4

    .prologue
    .line 5664
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5665
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    .line 5664
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5666
    :catch_0
    move-exception v0

    .line 5667
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 5816
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleColor()I
    .locals 1

    .prologue
    .line 5820
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    return v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    return-object v0
.end method

.method public final getVolumeControlStream()I
    .locals 1

    .prologue
    .line 5998
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWindowStackId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3110
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getActivityStackId(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 3

    .prologue
    .line 3073
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3074
    .local v1, "w":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 3075
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3076
    .local v0, "d":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3077
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    return v2

    .line 3080
    .end local v0    # "d":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3442
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3443
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3441
    :cond_0
    :goto_0
    return-void

    .line 3444
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    goto :goto_0
.end method

.method public isBackgroundVisibleBehind()Z
    .locals 3

    .prologue
    .line 6423
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 6424
    :catch_0
    move-exception v0

    .line 6426
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .prologue
    .line 5328
    iget-boolean v0, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    return v0
.end method

.method public final isChild()Z
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 5315
    iget-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 5307
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    return v0
.end method

.method public isImmersive()Z
    .locals 3

    .prologue
    .line 6154
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isImmersive(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 6155
    :catch_0
    move-exception v0

    .line 6156
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isInMultiWindowMode()Z
    .locals 3

    .prologue
    .line 1999
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isInMultiWindowMode(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2000
    :catch_0
    move-exception v0

    .line 2002
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isInPictureInPictureMode()Z
    .locals 3

    .prologue
    .line 2024
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isInPictureInPictureMode(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2025
    :catch_0
    move-exception v0

    .line 2027
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isLocalVoiceInteractionSupported()Z
    .locals 2

    .prologue
    .line 1422
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->supportsLocalVoiceInteraction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1423
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isOverlayWithDecorCaptionEnabled()Z
    .locals 1

    .prologue
    .line 7359
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    return v0
.end method

.method public final isResumed()Z
    .locals 1

    .prologue
    .line 7223
    iget-boolean v0, p0, Landroid/app/Activity;->mResumed:Z

    return v0
.end method

.method public isTaskRoot()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5679
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ltz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 5680
    :catch_0
    move-exception v0

    .line 5681
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoiceInteractionRoot()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1398
    :try_start_0
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v2, :cond_0

    .line 1399
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->isRootVoiceInteraction(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1398
    :cond_0
    return v1

    .line 1400
    :catch_0
    move-exception v0

    .line 1402
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method makeVisible()V
    .locals 3

    .prologue
    .line 5287
    iget-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v1, :cond_0

    .line 5288
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 5289
    .local v0, "wm":Landroid/view/ViewManager;
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5290
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 5292
    .end local v0    # "wm":Landroid/view/ViewManager;
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5286
    return-void
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2324
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2325
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2326
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 2328
    :cond_0
    return-object v6
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2364
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2365
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2366
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 2368
    :cond_0
    return-object v6
.end method

.method public moveTaskToBack(Z)Z
    .locals 3
    .param p1, "nonRoot"    # Z

    .prologue
    .line 5698
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5699
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5698
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5700
    :catch_0
    move-exception v0

    .line 5703
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "upIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 6710
    iget-object v5, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v5, :cond_3

    .line 6711
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 6712
    .local v0, "destInfo":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 6713
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 6714
    if-nez v0, :cond_0

    .line 6715
    return v7

    .line 6717
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6718
    .end local p1    # "upIntent":Landroid/content/Intent;
    .local v4, "upIntent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p1, v4

    .line 6722
    .end local v4    # "upIntent":Landroid/content/Intent;
    .restart local p1    # "upIntent":Landroid/content/Intent;
    :cond_1
    monitor-enter p0

    .line 6723
    :try_start_0
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    .line 6724
    .local v2, "resultCode":I
    iget-object v3, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "resultData":Landroid/content/Intent;
    monitor-exit p0

    .line 6726
    if-eqz v3, :cond_2

    .line 6727
    invoke-virtual {v3, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6730
    :cond_2
    :try_start_1
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 6731
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v5, v6, p1, v2, v3}, Landroid/app/IActivityManager;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    return v5

    .line 6722
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 6733
    .restart local v2    # "resultCode":I
    .restart local v3    # "resultData":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 6734
    .local v1, "e":Landroid/os/RemoteException;
    return v7

    .line 6737
    .end local v0    # "destInfo":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v5, p0, p1}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v5

    return v5
.end method

.method public navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "upIntent"    # Landroid/content/Intent;

    .prologue
    .line 6754
    invoke-virtual {p0, p2}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 6651
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 6640
    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 5556
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 5535
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 7
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 4191
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v4, :cond_2

    .line 4192
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 4204
    :goto_0
    sget-object v4, Lcom/android/internal/R$styleable;->ActivityTaskDescription:[I

    .line 4203
    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4205
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v4, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v4

    if-nez v4, :cond_0

    .line 4207
    const/4 v4, 0x1

    .line 4206
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 4208
    .local v2, "colorPrimary":I
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 4209
    iget-object v4, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4, v2}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 4213
    .end local v2    # "colorPrimary":I
    :cond_0
    iget-object v4, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    if-nez v4, :cond_1

    .line 4214
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 4216
    .local v1, "colorBackground":I
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 4217
    iget-object v4, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 4220
    .end local v1    # "colorBackground":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4221
    iget-object v4, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 4190
    return-void

    .line 4195
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    :try_start_0
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4199
    :goto_1
    invoke-virtual {p1, p2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 4196
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 2288
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 3051
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2886
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2887
    return-void

    .line 2890
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2891
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 2885
    :cond_1
    return-void
.end method

.method public onBackgroundVisibleBehindChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 6443
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 5838
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2059
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mCalled:Z

    .line 2062
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/app/Activity;->mFlipfont:I

    iget v2, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v1, v2, :cond_0

    .line 2063
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2064
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_3

    .line 2066
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    .line 2071
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v1, p0, Landroid/app/Activity;->mFlipfont:I

    .line 2075
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p1}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2077
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_1

    .line 2079
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2082
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_2

    .line 2085
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2057
    :cond_2
    return-void

    .line 2069
    .restart local v0    # "context":Landroid/content/Context;
    :cond_3
    const-string/jumbo v1, "android"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 3011
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3750
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3751
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3753
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3764
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3765
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 3763
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1011
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1012
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_6

    .line 1014
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    .line 1015
    sget-boolean v3, Landroid/app/Activity;->mSupportSmartManagerTrafficManagerFeature:Z

    if-eqz v3, :cond_0

    .line 1016
    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iput-object v3, p0, Landroid/app/Activity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 1017
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/Activity;->checkFireWallPermission(Ljava/lang/String;)V

    .line 1025
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v3, :cond_1

    .line 1026
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v4, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v4, v4, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    .line 1028
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1029
    iget-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-nez v3, :cond_7

    .line 1030
    iput-boolean v5, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    .line 1035
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 1036
    const-string/jumbo v3, "android:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 1037
    .local v1, "p":Landroid/os/Parcelable;
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v4, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v4, :cond_3

    .line 1038
    iget-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v2, v2, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    .line 1037
    :cond_3
    invoke-virtual {v3, v1, v2}, Landroid/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    .line 1040
    .end local v1    # "p":Landroid/os/Parcelable;
    :cond_4
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->dispatchCreate()V

    .line 1041
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/app/Application;->dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1042
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v2, :cond_5

    .line 1043
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v2, p0}, Landroid/app/VoiceInteractor;->attachActivity(Landroid/app/Activity;)V

    .line 1045
    :cond_5
    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    .line 1007
    return-void

    .line 1021
    :cond_6
    const-string/jumbo v3, "android"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1032
    :cond_7
    iget-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1070
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1069
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 3684
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1741
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3774
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3813
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .prologue
    .line 3619
    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;

    .line 3618
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3477
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3478
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 3480
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 3316
    if-nez p1, :cond_0

    .line 3317
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 3318
    .local v0, "show":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3319
    return v0

    .line 3321
    .end local v0    # "show":Z
    :cond_0
    return v1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 3304
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1719
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6076
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6077
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 6080
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6062
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1900
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    .line 1903
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v5, :cond_2

    .line 1904
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1905
    .local v4, "numDialogs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1906
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedDialog;

    .line 1907
    .local v2, "md":Landroid/app/Activity$ManagedDialog;
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1908
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1905
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1911
    .end local v2    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_1
    iput-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1915
    .end local v1    # "i":I
    .end local v4    # "numDialogs":I
    :cond_2
    iget-object v6, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1916
    :try_start_0
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1917
    .local v3, "numCursors":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1918
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedCursor;

    .line 1919
    .local v0, "c":Landroid/app/Activity$ManagedCursor;
    if-eqz v0, :cond_3

    .line 1920
    invoke-static {v0}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1917
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1923
    .end local v0    # "c":Landroid/app/Activity$ManagedCursor;
    :cond_4
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1927
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v5, :cond_5

    .line 1928
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v5}, Landroid/app/SearchManager;->stopSearch()V

    .line 1931
    :cond_5
    iget-object v5, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v5, :cond_6

    .line 1932
    iget-object v5, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->onDestroy()V

    .line 1935
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/Application;->dispatchActivityDestroyed(Landroid/app/Activity;)V

    .line 1898
    return-void

    .line 1915
    .end local v1    # "i":I
    .end local v3    # "numCursors":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 3061
    return-void
.end method

.method public onDisplayChanged(Landroid/view/Display;)V
    .locals 7
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7582
    const-string/jumbo v0, "Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisplayChanged() "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7584
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->setDisplay(Landroid/view/Display;)V

    .line 7585
    iget-object v4, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 7586
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 7587
    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 7588
    iget-object v1, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    move v1, v2

    .line 7585
    :goto_0
    invoke-virtual {v4, v0, v5, v6, v1}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 7589
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 7591
    iget-object v0, p0, Landroid/app/Activity;->mScreenChangeListener:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/Activity;->METHOD_ON_SCREEN_CHANGED:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 7592
    sget-object v0, Landroid/app/Activity;->METHOD_ON_SCREEN_CHANGED:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/app/Activity;->mScreenChangeListener:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 7593
    aput-object p1, v2, v3

    .line 7592
    invoke-static {v0, v1, v2}, Lcom/samsung/android/bridge/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7579
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 7588
    goto :goto_0
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    .prologue
    .line 6451
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2974
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2775
    const/4 v5, 0x4

    if-ne p1, v5, :cond_1

    .line 2776
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2777
    const/4 v6, 0x5

    .line 2776
    if-lt v5, v6, :cond_0

    .line 2778
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 2782
    :goto_0
    return v7

    .line 2780
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 2785
    :cond_1
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    if-nez v5, :cond_2

    .line 2786
    return v8

    .line 2787
    :cond_2
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    if-ne v5, v6, :cond_4

    .line 2788
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 2789
    .local v4, "w":Landroid/view/Window;
    invoke-virtual {v4, v8}, Landroid/view/Window;->hasFeature(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2790
    invoke-virtual {v4, v8, p1, p2, v6}, Landroid/view/Window;->performPanelShortcut(IILandroid/view/KeyEvent;I)Z

    move-result v5

    .line 2789
    if-eqz v5, :cond_3

    .line 2792
    return v7

    .line 2794
    :cond_3
    return v8

    .line 2797
    .end local v4    # "w":Landroid/view/Window;
    :cond_4
    const/4 v0, 0x0

    .line 2799
    .local v0, "clearSpannable":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2800
    :cond_5
    const/4 v0, 0x1

    .line 2801
    const/4 v1, 0x0

    .line 2826
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 2827
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2828
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2829
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v5, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2831
    :cond_7
    return v1

    .line 2803
    :cond_8
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    .line 2804
    iget-object v6, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2803
    invoke-virtual {v5, v9, v6, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2805
    .local v1, "handled":Z
    if-eqz v1, :cond_6

    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 2808
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2809
    .local v3, "str":Ljava/lang/String;
    const/4 v0, 0x1

    .line 2811
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 2813
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.DIAL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2814
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2815
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2818
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0, v3, v8, v9, v8}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_1

    .line 2821
    :pswitch_3
    invoke-virtual {p0, v3, v8, v9, v7}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_1

    .line 2811
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2841
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2877
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2907
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2908
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2860
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2861
    const/4 v1, 0x5

    .line 2860
    if-lt v0, v1, :cond_0

    .line 2862
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2863
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2868
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2864
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2865
    const/4 v0, 0x1

    return v0
.end method

.method public onLocalVoiceInteractionStarted()V
    .locals 0

    .prologue
    .line 1446
    return-void
.end method

.method public onLocalVoiceInteractionStopped()V
    .locals 0

    .prologue
    .line 1455
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 2265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2266
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchLowMemory()V

    .line 2263
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const v5, 0xc350

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3369
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3371
    .local v0, "titleCondensed":Ljava/lang/CharSequence;
    sparse-switch p1, :sswitch_data_0

    .line 3405
    return v3

    .line 3376
    :sswitch_0
    if-eqz v0, :cond_0

    .line 3377
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3379
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3380
    return v4

    .line 3382
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3383
    return v4

    .line 3385
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_4

    .line 3386
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 3387
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 3388
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v1

    return v1

    .line 3390
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result v1

    return v1

    .line 3393
    :cond_4
    return v3

    .line 3396
    :sswitch_1
    if-eqz v0, :cond_5

    .line 3397
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3399
    :cond_5
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3400
    return v4

    .line 3402
    :cond_6
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 3371
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 3348
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 3349
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3350
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 3351
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 3356
    :cond_0
    :goto_0
    return v2

    .line 3353
    :cond_1
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "Tried to open action bar menu with no action bar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMultiWindowFeaturesChanged()V
    .locals 1

    .prologue
    .line 6560
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 6561
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->onMultiWindowFeaturesChanged()V

    .line 6556
    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 1986
    return-void
.end method

.method public onNavigateUp()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3559
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3560
    .local v1, "upIntent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 3561
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3565
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3584
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 3566
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3567
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 3568
    .local v0, "b":Landroid/app/TaskStackBuilder;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 3569
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 3570
    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 3574
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 3576
    :cond_1
    const-string/jumbo v2, "Activity"

    const-string/jumbo v3, "onNavigateUp only finishing topmost activity to return a result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3579
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0

    .line 3582
    .end local v0    # "b":Landroid/app/TaskStackBuilder;
    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_0

    .line 3586
    :cond_4
    return v2
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;

    .prologue
    .line 3596
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onNewActivityOptions(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 6320
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 6321
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v0, :cond_0

    .line 6322
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 6319
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1491
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3527
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3528
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3530
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3645
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3646
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3644
    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3419
    sparse-switch p1, :sswitch_data_0

    .line 3418
    :goto_0
    return-void

    .line 3421
    :sswitch_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3422
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 3426
    :sswitch_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 3430
    :sswitch_2
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3431
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_0

    .line 3419
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1676
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPaused(Landroid/app/Activity;)V

    .line 1677
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1674
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 2011
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 1226
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1227
    iput-boolean v2, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 1228
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitleColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1231
    :cond_0
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 1225
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1247
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1246
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1350
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1351
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->makeActive()V

    .line 1352
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 1353
    :cond_1
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 1349
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3822
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 3821
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3851
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 3850
    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .prologue
    .line 3634
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3502
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3503
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 3505
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3334
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 3335
    invoke-virtual {p0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 3336
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p3}, Landroid/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3337
    return v0

    .line 3339
    .end local v0    # "goforit":Z
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 0
    .param p1, "outContent"    # Landroid/app/assist/AssistContent;

    .prologue
    .line 1777
    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1755
    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 10
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    const/4 v8, 0x0

    .line 1804
    if-nez p2, :cond_0

    .line 1805
    return-void

    .line 1807
    :cond_0
    const/4 v1, 0x0

    .line 1808
    .local v1, "group":Landroid/view/KeyboardShortcutGroup;
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v4

    .line 1809
    .local v4, "menuSize":I
    const/4 v2, 0x0

    .end local v1    # "group":Landroid/view/KeyboardShortcutGroup;
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 1810
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1811
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1812
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-interface {v3}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v0

    .line 1813
    .local v0, "alphaShortcut":C
    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    .line 1814
    if-nez v1, :cond_1

    .line 1815
    iget-object v7, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v5, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 1816
    .local v5, "resource":I
    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    if-eqz v5, :cond_3

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-direct {v1, v7}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;)V

    .line 1818
    .end local v5    # "resource":I
    :cond_1
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    .line 1819
    const/16 v9, 0x1000

    .line 1818
    invoke-direct {v7, v6, v0, v9}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;CI)V

    invoke-virtual {v1, v7}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 1809
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v5    # "resource":I
    :cond_3
    move-object v7, v8

    .line 1816
    goto :goto_1

    .line 1822
    .end local v0    # "alphaShortcut":C
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v5    # "resource":I
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_4
    if-eqz v1, :cond_5

    .line 1823
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1803
    :cond_5
    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 5211
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 4317
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 1295
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1294
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1124
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 1125
    const-string/jumbo v1, "android:viewHierarchyState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1126
    .local v0, "windowState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1127
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1123
    .end local v0    # "windowState":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1155
    if-eqz p1, :cond_0

    .line 1156
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1154
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1331
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityResumed(Landroid/app/Activity;)V

    .line 1332
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-direct {p0}, Landroid/app/Activity;->isTopOfTask()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->onResume(Landroid/app/Activity;Z)V

    .line 1333
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1329
    return-void
.end method

.method onRetainNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2230
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2186
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1573
    const-string/jumbo v1, "android:viewHierarchyState"

    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1574
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1575
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1576
    const-string/jumbo v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1578
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1572
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1597
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1596
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4026
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    .line 4027
    const/4 v1, 0x4

    .line 4026
    if-eq v0, v1, :cond_0

    .line 4028
    invoke-virtual {p0, v3, v2, v3, v2}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 4029
    const/4 v0, 0x1

    return v0

    .line 4031
    :cond_0
    return v2
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 2
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .prologue
    .line 4016
    iput-object p1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 4017
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 4018
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 4019
    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1266
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1268
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 1270
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStarted(Landroid/app/Activity;)V

    .line 1264
    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    .prologue
    .line 1305
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1862
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 1863
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->onStop()V

    .line 1864
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStopped(Landroid/app/Activity;)V

    .line 1865
    iput-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 1866
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1860
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 5824
    iget-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    if-eqz v1, :cond_1

    .line 5825
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5826
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 5827
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 5828
    if-eqz p2, :cond_0

    .line 5829
    invoke-virtual {v0, p2}, Landroid/view/Window;->setTitleColor(I)V

    .line 5832
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 5833
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 5823
    .end local v0    # "win":Landroid/view/Window;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2922
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2923
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2924
    const/4 v0, 0x1

    return v0

    .line 2927
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2945
    const/4 v0, 0x0

    return v0
.end method

.method onTranslucentConversionComplete(Z)V
    .locals 3
    .param p1, "drawComplete"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6309
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_0

    .line 6310
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-interface {v0, p1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 6311
    iput-object v1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 6313
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-eqz v0, :cond_1

    .line 6314
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 6308
    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 2271
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 2272
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchTrimMemory(I)V

    .line 2269
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 2996
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 1695
    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    .prologue
    .line 6405
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 6404
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 3003
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 3004
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3005
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3006
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2999
    .end local v0    # "decor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onWindowDismissed(Z)V
    .locals 1
    .param p1, "finishTask"    # Z

    .prologue
    .line 3089
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(I)V

    .line 3088
    return-void

    .line 3089
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 3041
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v1, 0x0

    .line 6609
    iget v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    if-nez v0, :cond_0

    .line 6610
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 6611
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 6612
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 6615
    :cond_0
    return-object v1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 6625
    :try_start_0
    iput p2, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 6626
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 6628
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 6626
    return-object v0

    .line 6627
    :catchall_0
    move-exception v0

    .line 6628
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 6627
    throw v0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3720
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 3719
    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3655
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3656
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->openOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3654
    :cond_0
    :goto_0
    return-void

    .line 3657
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public overridePendingTransition(II)V
    .locals 4
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .prologue
    .line 5112
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5113
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5112
    invoke-interface {v1, v2, v3, p1, p2}, Landroid/app/IActivityManager;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5110
    :goto_0
    return-void

    .line 5114
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method final performCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 6941
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 6942
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 6943
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 6944
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    .line 6940
    return-void
.end method

.method final performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 6948
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 6949
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 6950
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 6951
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    .line 6947
    return-void
.end method

.method final performCreateCommon()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6934
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v1

    .line 6935
    const/16 v2, 0xa

    .line 6934
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 6936
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchActivityCreated()V

    .line 6937
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 6933
    return-void

    .line 6934
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final performDestroy()V
    .locals 1

    .prologue
    .line 7192
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    .line 7193
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->destroy()V

    .line 7194
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchDestroy()V

    .line 7195
    invoke-virtual {p0}, Landroid/app/Activity;->onDestroy()V

    .line 7196
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderDestroy()V

    .line 7197
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_0

    .line 7198
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->detachActivity()V

    .line 7191
    :cond_0
    return-void
.end method

.method final performPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7130
    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 7131
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchPause()V

    .line 7132
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 7133
    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    .line 7134
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 7135
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7136
    const/16 v1, 0x9

    .line 7135
    if-lt v0, v1, :cond_0

    .line 7137
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 7138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7139
    const-string/jumbo v2, " did not call through to super.onPause()"

    .line 7138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7137
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7141
    :cond_0
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 7129
    return-void
.end method

.method final performRestart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 7039
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 7041
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 7043
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 7046
    :cond_0
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-eqz v3, :cond_6

    .line 7047
    iput-boolean v6, p0, Landroid/app/Activity;->mStopped:Z

    .line 7049
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 7050
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7051
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 7052
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 7053
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get1(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get2(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7054
    :cond_1
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7055
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7056
    const/16 v5, 0xe

    .line 7055
    if-lt v3, v5, :cond_2

    .line 7057
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 7058
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trying to requery an already closed cursor  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 7059
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 7058
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7057
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7049
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 7062
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set0(Landroid/app/Activity$ManagedCursor;Z)Z

    .line 7063
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set1(Landroid/app/Activity$ManagedCursor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7051
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_4
    monitor-exit v4

    .line 7068
    iput-boolean v6, p0, Landroid/app/Activity;->mCalled:Z

    .line 7069
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 7070
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_5

    .line 7071
    new-instance v3, Landroid/util/SuperNotCalledException;

    .line 7072
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7073
    const-string/jumbo v5, " did not call through to super.onRestart()"

    .line 7072
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7071
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7075
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->performStart()V

    .line 7038
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1082
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1083
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 1081
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1097
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1098
    if-eqz p1, :cond_0

    .line 1099
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 1096
    :cond_0
    return-void
.end method

.method final performResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7080
    invoke-virtual {p0}, Landroid/app/Activity;->performRestart()V

    .line 7082
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 7084
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 7086
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 7088
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 7089
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_0

    .line 7090
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 7091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7092
    const-string/jumbo v2, " did not call through to super.onResume()"

    .line 7091
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7090
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7096
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_2

    .line 7107
    :cond_1
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 7109
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchResume()V

    .line 7110
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 7112
    invoke-virtual {p0}, Landroid/app/Activity;->onPostResume()V

    .line 7113
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_3

    .line 7114
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 7115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7116
    const-string/jumbo v2, " did not call through to super.onPostResume()"

    .line 7115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7114
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7097
    :cond_2
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "An activity without a UI must call finish() before onResume() completes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7098
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7099
    const/16 v1, 0x16

    .line 7098
    if-le v0, v1, :cond_1

    .line 7100
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7102
    const-string/jumbo v2, " did not call finish() prior to onResume() completing"

    .line 7101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7100
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7119
    :cond_3
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7120
    iget-boolean v0, p0, Landroid/app/Activity;->mAppLockIsInMultiWindowMode:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Activity;->mAppLockCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7079
    :cond_4
    :goto_0
    return-void

    .line 7121
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7122
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Activity;->mAppLockCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1504
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 1505
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->saveState(Landroid/os/Bundle;)V

    .line 1506
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 1502
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1520
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1521
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 1522
    invoke-direct {p0, p1}, Landroid/app/Activity;->storeHasCurrentPermissionRequest(Landroid/os/Bundle;)V

    .line 1519
    return-void
.end method

.method final performStart()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 6955
    iget-object v7, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v8

    invoke-virtual {v7, p0, v8}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 6956
    iget-object v7, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v7}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 6957
    iput-boolean v6, p0, Landroid/app/Activity;->mCalled:Z

    .line 6958
    iget-object v7, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v7}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 6959
    iget-object v7, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v7, p0}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 6960
    iget-boolean v7, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v7, :cond_0

    .line 6961
    new-instance v5, Landroid/util/SuperNotCalledException;

    .line 6962
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6963
    const-string/jumbo v7, " did not call through to super.onStart()"

    .line 6962
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6961
    invoke-direct {v5, v6}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 6965
    :cond_0
    iget-object v7, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v7}, Landroid/app/FragmentController;->dispatchStart()V

    .line 6966
    iget-object v7, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v7}, Landroid/app/FragmentController;->reportLoaderStart()V

    .line 6969
    const-string/jumbo v7, "ro.bionic.ld.warning"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_4

    const/4 v3, 0x1

    .line 6971
    .local v3, "isDlwarningEnabled":Z
    :goto_0
    iget-object v7, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    move v2, v5

    .line 6973
    .local v2, "isAppDebuggable":Z
    :goto_1
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 6974
    :cond_1
    invoke-static {}, Landroid/app/Activity;->getDlWarning()Ljava/lang/String;

    move-result-object v1

    .line 6975
    .local v1, "dlwarning":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 6976
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6978
    .local v0, "appName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Detected problems with app native libraries\n(please consult log for detail):\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6980
    .local v4, "warning":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 6981
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 6984
    const v7, 0x104000a

    .line 6981
    invoke-virtual {v5, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 6993
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "dlwarning":Ljava/lang/String;
    .end local v4    # "warning":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v5, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v5, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 6996
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6997
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    iput-boolean v5, p0, Landroid/app/Activity;->mAppLockIsInMultiWindowMode:Z

    .line 6998
    iget-boolean v5, p0, Landroid/app/Activity;->mAppLockIsInMultiWindowMode:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Landroid/app/Activity;->mAppLockCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6954
    :cond_3
    :goto_3
    return-void

    .line 6969
    .end local v2    # "isAppDebuggable":Z
    .end local v3    # "isDlwarningEnabled":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isDlwarningEnabled":Z
    goto :goto_0

    :cond_5
    move v2, v6

    .line 6971
    goto :goto_1

    .line 6988
    .restart local v0    # "appName":Ljava/lang/String;
    .restart local v1    # "dlwarning":Ljava/lang/String;
    .restart local v2    # "isAppDebuggable":Z
    .restart local v4    # "warning":Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 6999
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "dlwarning":Ljava/lang/String;
    .end local v4    # "warning":Ljava/lang/String;
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 7000
    iget-object v5, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Landroid/app/Activity;->mAppLockCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method final performStop(Z)V
    .locals 7
    .param p1, "preserveWindow"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7150
    iput-boolean v5, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 7151
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-boolean v4, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 7153
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v3, :cond_5

    .line 7154
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_0

    .line 7155
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    .line 7161
    :cond_0
    if-nez p1, :cond_1

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 7162
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 7165
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->dispatchStop()V

    .line 7167
    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    .line 7168
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 7169
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_2

    .line 7170
    new-instance v3, Landroid/util/SuperNotCalledException;

    .line 7171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7172
    const-string/jumbo v5, " did not call through to super.onStop()"

    .line 7171
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7170
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7175
    :cond_2
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 7176
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7177
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 7178
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 7179
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get1(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7180
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V

    .line 7181
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set0(Landroid/app/Activity$ManagedCursor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7177
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_4
    monitor-exit v4

    .line 7186
    iput-boolean v6, p0, Landroid/app/Activity;->mStopped:Z

    .line 7188
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_5
    iput-boolean v5, p0, Landroid/app/Activity;->mResumed:Z

    .line 7149
    return-void

    .line 7175
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method final performUserLeaving()V
    .locals 0

    .prologue
    .line 7145
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 7146
    invoke-virtual {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 7144
    return-void
.end method

.method public postponeEnterTransition()V
    .locals 1

    .prologue
    .line 6838
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->postponeEnterTransition()V

    .line 6837
    return-void
.end method

.method public recreate()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 5338
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can only be called on top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5341
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 5342
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5344
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    move-object v7, v2

    move v8, v4

    move v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;ZZ)V

    .line 5337
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3698
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3697
    return-void
.end method

.method public releaseInstance()Z
    .locals 3

    .prologue
    .line 5502
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->releaseActivityInstance(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5503
    :catch_0
    move-exception v0

    .line 5506
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public final removeDialog(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3983
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 3984
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 3985
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_0

    .line 3986
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3987
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3982
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_0
    return-void
.end method

.method public reportFullyDrawn()V
    .locals 3

    .prologue
    .line 1952
    iget-boolean v1, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    if-eqz v1, :cond_0

    .line 1953
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 1955
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->reportActivityFullyDrawn(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1951
    :cond_0
    :goto_0
    return-void

    .line 1956
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 3
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x0

    .line 6858
    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v0

    .line 6859
    .local v0, "dragAndDropPermissions":Landroid/view/DragAndDropPermissions;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/DragAndDropPermissions;->take(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6860
    return-object v0

    .line 6862
    :cond_0
    return-object v2
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 4288
    iget-boolean v1, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    if-eqz v1, :cond_0

    .line 4289
    const-string/jumbo v1, "Activity"

    const-string/jumbo v2, "Can reqeust only one set of permissions at a time"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    new-array v1, v3, [Ljava/lang/String;

    new-array v2, v3, [I

    invoke-virtual {p0, p2, v1, v2}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 4292
    return-void

    .line 4294
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4295
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "@android:requestPermissions:"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4296
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mHasCurrentPermissionsRequest:Z

    .line 4287
    return-void
.end method

.method public final requestShowKeyboardShortcuts()V
    .locals 4

    .prologue
    .line 1785
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1786
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1787
    const-string/jumbo v3, "com.android.systemui.statusbar.KeyboardShortcutsReceiver"

    .line 1786
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1788
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1784
    return-void
.end method

.method public requestVisibleBehind(Z)Z
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6376
    iget-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    if-nez v2, :cond_0

    .line 6378
    const/4 p1, 0x0

    .line 6381
    .end local p1    # "visible":Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 6382
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6381
    invoke-interface {v2, v3, p1}, Landroid/app/IActivityManager;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleBehind:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6386
    :goto_1
    iget-boolean v1, p0, Landroid/app/Activity;->mVisibleBehind:Z

    return v1

    :cond_1
    move p1, v1

    .line 6381
    goto :goto_0

    .line 6383
    :catch_0
    move-exception v0

    .line 6384
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleBehind:Z

    goto :goto_1
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 4121
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2234
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 2235
    .local v0, "activity":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v1

    .line 2236
    .local v1, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->retainNestedNonConfig()Landroid/app/FragmentManagerNonConfig;

    move-result-object v2

    .line 2242
    .local v2, "fragments":Landroid/app/FragmentManagerNonConfig;
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 2243
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 2244
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    move-result-object v3

    .line 2246
    .local v3, "loaders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 2247
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-nez v5, :cond_0

    .line 2248
    return-object v7

    .line 2251
    :cond_0
    new-instance v4, Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {v4}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 2252
    .local v4, "nci":Landroid/app/Activity$NonConfigurationInstances;
    iput-object v0, v4, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 2253
    iput-object v1, v4, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 2254
    iput-object v2, v4, Landroid/app/Activity$NonConfigurationInstances;->fragments:Landroid/app/FragmentManagerNonConfig;

    .line 2255
    iput-object v3, v4, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    .line 2256
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v5, :cond_1

    .line 2257
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v5}, Landroid/app/VoiceInteractor;->retainInstance()V

    .line 2258
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v5, v4, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    .line 2260
    :cond_1
    return-object v4
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 6042
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 6043
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6041
    :goto_0
    return-void

    .line 6045
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public semConvertFromTranslucent(Z)V
    .locals 4
    .param p1, "skipSetWindowOpaque"    # Z

    .prologue
    .line 6223
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 6224
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->convertFromTranslucent(Landroid/os/IBinder;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6225
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6221
    :cond_0
    :goto_0
    return-void

    .line 6227
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public semConvertToTranslucent(Landroid/app/Activity$SemTranslucentConversionListener;)Z
    .locals 2
    .param p1, "callback"    # Landroid/app/Activity$SemTranslucentConversionListener;

    .prologue
    .line 6252
    new-instance v0, Landroid/app/Activity$3;

    invoke-direct {v0, p0, p1}, Landroid/app/Activity$3;-><init>(Landroid/app/Activity;Landroid/app/Activity$SemTranslucentConversionListener;)V

    .line 6258
    const/4 v1, 0x0

    .line 6252
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method public semExitMultiWindowMode()Z
    .locals 2

    .prologue
    .line 1972
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_0

    .line 1973
    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    .line 1974
    .local v0, "mwm":Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->exitMultiWindow(Landroid/os/IBinder;)Z

    move-result v1

    return v1

    .line 1976
    .end local v0    # "mwm":Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final semIsResumed()Z
    .locals 1

    .prologue
    .line 7233
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    return v0
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .locals 4
    .param p1, "toolbar"    # Landroid/widget/Toolbar;

    .prologue
    const/4 v3, 0x0

    .line 2483
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2484
    .local v0, "ab":Landroid/app/ActionBar;
    instance-of v2, v0, Lcom/android/internal/app/WindowDecorActionBar;

    if-eqz v2, :cond_0

    .line 2485
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2492
    :cond_0
    iput-object v3, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 2495
    if-eqz v0, :cond_1

    .line 2496
    invoke-virtual {v0}, Landroid/app/ActionBar;->onDestroy()V

    .line 2499
    :cond_1
    if-eqz p1, :cond_2

    .line 2500
    new-instance v1, Lcom/android/internal/app/ToolbarActionBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p0}, Lcom/android/internal/app/ToolbarActionBar;-><init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 2501
    .local v1, "tbab":Lcom/android/internal/app/ToolbarActionBar;
    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 2502
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Lcom/android/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 2509
    .end local v1    # "tbab":Lcom/android/internal/app/ToolbarActionBar;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2482
    return-void

    .line 2504
    :cond_2
    iput-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 2506
    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_0
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 2625
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTransitionManager(Landroid/transition/TransitionManager;)V

    .line 2624
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 2544
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 2545
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2543
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2564
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 2565
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2563
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2580
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2581
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2579
    return-void
.end method

.method public setCustomImage(Ljava/io/FileDescriptor;I)Z
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rotation"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 7604
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    :cond_0
    invoke-interface {v3, v4, v2, p2}, Landroid/app/IActivityManager;->setCustomImage(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 7608
    :catch_0
    move-exception v1

    .line 7609
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Activity"

    const-string/jumbo v3, "CustomStartingWindow failed to make ParcelFileDescriptor"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7610
    return v5

    .line 7605
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 7606
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Activity"

    const-string/jumbo v3, "CustomStartingWindow failed to set custom image"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7607
    return v5
.end method

.method public final setDefaultKeyMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2728
    iput p1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 2732
    packed-switch p1, :pswitch_data_0

    .line 2744
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2735
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2727
    :goto_0
    return-void

    .line 2740
    :pswitch_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2741
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 2732
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 6800
    if-nez p1, :cond_0

    .line 6801
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 6803
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 6799
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 6816
    if-nez p1, :cond_0

    .line 6817
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 6819
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 6815
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4145
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 4144
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 4153
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 4152
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 4129
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 4128
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 4137
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 4136
    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 1
    .param p1, "finish"    # Z

    .prologue
    .line 2645
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 2644
    return-void
.end method

.method public setImmersive(Z)V
    .locals 3
    .param p1, "i"    # Z

    .prologue
    .line 6480
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->setImmersive(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6478
    :goto_0
    return-void

    .line 6481
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 916
    iput-object p1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 915
    return-void
.end method

.method public final setMediaController(Landroid/media/session/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 6020
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setMediaController(Landroid/media/session/MediaController;)V

    .line 6019
    return-void
.end method

.method public setOverlayWithDecorCaptionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 7372
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setOverlayWithDecorCaptionEnabled(Z)V

    .line 7371
    return-void
.end method

.method final setParent(Landroid/app/Activity;)V
    .locals 0
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 6868
    iput-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 6867
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2442
    return-void
.end method

.method public final setProgress(I)V
    .locals 3
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5946
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit8 v1, p1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5945
    return-void
.end method

.method public final setProgressBarIndeterminate(Z)V
    .locals 3
    .param p1, "indeterminate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5928
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 5929
    if-eqz p1, :cond_0

    const/4 v0, -0x3

    .line 5928
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5927
    return-void

    .line 5930
    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public final setProgressBarIndeterminateVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5912
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 5913
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 5912
    :goto_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5911
    return-void

    .line 5913
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public final setProgressBarVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5897
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5896
    return-void

    .line 5898
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setRequestedOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 5615
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 5617
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5618
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5617
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->setRequestedOrientation(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5614
    :goto_0
    return-void

    .line 5628
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 5624
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final setResult(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 5131
    monitor-enter p0

    .line 5132
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 5133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 5130
    return-void

    .line 5131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 5160
    monitor-enter p0

    .line 5161
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 5162
    iput-object p2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 5159
    return-void

    .line 5160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setScreenChangeListener(Ljava/lang/Object;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 7571
    const-string/jumbo v0, "Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenChangeListener() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7572
    invoke-virtual {p0}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 7571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7574
    iput-object p1, p0, Landroid/app/Activity;->mScreenChangeListener:Ljava/lang/Object;

    .line 7569
    return-void
.end method

.method public final setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5965
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5966
    add-int/lit16 v1, p1, 0x4e20

    .line 5965
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5964
    return-void
.end method

.method public setSubContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .prologue
    .line 7619
    return-void
.end method

.method public setSubContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7621
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 7
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 5854
    iget-object v4, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eq v4, p1, :cond_0

    .line 5855
    iget-object v4, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 5857
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5858
    invoke-static {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v2

    .line 5859
    .local v2, "size":I
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 5860
    const/4 v5, 0x1

    .line 5859
    invoke-static {v4, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5861
    .local v1, "icon":Landroid/graphics/Bitmap;
    iget-object v4, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4, v1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/Bitmap;)V

    .line 5866
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v2    # "size":I
    :cond_0
    const-string/jumbo v4, "com.sec.android.app.camera"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5867
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5868
    .local v3, "token":Landroid/os/IBinder;
    new-instance v4, Landroid/app/Activity$2;

    invoke-direct {v4, p0, v3}, Landroid/app/Activity$2;-><init>(Landroid/app/Activity;Landroid/os/IBinder;)V

    invoke-virtual {v4}, Landroid/app/Activity$2;->start()V

    .line 5876
    return-void

    .line 5881
    .end local v3    # "token":Landroid/os/IBinder;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/app/Activity;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5853
    :goto_0
    return-void

    .line 5882
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 4184
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 4185
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTheme(I)V

    .line 4183
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 5796
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 5795
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 5781
    iput-object p1, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 5782
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 5784
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5785
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 5780
    :cond_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5811
    iput p1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 5812
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 5810
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 5277
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eq v0, p1, :cond_0

    .line 5278
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 5279
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_0

    .line 5280
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->makeVisible()V

    .line 5276
    :cond_0
    :goto_0
    return-void

    .line 5281
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 5
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    const/4 v4, 0x0

    .line 1366
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_0

    .line 1367
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1}, Landroid/app/VoiceInteractor;->getActiveRequests()[Landroid/app/VoiceInteractor$Request;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 1368
    .local v0, "activeRequest":Landroid/app/VoiceInteractor$Request;
    invoke-virtual {v0}, Landroid/app/VoiceInteractor$Request;->cancel()V

    .line 1369
    invoke-virtual {v0}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 1367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1372
    .end local v0    # "activeRequest":Landroid/app/VoiceInteractor$Request;
    :cond_0
    if-nez p1, :cond_1

    .line 1373
    iput-object v4, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 1365
    :goto_1
    return-void

    .line 1375
    :cond_1
    new-instance v1, Landroid/app/VoiceInteractor;

    .line 1376
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1375
    invoke-direct {v1, p1, p0, p0, v2}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_1
.end method

.method public final setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 5986
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 5985
    return-void
.end method

.method public setVrModeEnabled(ZLandroid/content/ComponentName;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "requestedComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 6544
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 6546
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 6547
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 6546
    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6549
    :catch_0
    move-exception v0

    .line 6542
    :cond_0
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 4342
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 6669
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 6670
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 6671
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 6672
    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 6674
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 6675
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 6676
    return v8

    .line 6678
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 6679
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 6678
    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 6682
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 6683
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v8

    .line 6680
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 6681
    .local v2, "e":Landroid/os/RemoteException;
    return v8
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1839
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1840
    :catch_0
    move-exception v0

    .line 1842
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public final showDialog(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3865
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 3864
    return-void
.end method

.method public final showDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3901
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 3902
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 3904
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 3905
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_2

    .line 3906
    new-instance v0, Landroid/app/Activity$ManagedDialog;

    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    invoke-direct {v0, v2}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog;)V

    .line 3907
    .restart local v0    # "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 3908
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 3909
    const/4 v1, 0x0

    return v1

    .line 3911
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3914
    :cond_2
    iput-object p2, v0, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 3915
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 3916
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 3917
    const/4 v1, 0x1

    return v1
.end method

.method public showLockTaskEscapeMessage()V
    .locals 3

    .prologue
    .line 7344
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7342
    :goto_0
    return-void

    .line 7345
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 6577
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 6591
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 4699
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4698
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4726
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 4727
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 4726
    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4725
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4650
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4649
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, -0x1

    .line 4677
    if-eqz p2, :cond_0

    .line 4678
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4676
    :goto_0
    return-void

    .line 4682
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v6, -0x1

    .line 4525
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4526
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4529
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4530
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    .line 4529
    invoke-virtual/range {v0 .. v9}, Landroid/app/Instrumentation;->execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v10

    .line 4532
    .local v10, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v10, :cond_1

    .line 4533
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4534
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v7

    .line 4535
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v8

    .line 4533
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4537
    :cond_1
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4524
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v6, -0x1

    .line 4493
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4494
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4497
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4498
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    .line 4497
    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v9

    .line 4500
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_1

    .line 4501
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4502
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v7

    .line 4503
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v8

    .line 4501
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4505
    :cond_1
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4492
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4486
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4485
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 4358
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4357
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4397
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 4399
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4400
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    .line 4399
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 4402
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_0

    .line 4403
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4404
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    .line 4405
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p2

    .line 4403
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4407
    :cond_0
    if-ltz p2, :cond_1

    .line 4415
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4418
    :cond_1
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4396
    .end local v8    # "ar":Landroid/app/Instrumentation$ActivityResult;
    :goto_0
    return-void

    .line 4421
    :cond_2
    if-eqz p3, :cond_3

    .line 4422
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 4426
    :cond_3
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 5028
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v9

    .line 5029
    .local v9, "referrer":Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 5030
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5033
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 5034
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 5033
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 5036
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_1

    .line 5037
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 5038
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5039
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move-object v2, p1

    move v3, p3

    .line 5037
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 5041
    :cond_1
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 5027
    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4458
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4459
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4461
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4462
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 4461
    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v9

    .line 4464
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_1

    .line 4465
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4466
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p2

    .line 4465
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4468
    :cond_1
    if-ltz p2, :cond_2

    .line 4476
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4479
    :cond_2
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4457
    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4450
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4449
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 4943
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4942
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4968
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4969
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 4968
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 4971
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_0

    .line 4972
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4973
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 4974
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p3

    .line 4972
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4976
    :cond_0
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4966
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 4994
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4993
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 5019
    iget-object v0, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 5018
    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 4801
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4836
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 4837
    const/4 v13, 0x1

    .line 4839
    .local v13, "result":I
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v12

    .line 4840
    .local v12, "referrer":Landroid/net/Uri;
    if-eqz v12, :cond_0

    .line 4841
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4843
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 4844
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 4845
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4846
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 4847
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 4848
    iget-object v6, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v8, 0x1

    .line 4849
    const/4 v9, 0x0

    move-object v3, p1

    move/from16 v7, p2

    move-object/from16 v10, p3

    .line 4845
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 4854
    .end local v12    # "referrer":Landroid/net/Uri;
    :goto_0
    invoke-static {v13, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 4856
    if-ltz p2, :cond_1

    .line 4864
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4866
    :cond_1
    const/4 v0, 0x1

    if-eq v13, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 4869
    .end local v13    # "result":I
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 4870
    const-string/jumbo v1, "startActivityIfNeeded can only be called from a top-level activity"

    .line 4869
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4850
    .restart local v13    # "result":I
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 7
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4747
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 4746
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4745
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 4773
    if-eqz p6, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 4774
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4772
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 4779
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 8
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4559
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 4558
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4557
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4590
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 4591
    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 4589
    :goto_0
    return-void

    .line 4593
    :cond_0
    if-eqz p7, :cond_1

    .line 4594
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 4599
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 9
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 5061
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 5060
    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 5059
    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 5074
    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 5073
    return-void
.end method

.method public startIntentSenderFromChildFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "child"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 5089
    iget-object v2, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;Ljava/lang/String;ILandroid/content/Intent;IILandroid/os/Bundle;)V

    .line 5088
    return-void
.end method

.method public startLocalVoiceInteraction(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "privateOptions"    # Landroid/os/Bundle;

    .prologue
    .line 1436
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    :goto_0
    return-void

    .line 1437
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startLockTask()V
    .locals 3

    .prologue
    .line 7308
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->startLockTaskMode(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7306
    :goto_0
    return-void

    .line 7309
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2400
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2401
    :try_start_0
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/Activity$ManagedCursor;

    invoke-direct {v2, p1}, Landroid/app/Activity$ManagedCursor;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2399
    return-void

    .line 2400
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4888
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4912
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 4914
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 4915
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 4916
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 4917
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 4916
    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4918
    :catch_0
    move-exception v0

    .line 4921
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1

    .line 4924
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 4925
    const-string/jumbo v2, "startNextMatchingActivity can only be called from a top-level activity"

    .line 4924
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    .prologue
    .line 6847
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->startPostponedEnterTransition()V

    .line 6846
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 4078
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 4079
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 4077
    return-void
.end method

.method public stopLocalVoiceInteraction()V
    .locals 3

    .prologue
    .line 1465
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    :goto_0
    return-void

    .line 1466
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopLockTask()V
    .locals 2

    .prologue
    .line 7332
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7330
    :goto_0
    return-void

    .line 7333
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2424
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2425
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2426
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2427
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 2428
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 2429
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_0
    monitor-exit v4

    .line 2423
    return-void

    .line 2426
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2424
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 4106
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 4105
    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 4094
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 4095
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 4093
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3709
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3708
    return-void
.end method
