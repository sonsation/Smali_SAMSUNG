.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/NotificationData$Environment;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnGutsButtonClickListener;
.implements Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$10;,
        Lcom/android/systemui/statusbar/BaseStatusBar$11;,
        Lcom/android/systemui/statusbar/BaseStatusBar$1;,
        Lcom/android/systemui/statusbar/BaseStatusBar$2;,
        Lcom/android/systemui/statusbar/BaseStatusBar$3;,
        Lcom/android/systemui/statusbar/BaseStatusBar$4;,
        Lcom/android/systemui/statusbar/BaseStatusBar$5;,
        Lcom/android/systemui/statusbar/BaseStatusBar$6;,
        Lcom/android/systemui/statusbar/BaseStatusBar$7;,
        Lcom/android/systemui/statusbar/BaseStatusBar$8;,
        Lcom/android/systemui/statusbar/BaseStatusBar$9;,
        Lcom/android/systemui/statusbar/BaseStatusBar$H;,
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    }
.end annotation


# static fields
.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

.field public static final ENABLE_REMOTE_INPUT:Z

.field public static final FORCE_REMOTE_INPUT_HISTORY:Z

.field protected static final KNOX_DEBUG:Z


# instance fields
.field protected hasVisibleNotification:Z

.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAllUsersReceiver:Landroid/content/BroadcastReceiver;

.field protected mAllowLockscreenRemoteInput:Z

.field protected mAodManager:Lcom/samsung/android/aod/AODManager;

.field private mApplicationIconArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationInfoArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mBlockedRemoteInputOnCover:Z

.field protected mBouncerShowing:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mClickedNotificationPreview:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field private mDensity:I

.field protected mDeskGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field protected mDeviceInteractive:Z

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field protected mDisableNotificationAlerts:Z

.field protected mDisplay:Landroid/view/Display;

.field protected mDreamManager:Landroid/service/dreams/IDreamManager;

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private mFlipfont:I

.field private mFontScale:F

.field protected mGearVrDocked:Z

.field private final mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

.field protected mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field protected mHasBlockableNotification:Z

.field private mHasVisibleNotificationOnKeyguard:Z

.field protected mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field protected mHeadsUpTicker:Z

.field public mIsDeskMode:Z

.field protected mIsLockShadeByExpandNoti:Z

.field protected mIsNeedToMoreCueAnim:Z

.field protected mIsNotificationIconsOnlyOn:Z

.field protected mIsWhiteCoverWallpaper:Z

.field protected mIsWhiteKeyguardWallpaper:Z

.field protected mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field protected mKeysKeptForRemoteInput:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

.field private final mKnoxStateMonitorCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

.field protected mLayoutDirection:I

.field private mLocale:Ljava/util/Locale;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenPublicMode:Z

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mMoreCue:Lcom/android/systemui/statusbar/NotificationMoreCue;

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field protected mNotiDoubleTapped:Z

.field protected mNotiDraggedDownOnLock:Z

.field protected mNotificationBlockManager:Lcom/android/systemui/NotificationBlockManager;

.field protected mNotificationBottomBarView:Lcom/android/systemui/statusbar/NotificationBottomBarView;

.field private mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field protected mNotificationGutType:I

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field protected final mNotificationIconsOnlySettingObserver:Landroid/database/ContentObserver;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field protected mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field protected mNotificationPreviewController:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mPowerManager:Landroid/os/PowerManager;

.field protected mRecents:Lcom/android/systemui/RecentsComponent;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field protected mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mShowLockscreenNotifications:Z

.field protected mShowNotificationGuts:Z

.field protected mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field protected mUseHeadsUp:Z

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field protected mVrMode:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field protected mZenMode:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/Notification;)V
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->processForRemoteInput(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p4, "done"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->saveImportanceCloseControls(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateLockscreenNotificationSetting()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    .line 166
    const-string/jumbo v0, "debug.enable_remote_input"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 165
    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_REMOTE_INPUT:Z

    .line 168
    const-string/jumbo v0, "debug.child_notifs"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 167
    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 170
    const-string/jumbo v0, "debug.force_remoteinput_history"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 169
    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    .line 171
    sput-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    .line 152
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    .line 213
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 220
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 221
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 227
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 231
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    .line 232
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    .line 239
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    .line 247
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFlipfont:I

    .line 250
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    .line 251
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    .line 252
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisableNotificationAlerts:Z

    .line 263
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 264
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 265
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    .line 288
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 315
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    .line 334
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotiDraggedDownOnLock:Z

    .line 335
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsLockShadeByExpandNoti:Z

    .line 349
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    .line 356
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHasVisibleNotificationOnKeyguard:Z

    .line 369
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutType:I

    .line 370
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationInfoArrayMap:Landroid/util/ArrayMap;

    .line 371
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationIconArrayMap:Landroid/util/ArrayMap;

    .line 383
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 395
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .line 419
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 441
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 454
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationIconsOnlySettingObserver:Landroid/database/ContentObserver;

    .line 477
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 689
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 779
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$8;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    .line 800
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$9;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 799
    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 1226
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$10;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitorCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 1935
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$11;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 152
    return-void
.end method

.method private adminAllowsUnredactedNotifications(I)Z
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2099
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 2100
    return v1

    .line 2102
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 2104
    .local v0, "dpmFlags":I
    and-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 3
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/app/Notification;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3840
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3841
    iget v2, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    .line 3840
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3841
    goto :goto_0
.end method

.method private bindBlockGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 20
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1652
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->inflateBlockGuts()V

    .line 1654
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    .line 1655
    .local v14, "sbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1656
    .local v13, "pmUser":Landroid/content/pm/PackageManager;
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 1658
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/BlockNotificationGuts;

    .line 1659
    .local v9, "guts":Lcom/android/systemui/statusbar/BlockNotificationGuts;
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1660
    .local v11, "pkg":Ljava/lang/String;
    move-object v6, v11

    .line 1662
    .local v6, "appname":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1664
    .local v12, "pkgicon":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 1667
    .local v5, "applicationIcon":Landroid/graphics/drawable/Drawable;
    const/4 v3, -0x1

    .line 1669
    .local v3, "appUid":I
    const/4 v7, 0x0

    .line 1670
    .local v7, "cacheInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationInfoArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationInfoArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    .line 1678
    .local v7, "cacheInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    move-object v10, v7

    .line 1679
    .local v10, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_0

    .line 1680
    invoke-virtual {v13, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationIconArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationIconArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    .line 1687
    .local v12, "pkgicon":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget v3, v10, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    .end local v7    # "cacheInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "pkgicon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    .line 1698
    new-instance v18, Landroid/os/UserHandle;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v19

    invoke-direct/range {v18 .. v19}, Landroid/os/UserHandle;-><init>(I)V

    .line 1697
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1702
    :cond_1
    const v17, 0x7f1300d0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/BlockNotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1703
    const v17, 0x7f1300d1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/BlockNotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1704
    const v17, 0x7f1300d5

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/BlockNotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/CompoundButton;

    .line 1705
    .local v16, "switchButton":Landroid/widget/CompoundButton;
    new-instance v17, Lcom/android/systemui/statusbar/BaseStatusBar$16;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$16;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/BlockNotificationGuts;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1712
    new-instance v17, Lcom/android/systemui/statusbar/BaseStatusBar$17;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$17;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1720
    const v17, 0x7f1300d6

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/BlockNotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1721
    .local v15, "settingsButton":Landroid/view/View;
    if-ltz v3, :cond_4

    .line 1722
    move v4, v3

    .line 1723
    .local v4, "appUidF":I
    new-instance v17, Lcom/android/systemui/statusbar/BaseStatusBar$18;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v11, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$18;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/BlockNotificationGuts;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1651
    .end local v4    # "appUidF":I
    :goto_3
    return-void

    .line 1674
    .end local v15    # "settingsButton":Landroid/view/View;
    .end local v16    # "switchButton":Landroid/widget/CompoundButton;
    .local v7, "cacheInfo":Landroid/content/pm/ApplicationInfo;
    .local v12, "pkgicon":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/16 v17, 0x2200

    .line 1673
    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v13, v11, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 1676
    .local v7, "cacheInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationInfoArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1689
    .end local v7    # "cacheInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "pkgicon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v8

    .line 1691
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1692
    .local v12, "pkgicon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationIconArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1684
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "cacheInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "info":Landroid/content/pm/ApplicationInfo;
    .local v12, "pkgicon":Landroid/graphics/drawable/Drawable;
    :cond_3
    :try_start_2
    invoke-virtual {v13, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1685
    .local v12, "pkgicon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationIconArrayMap:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1731
    .end local v7    # "cacheInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "pkgicon":Landroid/graphics/drawable/Drawable;
    .restart local v15    # "settingsButton":Landroid/view/View;
    .restart local v16    # "switchButton":Landroid/widget/CompoundButton;
    :cond_4
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 18
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1572
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->inflateGuts()V

    .line 1573
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    .line 1574
    .local v13, "sbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1575
    .local v12, "pmUser":Landroid/content/pm/PackageManager;
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 1576
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v8

    .line 1577
    .local v8, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setClosedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;)V

    .line 1578
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1579
    .local v10, "pkg":Ljava/lang/String;
    move-object v5, v10

    .line 1580
    .local v5, "appname":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1582
    .local v11, "pkgicon":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 1584
    .local v4, "applicationIcon":Landroid/graphics/drawable/Drawable;
    const/4 v2, -0x1

    .line 1587
    .local v2, "appUid":I
    const/16 v15, 0x2200

    .line 1586
    :try_start_0
    invoke-virtual {v12, v10, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 1589
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_0

    .line 1590
    invoke-virtual {v12, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1591
    invoke-virtual {v12, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1592
    .local v11, "pkgicon":Landroid/graphics/drawable/Drawable;
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "pkgicon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1601
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    .line 1602
    new-instance v16, Landroid/os/UserHandle;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    .line 1601
    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1606
    :cond_1
    const v15, 0x7f1300c0

    invoke-virtual {v8, v15}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1607
    const v15, 0x7f1300d1

    invoke-virtual {v8, v15}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1609
    const v15, 0x7f1302c6

    invoke-virtual {v8, v15}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1610
    .local v14, "settingsButton":Landroid/widget/TextView;
    if-ltz v2, :cond_2

    .line 1611
    move v3, v2

    .line 1612
    .local v3, "appUidF":I
    new-instance v15, Lcom/android/systemui/statusbar/BaseStatusBar$14;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8, v10, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$14;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;Ljava/lang/String;I)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1619
    const v15, 0x7f0f054a

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 1624
    .end local v3    # "appUidF":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v12, v13, v15}, Lcom/android/systemui/statusbar/NotificationGuts;->bindImportance(Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;I)V

    .line 1626
    const v15, 0x7f1302c7

    invoke-virtual {v8, v15}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1627
    .local v6, "doneButton":Landroid/widget/TextView;
    const v15, 0x7f0f054b

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(I)V

    .line 1628
    new-instance v15, Lcom/android/systemui/statusbar/BaseStatusBar$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v8, v13, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$15;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1571
    return-void

    .line 1594
    .end local v6    # "doneButton":Landroid/widget/TextView;
    .end local v14    # "settingsButton":Landroid/widget/TextView;
    :catch_0
    move-exception v7

    .line 1596
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .restart local v11    # "pkgicon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 1621
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "pkgicon":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "settingsButton":Landroid/widget/TextView;
    :cond_2
    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private changeToGoneState()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 4233
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 4234
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4235
    .local v3, "notificationCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 4236
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 4237
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4235
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4238
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getNotificationPreview()Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isClicked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4239
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getNotificationPreview()Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isFirstAdded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4240
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    goto :goto_1

    .line 4245
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    if-eqz v4, :cond_3

    .line 4246
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 4247
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    .line 4232
    :cond_3
    return-void
.end method

.method private dismissPopups(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1835
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(IIZZ)V

    .line 1834
    return-void
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 3962
    move-object v0, p0

    .line 3964
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 3969
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3971
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 3970
    const/4 v4, 0x4

    .line 3969
    invoke-virtual {p0, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3976
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    return-object v2

    .line 3972
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private processForRemoteInput(Landroid/app/Notification;)V
    .locals 13
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v10, 0x0

    .line 2673
    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_REMOTE_INPUT:Z

    if-nez v9, :cond_0

    return-void

    .line 2675
    :cond_0
    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v9, :cond_6

    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v11, "android.wearable.EXTENSIONS"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2676
    iget-object v9, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v9, :cond_1

    iget-object v9, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v9, v9

    if-nez v9, :cond_6

    .line 2677
    :cond_1
    const/4 v7, 0x0

    .line 2678
    .local v7, "viableAction":Landroid/app/Notification$Action;
    new-instance v8, Landroid/app/Notification$WearableExtender;

    invoke-direct {v8, p1}, Landroid/app/Notification$WearableExtender;-><init>(Landroid/app/Notification;)V

    .line 2680
    .local v8, "we":Landroid/app/Notification$WearableExtender;
    invoke-virtual {v8}, Landroid/app/Notification$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v1

    .line 2681
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 2683
    .local v3, "numActions":I
    const/4 v2, 0x0

    .end local v7    # "viableAction":Landroid/app/Notification$Action;
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 2684
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    .line 2685
    .local v0, "action":Landroid/app/Notification$Action;
    if-nez v0, :cond_3

    .line 2683
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2688
    :cond_3
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    .line 2689
    .local v5, "remoteInputs":[Landroid/app/RemoteInput;
    if-eqz v5, :cond_2

    .line 2692
    array-length v11, v5

    move v9, v10

    :goto_1
    if-ge v9, v11, :cond_4

    aget-object v6, v5, v9

    .line 2693
    .local v6, "ri":Landroid/app/RemoteInput;
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2694
    move-object v7, v0

    .line 2698
    .end local v6    # "ri":Landroid/app/RemoteInput;
    :cond_4
    if-eqz v7, :cond_2

    .line 2703
    .end local v0    # "action":Landroid/app/Notification$Action;
    .end local v5    # "remoteInputs":[Landroid/app/RemoteInput;
    :cond_5
    if-eqz v7, :cond_6

    .line 2704
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v9, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2705
    .local v4, "rebuilder":Landroid/app/Notification$Builder;
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/app/Notification$Action;

    aput-object v7, v9, v10

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 2706
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 2672
    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .end local v2    # "i":I
    .end local v3    # "numActions":I
    .end local v4    # "rebuilder":Landroid/app/Notification$Builder;
    .end local v8    # "we":Landroid/app/Notification$WearableExtender;
    :cond_6
    return-void

    .line 2692
    .restart local v0    # "action":Landroid/app/Notification$Action;
    .restart local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .restart local v2    # "i":I
    .restart local v3    # "numActions":I
    .restart local v5    # "remoteInputs":[Landroid/app/RemoteInput;
    .restart local v6    # "ri":Landroid/app/RemoteInput;
    .restart local v8    # "we":Landroid/app/Notification$WearableExtender;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private saveImportanceCloseControls(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V
    .locals 9
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p4, "done"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1738
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 1739
    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->saveImportance(Landroid/service/notification/StatusBarNotification;)V

    .line 1741
    new-array v3, v6, [I

    .line 1742
    .local v3, "rowLocation":[I
    new-array v2, v6, [I

    .line 1743
    .local v2, "doneLocation":[I
    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    .line 1744
    invoke-virtual {p4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1746
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    .line 1747
    .local v0, "centerX":I
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    .line 1748
    .local v1, "centerY":I
    aget v6, v2, v7

    aget v7, v3, v7

    sub-int/2addr v6, v7

    add-int v4, v6, v0

    .line 1749
    .local v4, "x":I
    aget v6, v2, v8

    aget v7, v3, v8

    sub-int/2addr v6, v7

    add-int v5, v6, v1

    .line 1750
    .local v5, "y":I
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(II)V

    .line 1737
    return-void
.end method

.method private startNotificationGutsIntent(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appUid"    # I

    .prologue
    .line 1515
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 1516
    .local v0, "keyguardShowing":Z
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$13;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$13;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZILandroid/content/Intent;)V

    .line 1549
    const/4 v2, 0x0

    .line 1516
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 1514
    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .prologue
    .line 887
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    .line 888
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 889
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    .line 890
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 891
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 887
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .end local v1    # "user$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    .line 886
    return-void
.end method

.method private updateKnoxNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 11
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3759
    const-string/jumbo v1, "KnoxNotification"

    const-string/jumbo v2, "----- updateKnoxNotificationViews -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    if-nez p1, :cond_0

    .line 3761
    return-void

    .line 3765
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getKnoxContentView()Landroid/view/View;

    move-result-object v9

    .line 3766
    .local v9, "knoxViewLocal":Landroid/view/View;
    if-eqz v9, :cond_2

    .line 3768
    const v1, 0x1020006

    .line 3767
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 3770
    .local v7, "icon":Landroid/widget/ImageView;
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3771
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 3772
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->icon:I

    .line 3773
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    .line 3774
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->number:I

    .line 3775
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3770
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 3777
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3779
    .local v8, "iconDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3780
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 3781
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 3782
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->color:I

    .line 3781
    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v10

    .line 3783
    .local v10, "resolveColor":I
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 3784
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v10, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3787
    .end local v10    # "resolveColor":I
    :cond_1
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3789
    .end local v0    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v7    # "icon":Landroid/widget/ImageView;
    .end local v8    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3791
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 3792
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getKnoxContentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 3793
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getKnoxContentView()Landroid/view/View;

    move-result-object v1

    .line 3794
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v2

    .line 3793
    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V

    .line 3758
    :cond_3
    return-void
.end method

.method private updateLockscreenNotificationSetting()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 3544
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 3545
    const-string/jumbo v7, "lock_screen_show_notifications"

    .line 3547
    iget v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 3546
    const/4 v9, 0x1

    .line 3544
    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    .line 3548
    .local v4, "show":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 3549
    iget v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    const/4 v8, 0x0

    .line 3548
    invoke-virtual {v6, v8, v7}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 3550
    .local v1, "dpmFlags":I
    and-int/lit8 v6, v1, 0x4

    if-nez v6, :cond_1

    const/4 v0, 0x1

    .line 3553
    .local v0, "allowedByDpm":Z
    :goto_1
    if-eqz v4, :cond_2

    .end local v0    # "allowedByDpm":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setShowLockscreenNotifications(Z)V

    .line 3555
    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    if-eqz v6, :cond_6

    .line 3556
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 3557
    const-string/jumbo v7, "lock_screen_allow_remote_input"

    .line 3559
    iget v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 3556
    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    .line 3561
    .local v2, "remoteInput":Z
    :goto_3
    and-int/lit8 v6, v1, 0x40

    if-nez v6, :cond_4

    const/4 v3, 0x1

    .line 3563
    .local v3, "remoteInputDpm":Z
    :goto_4
    if-eqz v2, :cond_5

    .end local v3    # "remoteInputDpm":Z
    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setLockScreenAllowRemoteInput(Z)V

    .line 3543
    .end local v2    # "remoteInput":Z
    :goto_6
    return-void

    .line 3544
    .end local v1    # "dpmFlags":I
    .end local v4    # "show":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "show":Z
    goto :goto_0

    .line 3550
    .restart local v1    # "dpmFlags":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "allowedByDpm":Z
    goto :goto_1

    :cond_2
    move v0, v5

    .line 3553
    goto :goto_2

    .line 3556
    .end local v0    # "allowedByDpm":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "remoteInput":Z
    goto :goto_3

    .line 3561
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "remoteInputDpm":Z
    goto :goto_4

    :cond_5
    move v3, v5

    .line 3563
    goto :goto_5

    .line 3565
    .end local v2    # "remoteInput":Z
    .end local v3    # "remoteInputDpm":Z
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->setLockScreenAllowRemoteInput(Z)V

    goto :goto_6
.end method

.method private updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V
    .locals 11
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "knoxViewLocal"    # Landroid/view/View;
    .param p3, "publicViewLocal"    # Landroid/view/View;

    .prologue
    const v10, 0x1020016

    .line 2568
    if-eqz p2, :cond_5

    .line 2569
    const-string/jumbo v8, "KnoxNotification"

    const-string/jumbo v9, "----- updateNotificationTitleForKnox -----"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2571
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2574
    .local v6, "title":Landroid/widget/TextView;
    const v8, 0x1020437

    .line 2573
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2576
    .local v0, "appName":Landroid/widget/TextView;
    move-object v7, v3

    .line 2578
    .local v7, "titleString":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2579
    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 2578
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2581
    .local v4, "pmUser":Landroid/content/pm/PackageManager;
    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 2580
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2582
    .local v2, "label":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 2583
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2586
    :cond_0
    if-eqz v3, :cond_2

    const-string/jumbo v8, "com.samsung.android.email.provider"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2587
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_1

    .line 2588
    const-string/jumbo v8, "KnoxNotification"

    .line 2589
    const-string/jumbo v9, "----- updateNotificationTitleForKnox: EmailProvider found -----"

    .line 2588
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    :cond_1
    if-eqz p3, :cond_2

    .line 2596
    const v8, 0x7f130094

    .line 2595
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2597
    .local v5, "publicTitle":Landroid/widget/TextView;
    if-eqz v5, :cond_6

    .line 2598
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2619
    .end local v2    # "label":Ljava/lang/CharSequence;
    .end local v4    # "pmUser":Landroid/content/pm/PackageManager;
    .end local v5    # "publicTitle":Landroid/widget/TextView;
    :cond_2
    :goto_0
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_3

    .line 2620
    const-string/jumbo v8, "KnoxNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "----- updateNotificationTitleForKnox: titleString - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2621
    const-string/jumbo v10, " -----"

    .line 2620
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    :cond_3
    if-eqz v6, :cond_4

    .line 2624
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2626
    :cond_4
    if-eqz v0, :cond_5

    .line 2627
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2628
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2629
    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->color:I

    .line 2628
    invoke-static {v8, v9}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2567
    .end local v0    # "appName":Landroid/widget/TextView;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "title":Landroid/widget/TextView;
    .end local v7    # "titleString":Ljava/lang/String;
    :cond_5
    return-void

    .line 2601
    .restart local v0    # "appName":Landroid/widget/TextView;
    .restart local v2    # "label":Ljava/lang/CharSequence;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "pmUser":Landroid/content/pm/PackageManager;
    .restart local v5    # "publicTitle":Landroid/widget/TextView;
    .restart local v6    # "title":Landroid/widget/TextView;
    .restart local v7    # "titleString":Ljava/lang/String;
    :cond_6
    const v8, 0x1020016

    .line 2600
    :try_start_1
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "publicTitle":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 2602
    .restart local v5    # "publicTitle":Landroid/widget/TextView;
    if-eqz v5, :cond_7

    .line 2603
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2605
    :cond_7
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_2

    .line 2606
    const-string/jumbo v8, "KnoxNotification"

    .line 2607
    const-string/jumbo v9, "----- updateNotificationTitleForKnox: did not find title view -----"

    .line 2606
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2613
    .end local v2    # "label":Ljava/lang/CharSequence;
    .end local v4    # "pmUser":Landroid/content/pm/PackageManager;
    .end local v5    # "publicTitle":Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 2614
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v8, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v8, :cond_2

    .line 2615
    const-string/jumbo v8, "KnoxNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateNotificationTitleForKnox: threw an exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 8
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3699
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 3700
    .local v1, "contentView":Landroid/widget/RemoteViews;
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 3701
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 3702
    .local v3, "headsUpContentView":Landroid/widget/RemoteViews;
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 3705
    .local v4, "publicContentView":Landroid/widget/RemoteViews;
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3706
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3707
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 3708
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v6

    .line 3709
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 3707
    invoke-virtual {v0, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3711
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getHeadsUpContentView()Landroid/view/View;

    move-result-object v2

    .line 3712
    .local v2, "headsUpChild":Landroid/view/View;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 3713
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 3714
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 3713
    invoke-virtual {v3, v5, v2, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3716
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3717
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 3718
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 3717
    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3723
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v5

    .line 3722
    if-eqz v5, :cond_3

    .line 3725
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateKnoxNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 3729
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, v6, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    .line 3731
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 3732
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    .line 3698
    return-void
.end method

.method private updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 8
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "knoxViewLocal"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0f04b7

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2539
    if-eqz p2, :cond_0

    .line 2540
    const-string/jumbo v3, "KnoxNotification"

    const-string/jumbo v4, "----- updateSanitizedTextForKnox -----"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    const v3, 0x1020090

    .line 2541
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2543
    .local v2, "text":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 2544
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    .line 2545
    .local v1, "personaId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KnoxStateMonitor;->getKnoxName(I)Ljava/lang/String;

    move-result-object v0

    .line 2546
    .local v0, "knoxName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2547
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "Knox"

    aput-object v5, v4, v6

    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2538
    .end local v0    # "knoxName":Ljava/lang/String;
    .end local v1    # "personaId":I
    .end local v2    # "text":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 2549
    .restart local v0    # "knoxName":Ljava/lang/String;
    .restart local v1    # "personaId":I
    .restart local v2    # "text":Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSensitiveTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "publicViewLocal"    # Landroid/view/View;

    .prologue
    .line 2557
    if-eqz p2, :cond_0

    .line 2558
    const-string/jumbo v1, "KnoxNotification"

    const-string/jumbo v2, "----- updateSensitiveTextForKnox -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    const v1, 0x7f1302e1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2560
    .local v0, "text":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 2561
    const v1, 0x104014d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2556
    .end local v0    # "text":Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 3211
    if-nez p1, :cond_0

    .line 3212
    return-void

    .line 3215
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 3216
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 3210
    return-void
.end method

.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 2763
    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 3026
    return-void
.end method

.method public animateCollapsePanels(IZZ)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "force"    # Z
    .param p3, "delayed"    # Z

    .prologue
    .line 3029
    return-void
.end method

.method public animateExpandLockedShadePanel(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 4080
    return-void
.end method

.method protected applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 7
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const v5, 0x102043e

    const/16 v6, 0x15

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1471
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1472
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 1477
    :cond_0
    iget v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_1

    .line 1478
    iget v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v3, v6, :cond_1

    .line 1479
    iget-object v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 1480
    iput-boolean v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 1494
    :cond_1
    :goto_0
    iget-object v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_2

    .line 1495
    iget-object v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget v4, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v4, v6, :cond_6

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x7f130042

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 1465
    :cond_2
    return-void

    .line 1473
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1484
    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v0, v3, Landroid/app/Notification;->color:I

    .line 1485
    .local v0, "color":I
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1486
    iget-object v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_5

    .line 1487
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 1488
    const v5, 0x7f0b016e

    .line 1487
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 1486
    .end local v0    # "color":I
    :cond_5
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    goto :goto_0

    :cond_6
    move v1, v2

    .line 1495
    goto :goto_1
.end method

.method public bindTypedGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1555
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutType:I

    packed-switch v0, :pswitch_data_0

    .line 1553
    :goto_0
    return-void

    .line 1557
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_0

    .line 1561
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindBlockGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_0

    .line 1555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bindVetoButtonClickListener(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 2
    .param p1, "row"    # Landroid/view/View;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1426
    const v1, 0x7f130411

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1427
    .local v0, "vetoButton":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$12;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$12;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1435
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1436
    return-object v0
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 1887
    const/16 v0, 0x3ff

    .line 1888
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1889
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1886
    return-void
.end method

.method protected cancelPreloadingRecents()V
    .locals 1

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->cancelPreloadingRecents()V

    .line 2000
    :cond_0
    return-void
.end method

.method public clearMapsForGuts()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationInfoArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationIconArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 372
    return-void
.end method

.method public clearNotificationEffects()V
    .locals 2

    .prologue
    .line 3131
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3129
    :goto_0
    return-void

    .line 3132
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    .prologue
    .line 1921
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method public createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 10
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v9, 0x0

    .line 3185
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 3186
    .local v8, "n":Landroid/app/Notification;
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 3187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3186
    invoke-direct {v7, v1, v2, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 3188
    .local v7, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3190
    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 3191
    .local v3, "smallIcon":Landroid/graphics/drawable/Icon;
    if-nez v3, :cond_0

    .line 3193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No small icon in notification from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3192
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 3194
    return-object v9

    .line 3196
    :cond_0
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 3197
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 3198
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3200
    iget v4, v8, Landroid/app/Notification;->iconLevel:I

    .line 3201
    iget v5, v8, Landroid/app/Notification;->number:I

    .line 3202
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v6

    .line 3196
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 3203
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 3205
    return-object v9

    .line 3207
    :cond_1
    return-object v7
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v4, 0x0

    .line 3169
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    .line 3170
    .local v1, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v1, :cond_0

    .line 3171
    return-object v4

    .line 3175
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 3176
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 3178
    return-object v4

    .line 3180
    :cond_1
    return-object v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 3949
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3951
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3948
    :goto_0
    return-void

    .line 3952
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected dismissKeyboardShortcuts()V
    .locals 0

    .prologue
    .line 1997
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 1996
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 2

    .prologue
    .line 1894
    const/16 v0, 0x403

    .line 1895
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1896
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1893
    return-void
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZ)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;
    .param p3, "afterKeyguardGone"    # Z
    .param p4, "fromNotification"    # Z

    .prologue
    .line 1368
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 1367
    return-void
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .prologue
    .line 1363
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 1362
    return-void
.end method

.method public dismissPopups()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1831
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(IIZZ)V

    .line 1830
    return-void
.end method

.method public dismissPopups(IIZZ)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resetGear"    # Z
    .param p4, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1839
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZ)V

    .line 1842
    :cond_0
    if-eqz p3, :cond_1

    .line 1843
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p4, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetExposedGearView(ZZ)V

    .line 1838
    :cond_1
    return-void
.end method

.method public filterOutForKnoxContainer(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 10
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1092
    if-nez p1, :cond_0

    return v6

    .line 1094
    :cond_0
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 1095
    .local v3, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    .line 1096
    .local v5, "userId":I
    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v8, v5}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1101
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v8, v8, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    if-gez v8, :cond_1

    .line 1102
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KnoxStateMonitor;->isContainerKioskMode()Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_0
    iput v6, v8, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    .line 1104
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v7

    invoke-virtual {v6, v5, v1, v7}, Lcom/android/keyguard/KnoxStateMonitor;->filterOutForKnoxContainer(ILjava/lang/String;Z)Z

    move-result v6

    return v6

    :cond_2
    move v6, v7

    .line 1102
    goto :goto_0

    .line 1119
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v8, v5}, Lcom/android/keyguard/KnoxStateMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1120
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v8, v5}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    const-string/jumbo v8, "com.android.settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1119
    if-eqz v8, :cond_5

    .line 1121
    :cond_4
    return v6

    .line 1124
    :cond_5
    invoke-virtual {p0, p1, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1125
    iget v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    .line 1126
    iget v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v8, v8, -0x4

    iput v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    .line 1128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, "mapKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v8, v8, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1130
    .local v4, "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1131
    if-nez v4, :cond_8

    .line 1132
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    :cond_6
    iget-boolean v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-nez v6, :cond_7

    .line 1143
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1145
    .local v2, "pi":Landroid/app/PendingIntent;
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iput-object v2, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1146
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    .line 1156
    .end local v0    # "mapKey":Ljava/lang/String;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v4    # "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_7
    :goto_1
    return v7

    .line 1133
    .restart local v0    # "mapKey":Ljava/lang/String;
    .restart local v4    # "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_8
    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1137
    return v6

    .line 1149
    .end local v0    # "mapKey":Ljava/lang/String;
    .end local v4    # "tEnt":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_9
    iget-boolean v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-eqz v6, :cond_a

    .line 1150
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iput-object v9, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1151
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    .line 1153
    :cond_a
    iget v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v6, v6, 0x3

    iput v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    .line 1154
    iget v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v6, v6, -0x9

    iput v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    goto :goto_1
.end method

.method protected getActivityOptions()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 3076
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 3077
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 3078
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1349
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method public getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method protected abstract getMaxKeyguardNotifications(Z)I
.end method

.method public getNotificationGutsType()I
    .locals 1

    .prologue
    .line 1567
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutType:I

    return v0
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    .prologue
    .line 1754
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$19;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 9
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 3146
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 3148
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    .line 3149
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    move-object v6, p2

    .line 3148
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3145
    :goto_0
    return-void

    .line 3150
    :catch_0
    move-exception v8

    .local v8, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 6
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 3106
    if-eqz p1, :cond_4

    .line 3107
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    .line 3109
    .local v3, "pinnedHeadsUp":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPanelFullyCollapsed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3110
    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3111
    .local v0, "clearNotificationEffects":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3112
    .local v2, "notificationLoad":I
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPanelFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3113
    const/4 v2, 0x1

    .line 3117
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4, v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V

    .line 3104
    .end local v0    # "clearNotificationEffects":Z
    .end local v2    # "notificationLoad":I
    .end local v3    # "pinnedHeadsUp":Z
    :goto_2
    return-void

    .line 3110
    .restart local v3    # "pinnedHeadsUp":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "clearNotificationEffects":Z
    goto :goto_0

    .line 3109
    .end local v0    # "clearNotificationEffects":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "clearNotificationEffects":Z
    goto :goto_0

    .line 3115
    .restart local v2    # "notificationLoad":I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "note_load"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 3121
    .end local v0    # "clearNotificationEffects":Z
    .end local v2    # "notificationLoad":I
    .end local v3    # "pinnedHeadsUp":Z
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_2

    .line 3119
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1862
    const/16 v0, 0x3fc

    .line 1863
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1864
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    .line 1865
    :goto_0
    if-eqz p2, :cond_1

    .line 1864
    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1861
    return-void

    :cond_0
    move v3, v2

    .line 1864
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1865
    goto :goto_1
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->hideRecents(ZZ)V

    .line 1974
    :cond_0
    return-void
.end method

.method protected inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 47
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2225
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2226
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 2225
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v34

    .line 2228
    .local v34, "pmUser":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v41, v0

    .line 2231
    .local v41, "sbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setShowActionBg(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    .line 2234
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/statusbar/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2240
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    .line 2241
    .local v16, "contentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 2242
    .local v12, "bigContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v25, v0

    .line 2243
    .local v25, "headsUpContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    move-object/from16 v37, v0

    .line 2245
    .local v37, "publicContentView":Landroid/widget/RemoteViews;
    if-nez v16, :cond_0

    .line 2246
    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no contentView for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v41 .. v41}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    const/4 v5, 0x0

    return v5

    .line 2235
    .end local v12    # "bigContentView":Landroid/widget/RemoteViews;
    .end local v16    # "contentView":Landroid/widget/RemoteViews;
    .end local v25    # "headsUpContentView":Landroid/widget/RemoteViews;
    .end local v37    # "publicContentView":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v21

    .line 2236
    .local v21, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "StatusBar"

    const-string/jumbo v6, "Unable to get notification remote views"

    move-object/from16 v0, v21

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2237
    const/4 v5, 0x0

    return v5

    .line 2258
    .end local v21    # "e":Ljava/lang/RuntimeException;
    .restart local v12    # "bigContentView":Landroid/widget/RemoteViews;
    .restart local v16    # "contentView":Landroid/widget/RemoteViews;
    .restart local v25    # "headsUpContentView":Landroid/widget/RemoteViews;
    .restart local v37    # "publicContentView":Landroid/widget/RemoteViews;
    :cond_0
    const/16 v24, 0x0

    .line 2259
    .local v24, "hasUserChangedExpansion":Z
    const/16 v44, 0x0

    .line 2260
    .local v44, "userExpanded":Z
    const/16 v45, 0x0

    .line 2262
    .local v45, "userLocked":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_17

    .line 2263
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v40, v0

    .line 2264
    .local v40, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v40 .. v40}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v24

    .line 2265
    .local v24, "hasUserChangedExpansion":Z
    invoke-virtual/range {v40 .. v40}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v44

    .line 2266
    .local v44, "userExpanded":Z
    invoke-virtual/range {v40 .. v40}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v45

    .line 2267
    .local v45, "userLocked":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    .line 2268
    if-eqz v24, :cond_1

    .line 2269
    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 2336
    .end local v24    # "hasUserChangedExpansion":Z
    .end local v44    # "userExpanded":Z
    .end local v45    # "userLocked":Z
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 2337
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindVetoButtonClickListener(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v46

    .line 2338
    .local v46, "vetoButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2339
    const v6, 0x7f0f02f2

    .line 2338
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2344
    invoke-virtual/range {v40 .. v40}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v14

    .line 2345
    .local v14, "contentContainer":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual/range {v40 .. v40}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v15

    .line 2347
    .local v15, "contentContainerPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual/range {v40 .. v40}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKnoxLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v23

    .line 2350
    .local v23, "expandedKnox":Lcom/android/systemui/statusbar/NotificationContentView;
    const/high16 v5, 0x60000

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 2351
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_REMOTE_INPUT:Z

    if-eqz v5, :cond_2

    .line 2352
    const/high16 v5, 0x20000

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 2355
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    .line 2358
    const/16 v17, 0x0

    .line 2359
    .local v17, "contentViewLocal":Landroid/view/View;
    const/4 v13, 0x0

    .line 2360
    .local v13, "bigContentViewLocal":Landroid/view/View;
    const/16 v26, 0x0

    .line 2361
    .local v26, "headsUpContentViewLocal":Landroid/view/View;
    const/16 v38, 0x0

    .line 2364
    .local v38, "publicViewLocal":Landroid/view/View;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 2366
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 2363
    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v17

    .line 2367
    .local v17, "contentViewLocal":Landroid/view/View;
    if-eqz v12, :cond_3

    .line 2369
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 2371
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 2368
    invoke-virtual {v12, v5, v14, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v13

    .line 2373
    .end local v13    # "bigContentViewLocal":Landroid/view/View;
    :cond_3
    if-eqz v25, :cond_4

    .line 2375
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 2377
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 2374
    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v14, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v26

    .line 2379
    .end local v26    # "headsUpContentViewLocal":Landroid/view/View;
    :cond_4
    if-eqz v37, :cond_5

    .line 2381
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 2382
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 2380
    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v15, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v38

    .line 2391
    .end local v38    # "publicViewLocal":Landroid/view/View;
    :cond_5
    if-eqz v17, :cond_6

    .line 2392
    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2393
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 2395
    :cond_6
    if-eqz v13, :cond_7

    .line 2396
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2397
    invoke-virtual {v14, v13}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 2399
    :cond_7
    if-eqz v26, :cond_8

    .line 2400
    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2401
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    .line 2403
    :cond_8
    if-eqz v38, :cond_9

    .line 2404
    const/4 v5, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2405
    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 2410
    :cond_9
    :try_start_2
    invoke-virtual/range {v41 .. v41}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v31

    .line 2411
    .local v31, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v31

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2415
    .end local v31    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-nez v5, :cond_19

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 2418
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v5

    .line 2417
    if-eqz v5, :cond_13

    .line 2419
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v5, :cond_a

    .line 2420
    const-string/jumbo v5, "KnoxNotification"

    const-string/jumbo v6, "-----------------------BaseStatusBar--------------------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    const-string/jumbo v5, "KnoxNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Notification - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v41 .. v41}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    const-string/jumbo v5, "KnoxNotification"

    const-string/jumbo v6, "-----------------------BaseStatusBar--------------------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    :cond_a
    const-string/jumbo v5, "KnoxNotification"

    const-string/jumbo v6, "----- inflateViews : customKnoxViewLocal == null -----"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 2431
    const v6, 0x109009c

    .line 2432
    const/4 v7, 0x0

    .line 2430
    move-object/from16 v0, v23

    invoke-virtual {v5, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 2433
    .local v18, "customKnoxViewLocal":Landroid/view/View;
    if-eqz v18, :cond_12

    .line 2434
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 2435
    if-eqz v23, :cond_b

    .line 2436
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 2439
    :cond_b
    const-string/jumbo v5, "KnoxNotification"

    const-string/jumbo v6, "----- inflateViews : modified KnoxViewLocal -----"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    const v5, 0x1020016

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 2445
    .local v43, "title":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual/range {v41 .. v41}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2442
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationTitleForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;Landroid/view/View;)V

    .line 2449
    const v5, 0x1020006

    .line 2448
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 2451
    .local v27, "icon":Landroid/widget/ImageView;
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2452
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 2453
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->icon:I

    .line 2454
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->iconLevel:I

    .line 2455
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->number:I

    .line 2456
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget-object v10, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2451
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2458
    .local v4, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 2461
    .local v28, "iconDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2462
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2463
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2464
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->color:I

    .line 2463
    invoke-static {v5, v6}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v39

    .line 2465
    .local v39, "resolveColor":I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 2466
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2470
    .end local v39    # "resolveColor":I
    :cond_d
    if-eqz v27, :cond_e

    .line 2471
    if-eqz v28, :cond_e

    .line 2472
    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2476
    :cond_e
    const/16 v36, 0x0

    .line 2477
    .local v36, "privateTime":Landroid/view/View;
    if-eqz v17, :cond_f

    .line 2478
    const v5, 0x10200a7

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    .line 2481
    .end local v36    # "privateTime":Landroid/view/View;
    :cond_f
    if-eqz v36, :cond_11

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_11

    .line 2482
    const v5, 0x10200a7

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    .line 2483
    .local v42, "timeStub":Landroid/view/View;
    if-eqz v42, :cond_10

    .line 2484
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2487
    :cond_10
    const v5, 0x10200a7

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 2486
    check-cast v19, Landroid/widget/DateTimeView;

    .line 2488
    .local v19, "dateTimeView":Landroid/widget/DateTimeView;
    if-eqz v19, :cond_11

    .line 2489
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-wide v6, v5, Landroid/app/Notification;->when:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 2493
    .end local v19    # "dateTimeView":Landroid/widget/DateTimeView;
    .end local v42    # "timeStub":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSanitizedTextForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V

    .line 2500
    .end local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v27    # "icon":Landroid/widget/ImageView;
    .end local v28    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v43    # "title":Landroid/widget/TextView;
    :cond_12
    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 2511
    .end local v18    # "customKnoxViewLocal":Landroid/view/View;
    :cond_13
    move-object/from16 v0, v40

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2512
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 2513
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v13, :cond_1a

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    .line 2515
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 2516
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v5, :cond_15

    .line 2517
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->hasSameNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v32

    .line 2518
    .local v32, "isAlreadyExist":Z
    new-instance v35, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/preview/NotificationPreview;-><init>(Landroid/content/Context;)V

    .line 2519
    .local v35, "preview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setPreviewIcon(Landroid/widget/ImageView;)V

    .line 2520
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setPreviewKey(Ljava/lang/String;)V

    .line 2521
    move-object/from16 v0, v35

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 2522
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v5

    if-eqz v5, :cond_14

    if-eqz v32, :cond_1b

    :cond_14
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setIsFirstAdded(Z)V

    .line 2523
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setNotificationPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    .line 2527
    .end local v32    # "isAlreadyExist":Z
    .end local v35    # "preview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_15
    if-eqz v24, :cond_16

    .line 2530
    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 2532
    :cond_16
    move-object/from16 v0, v40

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 2533
    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 2534
    const/4 v5, 0x1

    return v5

    .line 2273
    .end local v14    # "contentContainer":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v15    # "contentContainerPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v17    # "contentViewLocal":Landroid/view/View;
    .end local v23    # "expandedKnox":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v40    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v46    # "vetoButton":Landroid/view/View;
    .local v24, "hasUserChangedExpansion":Z
    .local v44, "userExpanded":Z
    .local v45, "userLocked":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2274
    const-string/jumbo v6, "layout_inflater"

    .line 2273
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/view/LayoutInflater;

    .line 2275
    .local v30, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040175

    .line 2276
    const/4 v6, 0x0

    .line 2275
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v40

    check-cast v40, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2279
    .restart local v40    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual/range {v41 .. v41}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsPersona(Z)V

    .line 2282
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 2289
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    .line 2292
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnExpandClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;)V

    .line 2295
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnGutsButtonClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnGutsButtonClickListener;)V

    .line 2302
    invoke-virtual/range {v41 .. v41}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v33

    .line 2303
    .local v33, "pkg":Ljava/lang/String;
    move-object/from16 v11, v33

    .line 2306
    .local v11, "appname":Ljava/lang/String;
    const/16 v5, 0x2200

    .line 2305
    :try_start_3
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v31

    .line 2308
    .restart local v31    # "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v31, :cond_18

    .line 2309
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v11

    .line 2314
    .end local v31    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_18
    :goto_5
    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAppName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2385
    .end local v11    # "appname":Ljava/lang/String;
    .end local v24    # "hasUserChangedExpansion":Z
    .end local v30    # "inflater":Landroid/view/LayoutInflater;
    .end local v33    # "pkg":Ljava/lang/String;
    .end local v44    # "userExpanded":Z
    .end local v45    # "userLocked":Z
    .restart local v14    # "contentContainer":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v15    # "contentContainerPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v23    # "expandedKnox":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v38    # "publicViewLocal":Landroid/view/View;
    .restart local v46    # "vetoButton":Landroid/view/View;
    :catch_1
    move-exception v21

    .line 2386
    .restart local v21    # "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v41 .. v41}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v41 .. v41}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 2387
    .local v29, "ident":Ljava/lang/String;
    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "couldn\'t inflate view for notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2388
    const/4 v5, 0x0

    return v5

    .line 2412
    .end local v21    # "e":Ljava/lang/RuntimeException;
    .end local v29    # "ident":Ljava/lang/String;
    .end local v38    # "publicViewLocal":Landroid/view/View;
    .restart local v17    # "contentViewLocal":Landroid/view/View;
    :catch_2
    move-exception v22

    .line 2413
    .local v22, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed looking up ApplicationInfo for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v41 .. v41}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2415
    .end local v22    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 2513
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 2522
    .restart local v32    # "isAlreadyExist":Z
    .restart local v35    # "preview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_1b
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 2311
    .end local v14    # "contentContainer":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v15    # "contentContainerPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v17    # "contentViewLocal":Landroid/view/View;
    .end local v23    # "expandedKnox":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v32    # "isAlreadyExist":Z
    .end local v35    # "preview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    .end local v46    # "vetoButton":Landroid/view/View;
    .restart local v11    # "appname":Ljava/lang/String;
    .restart local v24    # "hasUserChangedExpansion":Z
    .restart local v30    # "inflater":Landroid/view/LayoutInflater;
    .restart local v33    # "pkg":Ljava/lang/String;
    .restart local v44    # "userExpanded":Z
    .restart local v45    # "userLocked":Z
    :catch_3
    move-exception v20

    .local v20, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_5
.end method

.method public isAppCoverShowing()Z
    .locals 2

    .prologue
    .line 4125
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "isAppCoverShowing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4126
    const/4 v0, 0x0

    return v0
.end method

.method public isBouncerShowing()Z
    .locals 1

    .prologue
    .line 3945
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 2767
    const/4 v0, 0x0

    return v0
.end method

.method public isCoverViewShowing()Z
    .locals 2

    .prologue
    .line 4116
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "isCoverViewShowing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    const/4 v0, 0x0

    return v0
.end method

.method public isCoveredState()Z
    .locals 1

    .prologue
    .line 4180
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->isCoveredState(I)Z

    move-result v0

    return v0
.end method

.method protected isCurrentProfile(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    .line 1342
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1343
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1342
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isDeviceInGearVrDocked()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGearVrDocked:Z

    return v0
.end method

.method public isDeviceInVrMode()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVrMode:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 3

    .prologue
    .line 3989
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    .line 3993
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    .line 3994
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 3993
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3995
    const/4 v0, 0x0

    return v0

    .line 3997
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isKeyguardState()Z
    .locals 1

    .prologue
    .line 4164
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->isKeyguardState(I)Z

    move-result v0

    return v0
.end method

.method public isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .prologue
    .line 1160
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    .line 1161
    .local v1, "userId":I
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1162
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 1163
    const v2, 0x102043e

    .line 1162
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v4, 0x1

    .line 1165
    .local v4, "isRemoteViewProvided":Z
    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KnoxStateMonitor;->isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z

    move-result v0

    return v0

    .line 1162
    .end local v4    # "isRemoteViewProvided":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "isRemoteViewProvided":Z
    goto :goto_0

    .line 1166
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public isLockscreenPublicMode()Z
    .locals 1

    .prologue
    .line 2031
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method public isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v0, 0x0

    .line 1501
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1502
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v1

    .line 1503
    const v2, 0x1020441

    .line 1502
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1501
    :cond_0
    return v0
.end method

.method protected isMusicServiceBoxOn()Z
    .locals 1

    .prologue
    .line 4261
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    .line 4262
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledServiceBoxMusicPage()Z

    move-result v0

    .line 4261
    if-eqz v0, :cond_0

    .line 4263
    const/4 v0, 0x1

    return v0

    .line 4265
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1320
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1321
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 1326
    .local v0, "notificationUserId":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public isNotificationIconsOnlyOn()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    return v0
.end method

.method public abstract isPanelFullyCollapsed()Z
.end method

.method public isSecLockscreenPublicMode()Z
    .locals 1

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2037
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v0

    .line 2036
    if-eqz v0, :cond_2

    .line 2038
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2040
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isShadeLockedState()Z
    .locals 1

    .prologue
    .line 4172
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->isShadeLockedState(I)Z

    move-result v0

    return v0
.end method

.method protected abstract isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public launchNotificationSetting(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    move-object v5, p1

    .line 4132
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 4133
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 4134
    .local v6, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 4135
    .local v4, "pmUser":Landroid/content/pm/PackageManager;
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4136
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4137
    .local v3, "pkg":Ljava/lang/String;
    const/4 v0, -0x1

    .line 4140
    .local v0, "appUid":I
    const/16 v7, 0x2200

    .line 4139
    :try_start_0
    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 4141
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 4142
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4149
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    sget-boolean v7, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v7, :cond_1

    .line 4150
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 4151
    const-string/jumbo v8, "com.android.systemui.statusbar.policy.notification"

    .line 4152
    const-string/jumbo v9, "NO02"

    .line 4150
    invoke-static {v7, v8, v9, v10, v10}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4154
    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V

    .line 4131
    return-void

    .line 4144
    :catch_0
    move-exception v1

    .line 4146
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "StatusBar"

    const-string/jumbo v8, "cannot get ApplicationInfo : launchNotificationSetting"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    .line 3982
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3980
    :goto_0
    return-void

    .line 3983
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public abstract maybeEscalateHeadsUp()V
.end method

.method protected abstract notifyGearVrStateChange(Z)V
.end method

.method protected notifyHeadsUpScreenOff()V
    .locals 0

    .prologue
    .line 3836
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->maybeEscalateHeadsUp()V

    .line 3835
    return-void
.end method

.method protected notifyUserAboutHiddenNotifications()V
    .locals 12

    .prologue
    const/high16 v11, 0x10000000

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1265
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1266
    const-string/jumbo v7, "show_note_about_notification_hiding"

    .line 1265
    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    .line 1267
    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "user hasn\'t seen notification about hidden notifications"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1269
    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "insecure lockscreen, skipping notification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1271
    const-string/jumbo v7, "show_note_about_notification_hiding"

    .line 1270
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1272
    return-void

    .line 1274
    :cond_0
    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "disabling lockecreen notifications and alerting the user"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1277
    const-string/jumbo v7, "lock_screen_show_notifications"

    .line 1276
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1278
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1279
    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    .line 1278
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1281
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1282
    .local v4, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 1283
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1282
    invoke-static {v6, v9, v7, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1285
    .local v0, "cancelIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 1286
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.statusbar.banner_action_setup"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1285
    invoke-static {v6, v9, v7, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1289
    .local v5, "setupIntent":Landroid/app/PendingIntent;
    const v1, 0x106005a

    .line 1290
    .local v1, "colorRes":I
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1291
    const v7, 0x7f02014e

    .line 1290
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1292
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0f04d3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1290
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1293
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0f04d4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1290
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1296
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x106005a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 1290
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1299
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0f04d5

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1298
    const v8, 0x7f020160

    .line 1290
    invoke-virtual {v6, v8, v7, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1302
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0f04d6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1301
    const v8, 0x7f020201

    .line 1290
    invoke-virtual {v6, v8, v7, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1304
    .local v3, "note":Landroid/app/Notification$Builder;
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 1307
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1308
    .local v2, "noMan":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    const v7, 0x7f13003b

    invoke-virtual {v2, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1264
    .end local v0    # "cancelIntent":Landroid/app/PendingIntent;
    .end local v1    # "colorRes":I
    .end local v2    # "noMan":Landroid/app/NotificationManager;
    .end local v3    # "note":Landroid/app/Notification$Builder;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "setupIntent":Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1374
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v4, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1375
    .local v4, "locale":Ljava/util/Locale;
    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    .line 1376
    .local v3, "ld":I
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1377
    .local v2, "fontScale":F
    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    .line 1378
    .local v1, "flipfont":I
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1379
    .local v0, "density":I
    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDensity:I

    if-ne v0, v5, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_4

    .line 1380
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->onDensityOrFontScaleChanged()V

    .line 1381
    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDensity:I

    .line 1382
    iput v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    .line 1383
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFlipfont:I

    .line 1385
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-eq v3, v5, :cond_3

    .line 1391
    :cond_2
    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 1392
    iput v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 1393
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->refreshLayout(I)V

    .line 1373
    :cond_3
    return-void

    .line 1379
    :cond_4
    if-lez v1, :cond_1

    iget v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFlipfont:I

    if-eq v1, v5, :cond_1

    goto :goto_0
.end method

.method public onCoverAppCovered(Z)I
    .locals 2
    .param p1, "covered"    # Z

    .prologue
    .line 4107
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "onCoverAppCovered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4108
    const/4 v0, 0x0

    return v0
.end method

.method protected onDensityOrFontScaleChanged()V
    .locals 6

    .prologue
    .line 1398
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 1399
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1400
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1401
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    .line 1402
    .local v2, "exposedGuts":Z
    :goto_1
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reInflateViews()V

    .line 1403
    if-eqz v2, :cond_0

    .line 1404
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1406
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindTypedGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1408
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    .line 1399
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1401
    .end local v2    # "exposedGuts":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "exposedGuts":Z
    goto :goto_1

    .line 1397
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v2    # "exposedGuts":Z
    :cond_2
    return-void
.end method

.method public onExpandClicked(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 0
    .param p1, "clickedEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "nowExpanded"    # Z

    .prologue
    .line 2178
    return-void
.end method

.method public onGutsButtonClicked(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 2183
    return-void
.end method

.method public onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 3
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    const/4 v2, 0x0

    .line 1849
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 1850
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1848
    return-void
.end method

.method protected onLockedNotificationImportanceChange(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0
    .param p1, "dismissAction"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 2170
    return-void
.end method

.method protected onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "clickedView"    # Landroid/view/View;

    .prologue
    .line 2172
    return-void
.end method

.method protected onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "clicked"    # Landroid/view/View;

    .prologue
    .line 2175
    return-void
.end method

.method public onNavigationBarForceClicked(III)V
    .locals 0
    .param p1, "info"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 4045
    return-void
.end method

.method public onPanelLaidOut()V
    .locals 3

    .prologue
    .line 2154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2157
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v0

    .line 2158
    .local v0, "maxBefore":I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v1

    .line 2159
    .local v1, "maxNotifications":I
    if-eq v0, v1, :cond_0

    .line 2160
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v2, :cond_1

    .line 2161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNotificationIconsOnlyOn()Z

    move-result v2

    .line 2160
    if-eqz v2, :cond_1

    .line 2153
    .end local v0    # "maxBefore":I
    .end local v1    # "maxNotifications":I
    :cond_0
    :goto_0
    return-void

    .line 2164
    .restart local v0    # "maxBefore":I
    .restart local v1    # "maxNotifications":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateRowStates()V

    goto :goto_0
.end method

.method public onSecureLockScreen()Z
    .locals 1

    .prologue
    .line 2134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSecLockscreenPublicMode()Z

    move-result v0

    return v0
.end method

.method public onTaskAddedOnTaskBar(IIILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "stackId"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 4020
    return-void
.end method

.method public onTaskFocusedOnTaskBar(IIILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "stackId"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 4032
    return-void
.end method

.method public onTaskRemovedOnTaskBar(IIILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "stackId"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 4024
    return-void
.end method

.method public onTaskUpdatedOnTaskBar(IIILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "stackId"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 4028
    return-void
.end method

.method protected onWorkChallengeUnlocked()V
    .locals 0

    .prologue
    .line 2045
    return-void
.end method

.method public overrideActivityPendingAppTransition(Z)V
    .locals 6
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 3033
    if-eqz p1, :cond_0

    .line 3035
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3032
    :cond_0
    :goto_0
    return-void

    .line 3036
    :catch_0
    move-exception v0

    .line 3037
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error overriding app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected performRemoveNotification(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 8
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "removeView"    # Z

    .prologue
    .line 1440
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1441
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 1442
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    .line 1443
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    .line 1445
    .local v4, "userId":I
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v5, v2, v3, v1, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1446
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v5, :cond_0

    .line 1447
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 1446
    if-eqz v5, :cond_0

    .line 1448
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1449
    const/4 p2, 0x1

    .line 1451
    .end local p2    # "removeView":Z
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1452
    const/4 p2, 0x1

    .line 1454
    :cond_1
    if-eqz p2, :cond_2

    .line 1455
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    :cond_2
    :goto_0
    return-void

    .line 1458
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 1880
    const/16 v0, 0x3fe

    .line 1881
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1882
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1879
    return-void
.end method

.method protected preloadRecents()V
    .locals 1

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->preloadRecents()V

    .line 1986
    :cond_0
    return-void
.end method

.method protected abstract refreshLayout(I)V
.end method

.method public abstract removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v4, 0x0

    .line 3156
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 3157
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 3158
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeNotification for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    return-object v4

    .line 3161
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 3162
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    return-object v1
.end method

.method protected resetNotificationShadowViews()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1416
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 1417
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1418
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1419
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOutlineRect(Landroid/graphics/RectF;)V

    .line 1417
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1421
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    invoke-virtual {p0, v5, v5, v6, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(IIZZ)V

    .line 1415
    return-void
.end method

.method public sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;
    .locals 16
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "userId"    # I

    .prologue
    .line 1177
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_0

    .line 1178
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "----- Inside sanitizePendingIntent -----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v13, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1180
    .local v13, "pi":Landroid/app/PendingIntent;
    move-object v15, v13

    .line 1181
    .local v15, "sanitized":Landroid/app/PendingIntent;
    const/4 v12, 0x0

    .line 1182
    .local v12, "isSanitizeRequired":Z
    if-nez v13, :cond_5

    .line 1183
    const/4 v12, 0x1

    .line 1194
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_2

    .line 1195
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "----- sanitizePendingIntent : isSanitizeRequired - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_2
    if-eqz v12, :cond_3

    .line 1198
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v10

    .line 1200
    .local v10, "creatorPkg":Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v3, "in":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1204
    const/4 v2, 0x0

    .line 1203
    move/from16 v0, p2

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    .line 1207
    .local v14, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_9

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 1208
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 1210
    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1209
    const/4 v2, 0x0

    .line 1210
    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    .line 1209
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1219
    :goto_2
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    .line 1221
    .end local v3    # "in":Landroid/content/Intent;
    .end local v10    # "creatorPkg":Ljava/lang/String;
    .end local v14    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_4

    .line 1222
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "----- sanitizePendingIntent : sanitized - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_4
    return-object v15

    .line 1185
    :cond_5
    invoke-virtual {v13}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 1186
    .local v11, "innerIntent":Landroid/content/Intent;
    if-eqz v11, :cond_6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1187
    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v1, :cond_7

    .line 1188
    const-string/jumbo v1, "StatusBar"

    .line 1189
    const-string/jumbo v2, "----- sanitizePendingIntent : innerIntent null or filterEquals -----"

    .line 1188
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_7
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1198
    .end local v11    # "innerIntent":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "creatorPkg":Ljava/lang/String;
    goto/16 :goto_1

    .line 1212
    .restart local v3    # "in":Landroid/content/Intent;
    .restart local v14    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_9
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v6, "home":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1214
    const/high16 v1, 0x10000000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 1217
    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1216
    const/4 v5, 0x0

    .line 1217
    const/high16 v7, 0x8000000

    const/4 v8, 0x0

    .line 1216
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v15

    goto :goto_2
.end method

.method protected sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1925
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1927
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1924
    :cond_0
    :goto_0
    return-void

    .line 1928
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4036
    return-void
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setBouncerShowing(Z)V
    .locals 0
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 3938
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    .line 3937
    return-void
.end method

.method protected abstract setHeadsUpUser(I)V
.end method

.method public setIndicatorBgColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 4074
    return-void
.end method

.method public setKnoxDesktopTaskBar(ZZ)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "hasNaviBar"    # Z

    .prologue
    .line 4016
    return-void
.end method

.method protected setLockScreenAllowRemoteInput(Z)V
    .locals 0
    .param p1, "allowLockscreenRemoteInput"    # Z

    .prologue
    .line 3540
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllowLockscreenRemoteInput:Z

    .line 3539
    return-void
.end method

.method public setLockscreenPublicMode(Z)V
    .locals 0
    .param p1, "publicMode"    # Z

    .prologue
    .line 2027
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 2026
    return-void
.end method

.method public setNavigationBarIconColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 4057
    return-void
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "position"    # I

    .prologue
    .line 4051
    return-void
.end method

.method protected setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1330
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setNotificationsShown([Ljava/lang/String;)V

    .line 1329
    return-void
.end method

.method protected setNotificationsShown([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 1335
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :goto_0
    return-void

    .line 1336
    :catch_0
    move-exception v0

    .line 1337
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "failed setNotificationsShown: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setShowActionBg(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 794
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 795
    .local v0, "builderBG":Landroid/app/Notification$Builder;
    invoke-static {p1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowActionBg(Z)V

    .line 793
    return-void
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 3536
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    .line 3535
    return-void
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 3529
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3530
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mZenMode:I

    .line 3531
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 3528
    return-void
.end method

.method public shouldBlockStatusBar()Z
    .locals 2

    .prologue
    .line 4254
    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 4255
    .local v0, "keyguardViewMediator":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->shouldBlockStatusBar()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldHideNotifications(I)Z
    .locals 2
    .param p1, "userid"    # I

    .prologue
    const/4 v0, 0x0

    .line 2113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSecLockscreenPublicMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2115
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAllowsNotificationsInPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2113
    :cond_0
    :goto_0
    return v0

    .line 2115
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldHideNotifications(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSecLockscreenPublicMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2126
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2124
    :cond_0
    return v0
.end method

.method protected shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 3845
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method protected shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z
    .locals 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3851
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceInGearVrDocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3852
    return v4

    .line 3856
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceInVrMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3857
    :cond_1
    return v4

    .line 3861
    :cond_2
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 3862
    return v4

    .line 3866
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3867
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOutForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v2

    .line 3866
    if-eqz v2, :cond_5

    .line 3869
    :cond_4
    return v4

    .line 3872
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3873
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3874
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    .line 3872
    if-eqz v2, :cond_9

    .line 3875
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isInputRestricted()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x0

    .line 3877
    .local v1, "inUse":Z
    :goto_0
    if-eqz v1, :cond_7

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v2}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    const/4 v1, 0x0

    .line 3882
    :goto_1
    if-nez v1, :cond_b

    .line 3886
    return v4

    .line 3875
    .end local v1    # "inUse":Z
    :cond_8
    const/4 v1, 0x1

    .restart local v1    # "inUse":Z
    goto :goto_0

    .line 3872
    .end local v1    # "inUse":Z
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "inUse":Z
    goto :goto_0

    .line 3877
    :cond_a
    const/4 v1, 0x1

    goto :goto_1

    .line 3878
    :catch_0
    move-exception v0

    .line 3879
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "failed to query dream manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3894
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isAppCoverShowing()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoverViewShowing()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3896
    :cond_c
    return v4

    .line 3899
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressScreenOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3901
    return v4

    .line 3904
    :cond_e
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasJustLaunchedFullScreenIntent()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3906
    return v4

    .line 3909
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3911
    return v4

    .line 3914
    :cond_10
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_11

    .line 3916
    return v4

    .line 3919
    :cond_11
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_13

    .line 3920
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3922
    return v4

    .line 3924
    :cond_12
    return v5

    .line 3928
    :cond_13
    return v5
.end method

.method public shouldShowOnIndicator(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3523
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    .line 3524
    .local v0, "vis":I
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x0

    .line 3514
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 3516
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showAssistDisclosure()V
    .locals 1

    .prologue
    .line 4002
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    .line 4003
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    .line 4001
    :cond_0
    return-void
.end method

.method public showNavigationBarInFullscreen()V
    .locals 0

    .prologue
    .line 4063
    return-void
.end method

.method public showRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1855
    const/16 v0, 0x3fb

    .line 1856
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1857
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1854
    return-void

    :cond_0
    move v3, v2

    .line 1857
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected showRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1969
    const-string/jumbo v0, "recentapps"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1970
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->showRecents(ZZ)V

    .line 1967
    :cond_0
    return-void
.end method

.method protected showRecentsNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showNextAffiliatedTask()V

    .line 2006
    :cond_0
    return-void
.end method

.method protected showRecentsPreviousAffiliatedTask()V
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 2014
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showPrevAffiliatedTask()V

    .line 2012
    :cond_0
    return-void
.end method

.method public showServiceBox(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isExternal"    # Z

    .prologue
    .line 4086
    return-void
.end method

.method public start()V
    .locals 28

    .prologue
    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 899
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 902
    const-string/jumbo v3, "device_policy"

    .line 901
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 904
    new-instance v2, Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 906
    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 910
    const-string/jumbo v2, "dreams"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 909
    invoke-static {v2}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAodManager:Lcom/samsung/android/aod/AODManager;

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 918
    const-string/jumbo v3, "device_provisioned"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 919
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 918
    const/4 v11, 0x1

    .line 917
    invoke-virtual {v2, v3, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 921
    const-string/jumbo v3, "zen_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 922
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 921
    const/4 v11, 0x0

    .line 920
    invoke-virtual {v2, v3, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 924
    const-string/jumbo v3, "lock_screen_show_notifications"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 925
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 924
    const/4 v11, 0x0

    .line 926
    const/4 v12, -0x1

    .line 923
    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 927
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    if-eqz v2, :cond_0

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 929
    const-string/jumbo v3, "lock_screen_allow_remote_input"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 931
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 930
    const/4 v11, 0x0

    .line 932
    const/4 v12, -0x1

    .line 928
    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 935
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 936
    const-string/jumbo v3, "lock_screen_allow_private_notifications"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 938
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 937
    const/4 v11, 0x1

    .line 939
    const/4 v12, -0x1

    .line 935
    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 941
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v2, :cond_1

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 943
    const-string/jumbo v3, "lockscreen_minimizing_notification"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 944
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationIconsOnlySettingObserver:Landroid/database/ContentObserver;

    .line 943
    const/4 v11, 0x0

    .line 945
    const/4 v12, -0x1

    .line 942
    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 949
    :cond_1
    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 948
    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 951
    const-class v2, Lcom/android/systemui/recents/Recents;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    .line 954
    .local v18, "currentConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 956
    move-object/from16 v0, v18

    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    .line 957
    move-object/from16 v0, v18

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDensity:I

    .line 959
    move-object/from16 v0, v18

    iget v2, v0, Landroid/content/res/Configuration;->FlipFont:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFlipfont:I

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 964
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitorCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KnoxStateMonitor;->registerCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    .line 971
    new-instance v2, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 973
    const/16 v2, 0x9

    new-array v6, v2, [I

    .line 974
    .local v6, "switches":[I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 975
    .local v7, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .local v4, "iconSlots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v5, "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 978
    .local v8, "fullscreenStackBounds":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 980
    .local v9, "dockedStackBounds":Landroid/graphics/Rect;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 987
    :goto_0
    new-instance v2, Lcom/android/systemui/NotificationBlockManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/NotificationBlockManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlockManager:Lcom/android/systemui/NotificationBlockManager;

    .line 989
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 992
    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x6

    aget v3, v6, v3

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(IIZ)V

    .line 993
    const/4 v2, 0x1

    aget v11, v6, v2

    const/4 v2, 0x7

    aget v12, v6, v2

    const/16 v2, 0x8

    aget v13, v6, v2

    const/4 v14, -0x1

    move-object/from16 v10, p0

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 995
    const/4 v2, 0x2

    aget v2, v6, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 997
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    const/4 v3, 0x3

    aget v10, v6, v3

    const/4 v3, 0x4

    aget v11, v6, v3

    const/4 v3, 0x5

    aget v3, v6, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v11, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 1000
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1001
    .local v17, "N":I
    const/16 v26, 0x0

    .line 1002
    .local v26, "viewIndex":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 1003
    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 1002
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 995
    .end local v17    # "N":I
    .end local v23    # "i":I
    .end local v26    # "viewIndex":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 997
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 1008
    .restart local v17    # "N":I
    .restart local v23    # "i":I
    .restart local v26    # "viewIndex":I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 1009
    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const/4 v11, -0x1

    .line 1008
    invoke-virtual {v2, v3, v10, v11}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1027
    :goto_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1028
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 1030
    new-instance v21, Landroid/content/IntentFilter;

    invoke-direct/range {v21 .. v21}, Landroid/content/IntentFilter;-><init>()V

    .line 1031
    .local v21, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1032
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1033
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1037
    new-instance v25, Landroid/content/IntentFilter;

    invoke-direct/range {v25 .. v25}, Landroid/content/IntentFilter;-><init>()V

    .line 1038
    .local v25, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1039
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1040
    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1041
    const-string/jumbo v2, "package"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1045
    new-instance v24, Landroid/content/IntentFilter;

    invoke-direct/range {v24 .. v24}, Landroid/content/IntentFilter;-><init>()V

    .line 1046
    .local v24, "internalFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1047
    const-string/jumbo v2, "com.android.systemui.statusbar.banner_action_cancel"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1048
    const-string/jumbo v2, "com.android.systemui.statusbar.banner_action_setup"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v10, "com.android.systemui.permission.SELF"

    const/4 v11, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1051
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1053
    .local v13, "allUsersFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 1052
    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1055
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1054
    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1056
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    .line 1058
    const-string/jumbo v2, "vrmanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v27

    .line 1060
    .local v27, "vrManager":Landroid/service/vr/IVrManager;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1067
    :goto_5
    const-string/jumbo v2, "vr"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerService;

    move-result-object v22

    .line 1068
    .local v22, "gearVrManager":Lcom/samsung/android/vr/IGearVrManagerService;
    if-eqz v22, :cond_5

    .line 1070
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lcom/samsung/android/vr/IGearVrManagerService;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 897
    :goto_6
    return-void

    .line 1011
    .end local v13    # "allUsersFilter":Landroid/content/IntentFilter;
    .end local v21    # "filter":Landroid/content/IntentFilter;
    .end local v22    # "gearVrManager":Lcom/samsung/android/vr/IGearVrManagerService;
    .end local v24    # "internalFilter":Landroid/content/IntentFilter;
    .end local v25    # "packageFilter":Landroid/content/IntentFilter;
    .end local v27    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_0
    move-exception v19

    .line 1012
    .local v19, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "Unable to register notification listener"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1061
    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v13    # "allUsersFilter":Landroid/content/IntentFilter;
    .restart local v21    # "filter":Landroid/content/IntentFilter;
    .restart local v24    # "internalFilter":Landroid/content/IntentFilter;
    .restart local v25    # "packageFilter":Landroid/content/IntentFilter;
    .restart local v27    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_1
    move-exception v19

    .line 1062
    .restart local v19    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1071
    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v22    # "gearVrManager":Lcom/samsung/android/vr/IGearVrManagerService;
    :catch_2
    move-exception v19

    .line 1072
    .restart local v19    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1075
    .end local v19    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "Failed to get GearVrManager."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 982
    .end local v13    # "allUsersFilter":Landroid/content/IntentFilter;
    .end local v17    # "N":I
    .end local v21    # "filter":Landroid/content/IntentFilter;
    .end local v22    # "gearVrManager":Lcom/samsung/android/vr/IGearVrManagerService;
    .end local v23    # "i":I
    .end local v24    # "internalFilter":Landroid/content/IntentFilter;
    .end local v25    # "packageFilter":Landroid/content/IntentFilter;
    .end local v26    # "viewIndex":I
    .end local v27    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_3
    move-exception v20

    .local v20, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method protected startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .prologue
    .line 1508
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1509
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1510
    const-string/jumbo v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1511
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 1507
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 4009
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_0

    .line 4010
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 4008
    :cond_0
    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2712
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2714
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 2715
    .local v1, "keyguardShowing":Z
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2716
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2717
    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 2716
    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    .line 2718
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$20;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$20;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZZLandroid/app/PendingIntent;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 2711
    return-void

    .line 2715
    :cond_1
    const/4 v0, 0x0

    .local v0, "afterKeyguardGone":Z
    goto :goto_0
.end method

.method protected startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "intendSender"    # Landroid/content/IntentSender;
    .param p3, "notificationKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3044
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4, v5, v5, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v3

    .line 3046
    .local v3, "newIntent":Landroid/content/Intent;
    if-nez v3, :cond_0

    .line 3047
    return v6

    .line 3049
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 3050
    const-string/jumbo v4, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    .line 3049
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3051
    .local v0, "callBackIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3052
    const-string/jumbo v4, "android.intent.extra.INDEX"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3053
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3056
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 3059
    const/high16 v5, 0x54000000

    .line 3055
    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3063
    .local v1, "callBackPendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v4, "android.intent.extra.INTENT"

    .line 3064
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    .line 3062
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3066
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3070
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 3067
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected toggleKeyboardShortcuts(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->toggle(Landroid/content/Context;I)V

    .line 1992
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .prologue
    .line 1901
    const/16 v0, 0x402

    .line 1902
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1903
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1900
    return-void
.end method

.method public toggleNotificationPanel()V
    .locals 0

    .prologue
    .line 4068
    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    .prologue
    .line 1870
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecents()V

    .line 1869
    return-void
.end method

.method protected toggleRecents()V
    .locals 2

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    invoke-interface {v0, v1}, Lcom/android/systemui/RecentsComponent;->toggleRecents(Landroid/view/Display;)V

    .line 1980
    :cond_0
    return-void
.end method

.method public toggleSplitScreen(Z)V
    .locals 1
    .param p1, "fromKey"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1875
    invoke-virtual {p0, v0, v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleSplitScreenMode(IIZ)V

    .line 1874
    return-void
.end method

.method protected abstract toggleSplitScreenMode(IIZ)V
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 4097
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "updateCoverState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    return-void
.end method

.method protected abstract updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
.end method

.method protected abstract updateKnoxCustomStatusBarText()V
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 18
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 3589
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 3590
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v13}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    .line 3591
    .local v12, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v12, :cond_0

    .line 3592
    return-void

    .line 3594
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3598
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    .line 3599
    .local v14, "n":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 3603
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 3608
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v16

    .line 3609
    .local v16, "shouldPeek":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/systemui/statusbar/BaseStatusBar;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v9

    .line 3616
    .local v9, "alertAgain":Z
    iget-object v15, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3617
    .local v15, "oldNotification":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p1

    iput-object v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v3, v12, v15}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 3626
    const/16 v17, 0x0

    .line 3627
    .local v17, "updateSuccessful":Z
    if-eqz v10, :cond_2

    .line 3630
    :try_start_1
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_1

    .line 3632
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 3633
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 3634
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3635
    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 3636
    iget v6, v14, Landroid/app/Notification;->iconLevel:I

    .line 3637
    iget v7, v14, Landroid/app/Notification;->number:I

    .line 3638
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v8, v14}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v8

    .line 3632
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 3639
    .local v2, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v14}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 3640
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t update icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3642
    return-void

    .line 3604
    .end local v2    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v9    # "alertAgain":Z
    .end local v15    # "oldNotification":Landroid/service/notification/StatusBarNotification;
    .end local v16    # "shouldPeek":Z
    .end local v17    # "updateSuccessful":Z
    :catch_0
    move-exception v11

    .line 3605
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "StatusBar"

    const-string/jumbo v4, "Unable to get notification remote views"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3606
    const/4 v10, 0x0

    .local v10, "applyInPlace":Z
    goto :goto_0

    .line 3645
    .end local v10    # "applyInPlace":Z
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .restart local v9    # "alertAgain":Z
    .restart local v15    # "oldNotification":Landroid/service/notification/StatusBarNotification;
    .restart local v16    # "shouldPeek":Z
    .restart local v17    # "updateSuccessful":Z
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3646
    const/16 v17, 0x1

    .line 3654
    :cond_2
    :goto_1
    if-nez v17, :cond_3

    .line 3656
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 3657
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 3658
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3659
    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 3660
    iget v6, v14, Landroid/app/Notification;->iconLevel:I

    .line 3661
    iget v7, v14, Landroid/app/Notification;->number:I

    .line 3662
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v8, v14}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v8

    .line 3656
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 3663
    .restart local v2    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v14}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 3664
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 3665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t update remote views for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 3670
    .end local v2    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v12, v1, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V

    .line 3671
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 3675
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindVetoButtonClickListener(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    .line 3677
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v4, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->snapViewIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 3689
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    .line 3691
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOutlineRect(Landroid/graphics/RectF;)V

    .line 3586
    return-void

    .line 3648
    :catch_1
    move-exception v11

    .line 3650
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t reapply views for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3651
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3650
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method protected updateNotificationIconsOnlyState()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 462
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 463
    const-string/jumbo v4, "lockscreen_minimizing_notification"

    .line 464
    const/4 v5, -0x2

    .line 462
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 466
    .local v0, "on":I
    if-ne v0, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->inflateNotificationPreviewIconSlotView()V

    .line 461
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 466
    goto :goto_0
.end method

.method protected abstract updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected abstract updateNotifications()V
.end method

.method protected updatePublicContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 8
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const v7, 0x1020016

    .line 3737
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 3738
    .local v3, "publicContentView":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    .line 3739
    .local v1, "inflatedView":Landroid/view/View;
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 3741
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->adminAllowsUnredactedNotifications(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    .line 3742
    .local v0, "disabledByPolicy":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 3743
    const v5, 0x104014e

    .line 3742
    :goto_1
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3745
    .local v2, "notificationHiddenText":Ljava/lang/String;
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3746
    .local v4, "titleView":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 3747
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3736
    .end local v0    # "disabledByPolicy":Z
    .end local v2    # "notificationHiddenText":Ljava/lang/String;
    .end local v4    # "titleView":Landroid/widget/TextView;
    :cond_0
    :goto_2
    return-void

    .line 3741
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "disabledByPolicy":Z
    goto :goto_0

    .line 3744
    :cond_2
    const v5, 0x104014d

    goto :goto_1

    .line 3748
    .restart local v2    # "notificationHiddenText":Ljava/lang/String;
    .restart local v4    # "titleView":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v3, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3749
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 3750
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 3749
    invoke-virtual {v3, v5, v1, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 3751
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_2
.end method

.method protected abstract updateQuickSettingPanel(Z)V
.end method

.method protected abstract updateQuickSettingPanelVisibility()V
.end method

.method protected updateRowStates()V
    .locals 32

    .prologue
    .line 3229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->removeAllViews()V

    .line 3232
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mHasBlockableNotification:Z

    .line 3234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    .line 3235
    .local v4, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3237
    .local v3, "N":I
    const/16 v25, 0x0

    .line 3238
    .local v25, "visibleNotifications":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v14

    .line 3240
    .local v14, "onKeyguard":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isShadeLockedState()Z

    move-result v15

    .line 3246
    .local v15, "onShadeLocked":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v13

    .line 3250
    .local v13, "onCoveredState":Z
    const/4 v11, 0x0

    .line 3251
    .local v11, "maxNotifications":I
    if-eqz v14, :cond_0

    .line 3252
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v11

    .line 3258
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    .line 3260
    sget-boolean v27, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v27, :cond_3

    .line 3261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v27

    .line 3260
    if-eqz v27, :cond_3

    const/16 v20, 0x0

    .line 3263
    .local v20, "showOnKeyguardByLockType":Z
    :goto_0
    const/16 v24, 0x0

    .line 3264
    .local v24, "visibleKeyguardNotiNum":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 3268
    .local v22, "sortedSbnKeysForAod":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 3272
    .local v16, "previewArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/preview/NotificationPreview;>;"
    const/4 v8, 0x0

    .line 3275
    .local v8, "hasVisibleNotificationOnKeyguard":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v3, :cond_2d

    .line 3276
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 3277
    .local v7, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v27, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    .line 3280
    .local v5, "childNotification":Z
    const/16 v17, 0x0

    .line 3282
    .local v17, "sanitize":Z
    iget v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x8

    if-eqz v27, :cond_5

    const/16 v17, 0x1

    .line 3286
    :goto_2
    if-nez v14, :cond_1

    if-eqz v17, :cond_6

    .line 3287
    :cond_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    .line 3294
    :goto_3
    if-eqz v13, :cond_7

    .line 3295
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnCoveredState(Z)V

    .line 3302
    :goto_4
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    .line 3303
    .local v12, "n":Landroid/app/Notification;
    iget v0, v12, Landroid/app/Notification;->semFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x1

    if-eqz v27, :cond_8

    .line 3304
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 3275
    :cond_2
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3260
    .end local v5    # "childNotification":Z
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v8    # "hasVisibleNotificationOnKeyguard":Z
    .end local v9    # "i":I
    .end local v12    # "n":Landroid/app/Notification;
    .end local v16    # "previewArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/preview/NotificationPreview;>;"
    .end local v17    # "sanitize":Z
    .end local v20    # "showOnKeyguardByLockType":Z
    .end local v22    # "sortedSbnKeysForAod":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "visibleKeyguardNotiNum":I
    :cond_3
    const/16 v20, 0x1

    .restart local v20    # "showOnKeyguardByLockType":Z
    goto :goto_0

    .line 3258
    .end local v20    # "showOnKeyguardByLockType":Z
    :cond_4
    const/16 v20, 0x0

    .restart local v20    # "showOnKeyguardByLockType":Z
    goto :goto_0

    .line 3282
    .restart local v5    # "childNotification":Z
    .restart local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v8    # "hasVisibleNotificationOnKeyguard":Z
    .restart local v9    # "i":I
    .restart local v16    # "previewArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/preview/NotificationPreview;>;"
    .restart local v17    # "sanitize":Z
    .restart local v22    # "sortedSbnKeysForAod":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "visibleKeyguardNotiNum":I
    :cond_5
    const/16 v17, 0x0

    goto :goto_2

    .line 3289
    :cond_6
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    goto :goto_3

    .line 3297
    :cond_7
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnCoveredState(Z)V

    goto :goto_4

    .line 3310
    .restart local v12    # "n":Landroid/app/Notification;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/keyguard/KnoxStateMonitor;->isNotificationRowHide()Z

    move-result v10

    .line 3311
    .local v10, "isSDKeyguardOn":Z
    if-eqz v10, :cond_9

    .line 3312
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    goto :goto_5

    .line 3317
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v27, v0

    .line 3318
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    .line 3317
    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 3318
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v27

    if-eqz v27, :cond_14

    const/16 v23, 0x0

    .line 3319
    .local v23, "suppressedSummary":Z
    :goto_6
    if-eqz v5, :cond_17

    .line 3320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v27, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v27

    if-nez v27, :cond_16

    const/4 v6, 0x1

    .line 3322
    .local v6, "childWithVisibleSummary":Z
    :goto_7
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 3323
    move/from16 v19, v20

    .line 3325
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v27, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v27

    and-int/lit8 v27, v27, 0x2

    if-nez v27, :cond_19

    const/16 v21, 0x1

    .line 3329
    .local v21, "showOnShadeLocked":Z
    :goto_9
    if-nez v8, :cond_b

    .line 3330
    if-eqz v19, :cond_a

    if-eqz v5, :cond_1a

    :cond_a
    const/4 v8, 0x0

    .line 3333
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMusicServiceBoxOn()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 3334
    if-eqz v8, :cond_1d

    .line 3335
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1c

    const/4 v8, 0x0

    .line 3339
    :cond_b
    :goto_b
    if-nez v23, :cond_10

    .line 3340
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSecLockscreenPublicMode()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 3341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v27, v0

    if-eqz v27, :cond_10

    .line 3342
    :cond_c
    if-eqz v14, :cond_d

    if-eqz v6, :cond_1e

    .line 3345
    :cond_d
    :goto_c
    if-nez v14, :cond_e

    if-eqz v15, :cond_f

    :cond_e
    if-eqz v21, :cond_10

    .line 3346
    :cond_f
    if-eqz v14, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMusicServiceBoxOn()Z

    move-result v27

    if-eqz v27, :cond_22

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 3339
    if-eqz v27, :cond_22

    .line 3349
    :cond_10
    sget-boolean v27, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v27, :cond_1f

    .line 3350
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    move/from16 v27, v0

    .line 3349
    if-eqz v27, :cond_1f

    if-eqz v19, :cond_1f

    .line 3355
    :goto_d
    if-eqz v14, :cond_11

    if-eqz v19, :cond_11

    if-eqz v5, :cond_20

    .line 3419
    :cond_11
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAodManager:Lcom/samsung/android/aod/AODManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_12

    if-eqz v5, :cond_2b

    .line 3427
    :cond_12
    :goto_f
    sget-boolean v27, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v27, :cond_2

    .line 3428
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    if-eqz v19, :cond_2

    if-nez v5, :cond_2

    .line 3429
    if-nez v23, :cond_2

    .line 3432
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMusicServiceBoxOn()Z

    move-result v27

    if-eqz v27, :cond_13

    .line 3433
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 3432
    if-nez v27, :cond_2

    .line 3438
    :cond_13
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getNotificationPreview()Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 3318
    .end local v6    # "childWithVisibleSummary":Z
    .end local v21    # "showOnShadeLocked":Z
    .end local v23    # "suppressedSummary":Z
    :cond_14
    const/16 v23, 0x1

    .restart local v23    # "suppressedSummary":Z
    goto/16 :goto_6

    .line 3317
    .end local v23    # "suppressedSummary":Z
    :cond_15
    const/16 v23, 0x0

    .restart local v23    # "suppressedSummary":Z
    goto/16 :goto_6

    .line 3320
    :cond_16
    const/4 v6, 0x0

    .restart local v6    # "childWithVisibleSummary":Z
    goto/16 :goto_7

    .line 3319
    .end local v6    # "childWithVisibleSummary":Z
    :cond_17
    const/4 v6, 0x0

    .restart local v6    # "childWithVisibleSummary":Z
    goto/16 :goto_7

    .line 3322
    :cond_18
    const/16 v19, 0x0

    .local v19, "showOnKeyguard":Z
    goto/16 :goto_8

    .line 3325
    .end local v19    # "showOnKeyguard":Z
    :cond_19
    const/16 v21, 0x0

    .restart local v21    # "showOnShadeLocked":Z
    goto/16 :goto_9

    .line 3331
    :cond_1a
    if-eqz v23, :cond_1b

    const/4 v8, 0x0

    goto/16 :goto_a

    :cond_1b
    const/4 v8, 0x1

    goto/16 :goto_a

    .line 3335
    :cond_1c
    const/4 v8, 0x1

    goto/16 :goto_b

    .line 3334
    :cond_1d
    const/4 v8, 0x0

    goto/16 :goto_b

    .line 3343
    :cond_1e
    move/from16 v0, v25

    if-ge v0, v11, :cond_10

    if-eqz v19, :cond_10

    goto/16 :goto_c

    .line 3353
    :cond_1f
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    goto :goto_d

    .line 3355
    :cond_20
    if-nez v23, :cond_11

    .line 3357
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMusicServiceBoxOn()Z

    move-result v27

    if-eqz v27, :cond_21

    .line 3358
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 3357
    if-nez v27, :cond_2

    .line 3362
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->addNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 3364
    sget-boolean v27, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v27, :cond_11

    .line 3365
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v27

    if-eqz v27, :cond_11

    .line 3366
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_11

    .line 3367
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const v28, 0x7f130050

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTag(I)Ljava/lang/Object;

    move-result-object v27

    const-string/jumbo v28, "onGoing"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_11

    .line 3368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    .line 3369
    const-string/jumbo v28, "com.android.systemui.statusbar.policy.notification.lockscreen"

    .line 3370
    const-string/jumbo v29, "NO06"

    .line 3371
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v30

    .line 3372
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 3368
    invoke-static/range {v27 .. v31}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3373
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const-string/jumbo v28, "onGoing"

    const v29, 0x7f130050

    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_e

    .line 3378
    :cond_22
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_27

    const/16 v26, 0x1

    .line 3379
    .local v26, "wasGone":Z
    :goto_10
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 3382
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_23

    .line 3383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v27

    .line 3382
    if-nez v27, :cond_24

    .line 3384
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v27, v0

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_28

    .line 3385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteCoverWallpaper()Z

    move-result v27

    .line 3382
    if-eqz v27, :cond_28

    .line 3386
    :cond_24
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForWhiteLockScreen(Z)V

    .line 3392
    :goto_11
    sget-boolean v27, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v27, :cond_25

    .line 3393
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v27

    if-eqz v27, :cond_25

    .line 3394
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_25

    .line 3395
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const v28, 0x7f130050

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTag(I)Ljava/lang/Object;

    move-result-object v27

    const-string/jumbo v28, "onGoing"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_25

    .line 3396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    .line 3397
    const-string/jumbo v28, "com.android.systemui.statusbar.policy.notification.lockscreen"

    .line 3398
    const-string/jumbo v29, "NO06"

    .line 3399
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v30

    .line 3400
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 3396
    invoke-static/range {v27 .. v31}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3401
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const-string/jumbo v28, "onGoing"

    const v29, 0x7f130050

    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(ILjava/lang/Object;)V

    .line 3405
    :cond_25
    if-nez v5, :cond_11

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v27

    if-nez v27, :cond_11

    .line 3406
    if-eqz v26, :cond_26

    .line 3408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    .line 3409
    if-eqz v19, :cond_29

    const/16 v27, 0x0

    .line 3408
    :goto_12
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 3411
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHasBlockableNotification:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2a

    .line 3414
    :goto_13
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_e

    .line 3378
    .end local v26    # "wasGone":Z
    :cond_27
    const/16 v26, 0x0

    .restart local v26    # "wasGone":Z
    goto/16 :goto_10

    .line 3388
    :cond_28
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForWhiteLockScreen(Z)V

    goto/16 :goto_11

    .line 3409
    :cond_29
    const/16 v27, 0x1

    goto :goto_12

    .line 3412
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlockManager:Lcom/android/systemui/NotificationBlockManager;

    move-object/from16 v27, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/NotificationBlockManager;->canBlock(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mHasBlockableNotification:Z

    goto :goto_13

    .line 3419
    .end local v26    # "wasGone":Z
    :cond_2b
    if-nez v23, :cond_12

    if-eqz v19, :cond_12

    .line 3420
    const/16 v27, 0x4

    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_2c

    .line 3421
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3423
    :cond_2c
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_f

    .line 3444
    .end local v5    # "childNotification":Z
    .end local v6    # "childWithVisibleSummary":Z
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v10    # "isSDKeyguardOn":Z
    .end local v12    # "n":Landroid/app/Notification;
    .end local v17    # "sanitize":Z
    .end local v21    # "showOnShadeLocked":Z
    .end local v23    # "suppressedSummary":Z
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAodManager:Lcom/samsung/android/aod/AODManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2e

    .line 3445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAodManager:Lcom/samsung/android/aod/AODManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/aod/AODManager;->updateNotificationKeys(ILjava/util/List;)V

    .line 3449
    :cond_2e
    if-eqz v14, :cond_36

    .line 3450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v27

    if-lez v27, :cond_36

    .line 3451
    const/16 v18, 0x1

    .line 3452
    .local v18, "shouldShowOverflowContainer":Z
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateOverflowContainerVisibility(Z)V

    .line 3455
    if-eqz v18, :cond_31

    .line 3456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2f

    .line 3457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v27

    .line 3456
    if-nez v27, :cond_30

    .line 3458
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v27, v0

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_37

    .line 3459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteCoverWallpaper()Z

    move-result v27

    .line 3456
    if-eqz v27, :cond_37

    .line 3460
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->updateBackgroundForWhiteLockScreen(Z)V

    .line 3468
    :cond_31
    :goto_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNeedToMoreCueAnim:Z

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v18

    if-eq v0, v1, :cond_32

    .line 3469
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNeedToMoreCueAnim:Z

    .line 3472
    :cond_32
    sget-boolean v27, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v27, :cond_33

    .line 3473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPreviewController:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-object/from16 v27, v0

    if-eqz v27, :cond_33

    .line 3474
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNotificationIconsOnlyOn:Z

    move/from16 v27, v0

    if-eqz v27, :cond_33

    if-eqz v14, :cond_33

    .line 3475
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->changeToGoneState()V

    .line 3476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPreviewController:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->updateNotificationPreviewList(Ljava/util/ArrayList;)V

    .line 3482
    :cond_33
    if-lez v25, :cond_38

    const/16 v27, 0x1

    :goto_16
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->hasVisibleNotification:Z

    .line 3483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBottomBarView:Lcom/android/systemui/statusbar/NotificationBottomBarView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    invoke-virtual/range {v27 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x2

    invoke-virtual/range {v27 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v28, v0

    .line 3490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x3

    .line 3489
    invoke-virtual/range {v27 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 3493
    if-eqz v14, :cond_35

    .line 3494
    sget-boolean v27, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v27, :cond_34

    .line 3495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v27, v0

    if-eqz v27, :cond_34

    .line 3496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v28, v0

    if-eqz v8, :cond_39

    const/16 v27, 0x0

    :goto_17
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setExpandState(Z)V

    .line 3500
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHasVisibleNotificationOnKeyguard:Z

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v0, v8, :cond_35

    .line 3501
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHasVisibleNotificationOnKeyguard:Z

    .line 3228
    :cond_35
    return-void

    .line 3449
    .end local v18    # "shouldShowOverflowContainer":Z
    :cond_36
    const/16 v18, 0x0

    .restart local v18    # "shouldShowOverflowContainer":Z
    goto/16 :goto_14

    .line 3462
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->updateBackgroundForWhiteLockScreen(Z)V

    goto/16 :goto_15

    .line 3482
    :cond_38
    const/16 v27, 0x0

    goto/16 :goto_16

    .line 3496
    :cond_39
    const/16 v27, 0x1

    goto :goto_17
.end method

.method protected abstract updateStatusBarHidden()V
.end method

.method protected abstract updateStatusBarIcons()V
.end method

.method protected updateVisibleToUser()V
    .locals 2

    .prologue
    .line 3092
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 3093
    .local v0, "oldVisibleToUser":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceInteractive:Z

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 3095
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_0

    .line 3096
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    .line 3091
    :cond_0
    return-void

    .line 3093
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userAllowsNotificationsInPublic(I)Z
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 2052
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 2053
    const/4 v1, 0x1

    return v1

    .line 2056
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    .line 2058
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2059
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 2057
    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2060
    .local v0, "allowed":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2061
    return v0

    .line 2057
    .end local v0    # "allowed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "allowed":Z
    goto :goto_0

    .line 2064
    .end local v0    # "allowed":Z
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 2072
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 2073
    const/4 v3, 0x1

    return v3

    .line 2080
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KnoxStateMonitor;->isPersona(I)Z

    move-result v3

    .line 2079
    if-eqz v3, :cond_1

    .line 2081
    const/4 p1, 0x0

    .line 2085
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_4

    .line 2087
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2088
    const-string/jumbo v4, "lock_screen_allow_private_notifications"

    .line 2086
    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 2089
    .local v2, "allowedByUser":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->adminAllowsUnredactedNotifications(I)Z

    move-result v1

    .line 2090
    .local v1, "allowedByDpm":Z
    if-eqz v2, :cond_3

    move v0, v1

    .line 2091
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2092
    return v0

    .line 2086
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "allowedByUser":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "allowedByUser":Z
    goto :goto_0

    .line 2090
    .restart local v1    # "allowedByDpm":Z
    :cond_3
    const/4 v0, 0x0

    .local v0, "allowed":Z
    goto :goto_1

    .line 2095
    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "allowedByUser":Z
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    return v3
.end method

.method public userSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 1313
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 1312
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 3082
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 3083
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    .line 3084
    if-nez p1, :cond_0

    .line 3085
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 3088
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateVisibleToUser()V

    .line 3081
    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2221
    return-void
.end method
