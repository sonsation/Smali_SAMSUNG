.class public Lcom/android/server/desktopmode/DesktopModeService;
.super Lcom/samsung/android/desktopmode/IDesktopMode$Stub;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DesktopModeService$1;,
        Lcom/android/server/desktopmode/DesktopModeService$2;,
        Lcom/android/server/desktopmode/DesktopModeService$3;,
        Lcom/android/server/desktopmode/DesktopModeService$4;,
        Lcom/android/server/desktopmode/DesktopModeService$5;,
        Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;,
        Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;,
        Lcom/android/server/desktopmode/DesktopModeService$Enabler;,
        Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;,
        Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFICATION_PRESSED:Ljava/lang/String; = "com.android.server.desktopmode.action.NOTIFICATION_PRESSED"

.field private static final ARG_DISMISSED_BY_TIMEOUT:I = -0x1

.field private static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/ccic_dock"

.field private static final DEBUG:Z

.field private static final DELAY_SET_DEFAULT_DISPLAY_ON:I = 0x3e8

.field private static final DELAY_START_LOADING_SCREEN:I = 0x1f4

.field private static final DELAY_START_LOADING_SCREEN_ANIMATION:I = 0x12c

.field private static final DELAY_STOP_LOADING_SCREEN:I = 0xbb8

.field private static final DELAY_UPDATE_STATE:I = 0xbb8

.field private static final DIALOG_TYPE_INSTALL_LAUNCHER:I = 0x2

.field private static final DIALOG_TYPE_LAUNCH_CONFIRMATION:I = 0x1

.field private static final DIALOG_TYPE_NONE:I = 0x0

.field private static final DIALOG_TYPE_PROMOTION:I = 0x3

.field private static final DISPLAYPORT_FILE_PATH:Ljava/lang/String; = "/sys/class/dp_sec/dex"

.field private static final DISPLAYPORT_STATE_RECONNECTING:I = 0x2

.field private static final DOCK_STATE_DEX_STATION:I = 0x6e

.field private static final DOCK_STATE_HDMI_ADAPTER:I = 0x6f

.field private static final DOCK_STATE_MULTIPORT_ADAPTER:I = 0x6d

.field private static final DOCK_STATE_NONE:I = 0x0

.field private static final EXTRA_DESKTOP_MODE_STATE:Ljava/lang/String; = "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

.field private static final EXTRA_DESKTOP_MODE_STATE_DISABLED:I = 0x2

.field private static final EXTRA_DESKTOP_MODE_STATE_ENABLED:I = 0x1

.field private static final EXTRA_DESKTOP_MODE_STATE_UPDATE:I = 0x0

.field private static final GALAXY_APPS:Ljava/lang/String; = "samsungapps://ProductDetail/"

.field private static final LAUNCHER_APPNAME:Ljava/lang/String; = "DesktopLauncher"

.field private static final LAUNCHER_CLSNAME:Ljava/lang/String; = "com.android.launcher3.Launcher"

.field private static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field public static final LAUNCH_POLICY_COMPATIBILITY:I = 0x0

.field public static final LAUNCH_POLICY_NOT_SUPPORTED_DECLARED_CATEGORY_HOME:I = 0x4

.field public static final LAUNCH_POLICY_NOT_SUPPORTED_DECLARED_TOUCHSCREEN:I = 0x3

.field public static final LAUNCH_POLICY_NOT_SUPPORTED_LISTED:I = 0x2

.field public static final LAUNCH_POLICY_SUPPORTED_LISTED:I = 0x1

.field public static final LAUNCH_POLICY_UNDEFINED:I = -0x1

.field private static final LOW_MEMORY_WARNING_THRESHOLD:J = 0x19000000L

.field public static final MODE_CHANGE_POLICY_KEEP_ALIVE:I = 0x1

.field public static final MODE_CHANGE_POLICY_KILL:I = 0x0

.field private static final MSG_BASE:I = 0x64

.field private static final MSG_ON_LOADING_SCREEN_SHOWN:I = 0x6a

.field private static final MSG_SET_DESKTOP_MODE_INNER:I = 0x65

.field private static final MSG_SHOW_DIALOG:I = 0x66

.field private static final MSG_SHOW_TOAST:I = 0x67

.field private static final MSG_START_LOADING_SCREEN:I = 0x68

.field private static final MSG_STOP_LOADING_SCREEN:I = 0x69

.field private static final MSG_UPDATE_TOUCHPAD_SCREEN:I = 0x6b

.field private static final PENDING_STATUS_ENTER:I = 0x1

.field private static final PENDING_STATUS_EXIT:I = 0x2

.field private static final PENDING_STATUS_NONE:I = 0x0

.field private static final SETTINGS_HDMI_DEFAULT:I = -0x1

.field private static final SETTINGS_HDMI_DESKTOP_MODE:I = 0x0

.field private static final SETTINGS_HDMI_MIRRORING_MODE:I = 0x1

.field private static final SETTINGS_KEY_DEVELOPER_MODE:Ljava/lang/String; = "developer"

.field private static final SETTINGS_KEY_FIRST_TIME_MIRRORING:Ljava/lang/String; = "1st_mirror"

.field private static final SETTINGS_KEY_FIRST_TIME_PROMOTION:Ljava/lang/String; = "1st_promo"

.field private static final SETTINGS_KEY_HDMI:Ljava/lang/String; = "hdmi"

.field private static final SETTINGS_KEY_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final SETTINGS_KEY_SCREEN_OFF_TIMEOUT_BACKUP:Ljava/lang/String; = "timeout_b"

.field private static final SETTINGS_KEY_VIRTUAL_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final SETTINGS_KEY_VIRTUAL_KEYBOARD_BACKUP:Ljava/lang/String; = "keyboard_b"

.field private static final SYSTEM_PROPERTIES_PREFIX:Ljava/lang/String; = "persist.service.dex."

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_LOADING_SCREEN:I = 0x3a98


# instance fields
.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/desktopmode/IDesktopModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedDisplay:Landroid/view/Display;

.field private mConnectedKeyboard:Landroid/view/InputDevice;

.field private mConnectedMouse:Landroid/view/InputDevice;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCustomDensity:I

.field private mCustomHeight:I

.field private mCustomWidth:I

.field private mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogType:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDockState:I

.field private mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

.field private final mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mIsDesktopDockConnected:Z

.field private mIsDesktopMode:Z

.field private mIsDesktopModeAvailable:Z

.field private mIsExternalDisplayConnected:Z

.field private mIsForcedDesktopMode:Z

.field private mIsKeyboardConnected:Z

.field private mIsLauncherInstalled:Z

.field private mIsMouseConnected:Z

.field private final mLoadingScreenAnimationListener:Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

.field private mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

.field private final mLock:Ljava/lang/Object;

.field private mModeChangeLock:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingStatus:I

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

.field private mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTopTaskId:I

.field private mTopTaskIntent:Landroid/content/Intent;

.field private mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private mUiModeManager:Landroid/app/IUiModeManager;

.field private mUserContext:Landroid/content/Context;

.field private mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPendingStatus:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/am/IActivityManagerServiceBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/desktopmode/DesktopModeService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherInstalled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/LoadingScreenManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Enabler;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherInstalled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/desktopmode/DesktopModeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/desktopmode/DesktopModeService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPendingStatus:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Enabler;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0
    .param p1, "block"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->blockDefaultDisplayAndTouchScreen(Z)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDockState(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setScreenOffTimeout(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchPadScreen(Z)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setVirtualKeyboard(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0
    .param p1, "dialogType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->showHeadsUpNotification()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->startTopActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->notifyDesktopModeState(Z)V

    return-void
.end method

.method static synthetic -wrap20(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopModeState()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateExternalDisplayStatus()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateInputDeviceStatus()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateOngoingNotification()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateTouchPadScreen()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0
    .param p1, "phase"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onBootPhase(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onStartUser(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onSwitchUser(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModeInner(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V
    .locals 0
    .param p1, "modeAvailable"    # Z
    .param p2, "desktopMode"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopMode(ZZ)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0
    .param p1, "modeState"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDisplayPortState(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    .line 80
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 509
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;-><init>()V

    .line 158
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    .line 159
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 160
    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$1;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$1;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 184
    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$2;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$2;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 183
    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 203
    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$3;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$3;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 202
    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 226
    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$4;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$4;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 225
    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenAnimationListener:Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

    .line 241
    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$5;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$5;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUEventObserver:Landroid/os/UEventObserver;

    .line 253
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    .line 254
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    .line 255
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    .line 256
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeAvailable:Z

    .line 257
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherInstalled:Z

    .line 258
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    .line 259
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    .line 260
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    .line 261
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    .line 263
    iput v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    .line 264
    iput v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPendingStatus:I

    .line 265
    iput v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 266
    iput v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    .line 267
    iput v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    .line 268
    iput v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    .line 269
    iput v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    .line 270
    iput v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    .line 272
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 273
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserContext:Landroid/content/Context;

    .line 274
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    .line 275
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 276
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 277
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 278
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 279
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 280
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 281
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 282
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 283
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    .line 284
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    .line 285
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    .line 286
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    .line 287
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 288
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 289
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    .line 290
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskIntent:Landroid/content/Intent;

    .line 291
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedDisplay:Landroid/view/Display;

    .line 292
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedMouse:Landroid/view/InputDevice;

    .line 293
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedKeyboard:Landroid/view/InputDevice;

    .line 295
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 296
    iput-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 511
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 512
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const v3, 0x103012b

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    .line 514
    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    .line 516
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v3, "DEVPATH=/devices/virtual/switch/ccic_dock"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 519
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 520
    .local v1, "filterPackage":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 524
    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {p1, v2, v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 527
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 528
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.KNOXDESKTOP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string/jumbo v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string/jumbo v2, "com.android.server.desktopmode.action.NOTIFICATION_PRESSED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {p1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 508
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private blockDefaultDisplayAndTouchScreen(Z)V
    .locals 3
    .param p1, "block"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1434
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1433
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    .line 1435
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 1437
    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1435
    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    .line 1432
    return-void

    .line 1434
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static dialogTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 1620
    packed-switch p0, :pswitch_data_0

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1622
    :pswitch_0
    const-string/jumbo v0, "DIALOG_TYPE_NONE"

    return-object v0

    .line 1624
    :pswitch_1
    const-string/jumbo v0, "DIALOG_TYPE_LAUNCH_CONFIRMATION"

    return-object v0

    .line 1626
    :pswitch_2
    const-string/jumbo v0, "DIALOG_TYPE_INSTALL_LAUNCHER"

    return-object v0

    .line 1628
    :pswitch_3
    const-string/jumbo v0, "DIALOG_TYPE_PROMOTION"

    return-object v0

    .line 1620
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private dismissDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1251
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismissDialog()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1255
    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    .line 1257
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    .line 1250
    return-void
.end method

.method private static dockStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 1663
    sparse-switch p0, :sswitch_data_0

    .line 1673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1665
    :sswitch_0
    const-string/jumbo v0, "DOCK_STATE_NONE"

    return-object v0

    .line 1667
    :sswitch_1
    const-string/jumbo v0, "DOCK_STATE_MULTIPORT_ADAPTER"

    return-object v0

    .line 1669
    :sswitch_2
    const-string/jumbo v0, "DOCK_STATE_DEX_STATION"

    return-object v0

    .line 1671
    :sswitch_3
    const-string/jumbo v0, "DOCK_STATE_HDMI_ADAPTER"

    return-object v0

    .line 1663
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6d -> :sswitch_1
        0x6e -> :sswitch_2
        0x6f -> :sswitch_3
    .end sparse-switch
.end method

.method private getDisplayPortState()I
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 631
    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "/sys/class/dp_sec/dex"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    .local v1, "file":Ljava/io/File;
    const/4 v4, -0x1

    .line 633
    .local v4, "state":I
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 634
    const/4 v2, 0x0

    .local v2, "fr":Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 635
    .end local v2    # "fr":Ljava/io/FileReader;
    .local v3, "fr":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->read()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    .line 638
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 636
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 637
    .end local v3    # "fr":Ljava/io/FileReader;
    :goto_1
    sget-object v5, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Failed to get DisplayPort state"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    sget-boolean v5, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDisplayPortState(), state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_2
    return v4

    .line 638
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v6

    goto :goto_0

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v5

    .end local v2    # "fr":Ljava/io/FileReader;
    :goto_2
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    if-eqz v6, :cond_5

    :try_start_6
    throw v6

    .line 636
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    if-nez v6, :cond_4

    move-object v6, v7

    goto :goto_4

    :cond_4
    if-eq v6, v7, :cond_3

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v2    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    goto :goto_3

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .local v2, "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v5

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private getSettings(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSettings(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isDesktopModeReady()Z
    .locals 3

    .prologue
    .line 1118
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDesktopModeReady(), mIsForcedDesktopMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1119
    const-string/jumbo v2, ", mIsExternalDisplayConnected="

    .line 1118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1119
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    .line 1118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isEmergencyMode()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1261
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1263
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "emergency_mode"

    .line 1262
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 1265
    .local v1, "emergencyMode":Z
    :goto_0
    const-string/jumbo v3, "ultra_powersaving_mode"

    .line 1264
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 1267
    .local v2, "ultraPowerMode":Z
    :goto_1
    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEmergencyMode(), emergencyMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1268
    const-string/jumbo v5, ", ultraPowerMode="

    .line 1267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_0
    if-nez v1, :cond_3

    .end local v2    # "ultraPowerMode":Z
    :goto_2
    return v2

    .line 1262
    .end local v1    # "emergencyMode":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "emergencyMode":Z
    goto :goto_0

    .line 1264
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "ultraPowerMode":Z
    goto :goto_1

    .line 1270
    :cond_3
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private isFactoryBinary()Z
    .locals 4

    .prologue
    .line 1289
    const-string/jumbo v1, "factory"

    .line 1290
    const-string/jumbo v2, "ro.factory.factory_binary"

    const-string/jumbo v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1289
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1292
    .local v0, "factoryBinary":Z
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFactoryBinary()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_0
    return v0
.end method

.method private isLowPowerMode(Z)Z
    .locals 6
    .param p1, "enter"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1274
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1275
    const-string/jumbo v2, "low_power"

    .line 1274
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 1277
    .local v0, "lowPowerMode":Z
    :goto_0
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLowPowerMode(), enter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1278
    const-string/jumbo v3, ", lowPowerMode="

    .line 1277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 1281
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    .line 1282
    sget v3, Lcom/samsung/android/framework/res/R$string;->dex_toast_power_saving:I

    .line 1281
    const/16 v4, 0x67

    .line 1282
    const/4 v5, 0x1

    .line 1281
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1285
    :cond_1
    return v0

    .line 1274
    .end local v0    # "lowPowerMode":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "lowPowerMode":Z
    goto :goto_0
.end method

.method private isSystemReady()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1124
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSystemReady(), mModeChangeLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isUserSetupComplete()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1109
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1110
    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    .line 1109
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1112
    .local v0, "userSetupComplete":Z
    :goto_0
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUserSetupComplete()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_0
    return v0

    .line 1109
    .end local v0    # "userSetupComplete":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "userSetupComplete":Z
    goto :goto_0
.end method

.method private notifyDesktopDockState(Z)V
    .locals 6
    .param p1, "connected"    # Z

    .prologue
    .line 1056
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1057
    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1058
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1060
    :try_start_1
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    .line 1061
    .local v0, "cb":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeCallback;->onDesktopDockConnectionChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1058
    .end local v0    # "cb":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1062
    :catch_0
    move-exception v2

    .line 1063
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1056
    .end local v1    # "count":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1066
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 1055
    return-void
.end method

.method private notifyDesktopModeState(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 1012
    sget-boolean v4, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyDesktopModeState(), enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_0
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1015
    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1016
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1018
    :try_start_1
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    .line 1019
    .local v0, "cb":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeCallback;->onDesktopModeChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1016
    .end local v0    # "cb":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1020
    :catch_0
    move-exception v2

    .line 1021
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1014
    .end local v1    # "count":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1024
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 1028
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 1029
    new-instance v6, Landroid/content/Intent;

    if-eqz p1, :cond_2

    sget-object v4, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    :goto_2
    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1030
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1028
    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1011
    return-void

    .line 1030
    :cond_2
    sget-object v4, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    goto :goto_2
.end method

.method private onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/4 v5, 0x0

    .line 547
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 549
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherInstalled:Z

    .line 551
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 552
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 554
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 555
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 557
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 560
    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    .line 559
    invoke-static {v1}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/IWindowManagerServiceBridge;

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    .line 562
    new-instance v1, Lcom/samsung/android/desktopmode/LoadingScreenManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/desktopmode/LoadingScreenManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    .line 563
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenAnimationListener:Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->registerAnimationListener(Lcom/samsung/android/desktopmode/LoadingScreenManager$AnimationListener;)V

    .line 565
    new-instance v1, Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/desktopmode/VirtualDeviceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    .line 567
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 568
    const-string/jumbo v2, "notification"

    .line 567
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 569
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 570
    const-string/jumbo v2, "statusbar"

    .line 569
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 573
    const-string/jumbo v1, "uimode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 572
    invoke-static {v1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 575
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 576
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    .line 577
    sget v1, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    .line 578
    sget v1, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayDensity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    .line 546
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 580
    invoke-direct {p0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->setDisplayPortState(Z)V

    .line 581
    invoke-direct {p0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsComponent(Z)V

    .line 582
    invoke-direct {p0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->setScreenOffTimeout(Z)V

    .line 583
    invoke-direct {p0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->setVirtualKeyboard(Z)V

    .line 585
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 586
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 587
    const-string/jumbo v2, "user_setup_complete"

    .line 586
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 587
    new-instance v3, Lcom/android/server/desktopmode/DesktopModeService$6;

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/desktopmode/DesktopModeService$6;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Landroid/os/Handler;)V

    .line 596
    const/4 v4, -0x2

    .line 586
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 598
    :cond_2
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateExternalDisplayStatus()V

    .line 599
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateInputDeviceStatus()V

    .line 600
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopModeState()V

    goto :goto_0
.end method

.method private onStartUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 606
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    .line 605
    return-void
.end method

.method private onSwitchUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 616
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    .line 615
    return-void
.end method

.method private onUnlockUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 612
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    return-void
.end method

.method private onUserChanged(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 622
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "system"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    return-void

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUserChanged(), "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static pendingStatusToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "pendingStatus"    # I

    .prologue
    .line 1635
    packed-switch p0, :pswitch_data_0

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1637
    :pswitch_0
    const-string/jumbo v0, "PENDING_STATUS_NONE"

    return-object v0

    .line 1639
    :pswitch_1
    const-string/jumbo v0, "PENDING_STATUS_ENTER"

    return-object v0

    .line 1641
    :pswitch_2
    const-string/jumbo v0, "PENDING_STATUS_EXIT"

    return-object v0

    .line 1635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static powerModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 1648
    packed-switch p0, :pswitch_data_0

    .line 1658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1650
    :pswitch_0
    const-string/jumbo v0, "POWER_MODE_OFF"

    return-object v0

    .line 1652
    :pswitch_1
    const-string/jumbo v0, "POWER_MODE_DOZE"

    return-object v0

    .line 1654
    :pswitch_2
    const-string/jumbo v0, "POWER_MODE_NORMAL"

    return-object v0

    .line 1656
    :pswitch_3
    const-string/jumbo v0, "POWER_MODE_DOZE_SUSPEND"

    return-object v0

    .line 1648
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removeAllTasks()V
    .locals 3

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, -0x1

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->removeTask(II)Z

    .line 876
    return-void
.end method

.method private restorePreviousSizeDensity(I)V
    .locals 15
    .param p1, "displayId"    # I

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    .line 1359
    const/4 v1, 0x0

    .line 1358
    invoke-interface {v0, v1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getInitialDisplayProperties(I)[I

    move-result-object v8

    .line 1362
    .local v8, "displayProperties":[I
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1363
    const-string/jumbo v1, "display_size_forced"

    .line 1362
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1365
    .local v13, "sizeStr":Ljava/lang/String;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1366
    const/16 v0, 0x2c

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 1367
    .local v12, "pos":I
    if-lez v12, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 1369
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v13, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1370
    .local v14, "width":I
    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1371
    .local v11, "height":I
    if-lez v14, :cond_0

    if-lez v11, :cond_0

    .line 1372
    const/4 v0, 0x0

    aput v14, v8, v0

    .line 1373
    const/4 v0, 0x1

    aput v11, v8, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1385
    .end local v11    # "height":I
    .end local v12    # "pos":I
    .end local v14    # "width":I
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1386
    const-string/jumbo v1, "display_density_forced"

    const/4 v2, 0x0

    .line 1385
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1387
    .local v7, "density":I
    if-lez v7, :cond_1

    .line 1388
    const/4 v0, 0x2

    aput v7, v8, v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1395
    .end local v7    # "density":I
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Restoring display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1396
    const/4 v2, 0x0

    aget v2, v8, v2

    .line 1395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1396
    const-string/jumbo v2, "x"

    .line 1395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1396
    const/4 v2, 0x1

    aget v2, v8, v2

    .line 1395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1396
    const-string/jumbo v2, ", "

    .line 1395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1396
    const/4 v2, 0x2

    aget v2, v8, v2

    .line 1395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    const/4 v1, 0x0

    aget v2, v8, v1

    .line 1398
    const/4 v1, 0x1

    aget v3, v8, v1

    const/4 v1, 0x2

    aget v4, v8, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    .line 1397
    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setForcedDisplaySizeDensity(IIIIZZ)V

    .line 1357
    return-void

    .line 1375
    .restart local v12    # "pos":I
    :catch_0
    move-exception v10

    .line 1376
    .local v10, "e":Ljava/lang/NumberFormatException;
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to parse previous forced display size"

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1380
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "pos":I
    :cond_3
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No previous forced display size. Use default size instead."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1390
    :catch_1
    move-exception v9

    .line 1391
    .local v9, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    .line 1392
    const-string/jumbo v1, "No previous forced display density. Use default density instead."

    .line 1391
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private scheduleStartLoadingScreen(Z)V
    .locals 7
    .param p1, "enter"    # Z

    .prologue
    const/16 v6, 0x69

    const/16 v5, 0x68

    .line 1298
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleStartLoadingScreen(), enter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-ne v2, p1, :cond_2

    .line 1301
    :cond_1
    return-void

    .line 1303
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    .line 1305
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    .line 1306
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1307
    .local v0, "startMessage":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1309
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    .line 1310
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    .line 1311
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 1310
    invoke-virtual {v2, v6, v4, v5, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1312
    .local v1, "timeoutMessage":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1297
    return-void
.end method

.method private setComponentFromList(II)V
    .locals 12
    .param p1, "listResId"    # I
    .param p2, "enabledState"    # I

    .prologue
    const/4 v7, 0x0

    .line 918
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 919
    .local v3, "list":[Ljava/lang/String;
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v1, v3, v6

    .line 920
    .local v1, "componentStr":Ljava/lang/String;
    const/16 v9, 0x2f

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 921
    .local v5, "pos":I
    const/4 v9, -0x1

    if-ne v5, v9, :cond_0

    .line 922
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 924
    :cond_0
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 925
    .local v4, "packageName":Ljava/lang/String;
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 927
    const-string/jumbo v4, "com.sec.android.app.desktoplauncher"

    .line 930
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 931
    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, p2, v10}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 919
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 933
    :cond_2
    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 934
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const/4 v11, 0x1

    .line 933
    invoke-virtual {v9, v10, p2, v11}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 937
    :catch_0
    move-exception v2

    .line 938
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v9, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Failed to toggle components"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 917
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "componentStr":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pos":I
    :cond_3
    return-void
.end method

.method private setCustomConfigurations(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    .line 1345
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setDesktopMode(Z)V

    .line 1346
    if-eqz p1, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    .line 1348
    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    .line 1347
    const/4 v1, 0x0

    .line 1348
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1347
    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setForcedDisplaySizeDensity(IIIIZZ)V

    .line 1343
    :goto_0
    return-void

    .line 1350
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->restorePreviousSizeDensity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1352
    :catch_0
    move-exception v7

    .line 1353
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to set custom configurations"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setDesktopMode(ZZ)V
    .locals 3
    .param p1, "modeAvailable"    # Z
    .param p2, "desktopMode"    # Z

    .prologue
    .line 1145
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 1146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "To set Desktop mode, modeAvailable must be true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_0
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopMode(), modeAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1150
    const-string/jumbo v2, ", desktopMode="

    .line 1149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_1
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog()V

    .line 1154
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/DesktopModeService;->isLowPowerMode(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1155
    :cond_2
    return-void

    .line 1158
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeAvailable:Z

    .line 1159
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eq v0, p2, :cond_4

    .line 1160
    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleStartLoadingScreen(Z)V

    .line 1144
    :cond_4
    return-void
.end method

.method private setDesktopModeInner(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1323
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopModeInner(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog()V

    .line 1326
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPendingStatus:I

    .line 1328
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IActivityManagerServiceBridge;->getTopTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    .line 1329
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IActivityManagerServiceBridge;->getTopTaskIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskIntent:Landroid/content/Intent;

    .line 1331
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->removeAllTasks()V

    .line 1332
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setSettingsComponent(Z)V

    .line 1334
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopModetoSF(Z)V

    .line 1335
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setDisplayPortState(Z)V

    .line 1336
    if-eqz p1, :cond_1

    .line 1337
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->stopLockTaskMode()V

    .line 1339
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setCustomConfigurations(Z)V

    .line 1322
    return-void

    .line 1326
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setDesktopModetoSF(Z)V
    .locals 6
    .param p1, "value"    # Z

    .prologue
    .line 1804
    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1806
    .local v2, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 1807
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1808
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1809
    if-eqz p1, :cond_1

    .line 1810
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1814
    :goto_0
    const/16 v3, 0x44f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1803
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_0
    :goto_1
    return-void

    .line 1812
    .restart local v0    # "data":Landroid/os/Parcel;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1817
    .end local v0    # "data":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 1818
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to set desktop mode for SF"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setDisplayPortState(Z)V
    .locals 12
    .param p1, "modeState"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 646
    const-string/jumbo v9, "hdmi"

    const/4 v10, -0x1

    invoke-direct {p0, v9, v10}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    move v5, v6

    .line 648
    .local v5, "settingsState":Z
    :goto_0
    if-eqz v5, :cond_4

    move v9, v6

    :goto_1
    shl-int/lit8 v9, v9, 0x4

    if-eqz p1, :cond_5

    :goto_2
    or-int v0, v9, v6

    .line 649
    .local v0, "displayPortState":I
    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDisplayPortState(), state=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 650
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 649
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/sys/class/dp_sec/dex"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 654
    const/4 v3, 0x0

    .local v3, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 655
    .end local v3    # "fw":Ljava/io/FileWriter;
    .local v4, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 658
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_3
    if-eqz v8, :cond_2

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 656
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 657
    .end local v4    # "fw":Ljava/io/FileWriter;
    :goto_4
    sget-object v6, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to set DisplayPort state"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    return-void

    .end local v0    # "displayPortState":I
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "settingsState":Z
    :cond_3
    move v5, v7

    .line 646
    goto :goto_0

    .restart local v5    # "settingsState":Z
    :cond_4
    move v9, v7

    .line 648
    goto :goto_1

    :cond_5
    move v6, v7

    goto :goto_2

    .line 658
    .restart local v0    # "displayPortState":I
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_1
    move-exception v8

    goto :goto_3

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_2
    move-exception v6

    .end local v3    # "fw":Ljava/io/FileWriter;
    :goto_5
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    :goto_6
    if-eqz v3, :cond_6

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_7
    if-eqz v7, :cond_8

    :try_start_6
    throw v7

    .line 656
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 658
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    if-nez v7, :cond_7

    move-object v7, v8

    goto :goto_7

    :cond_7
    if-eq v7, v8, :cond_6

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_8
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v6

    move-object v7, v8

    goto :goto_6

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v6

    move-object v7, v8

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    goto :goto_6

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v6

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_5
.end method

.method private setDockState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 1034
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDockState(), state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->dockStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1044
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    .line 1048
    :goto_0
    const/16 v1, 0x6e

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 1049
    .local v0, "newDesktopDockState":Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    if-eq v1, v0, :cond_1

    .line 1050
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    .line 1051
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->notifyDesktopDockState(Z)V

    .line 1033
    :cond_1
    return-void

    .line 1040
    .end local v0    # "newDesktopDockState":Z
    :pswitch_0
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    goto :goto_0

    .line 1048
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "newDesktopDockState":Z
    goto :goto_1

    .line 1036
    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setScreenOffTimeout(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 944
    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffTimeout(), enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_0
    if-eqz p1, :cond_4

    .line 948
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 949
    const-string/jumbo v4, "screen_off_timeout"

    const/16 v5, 0x7530

    .line 948
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 950
    .local v2, "normalModeValue":I
    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffTimeout(), Backing up current value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_1
    const-string/jumbo v3, "timeout_b"

    invoke-direct {p0, v3, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;I)V

    .line 956
    const-string/jumbo v3, "timeout"

    const v4, 0x927c0

    invoke-direct {p0, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v1

    .line 957
    .local v1, "desktopModeValue":I
    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffTimeout(), Setting Desktop mode value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_2
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 960
    const-string/jumbo v4, "screen_off_timeout"

    .line 959
    invoke-static {v3, v4, v1, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 943
    .end local v1    # "desktopModeValue":I
    .end local v2    # "normalModeValue":I
    :cond_3
    :goto_0
    return-void

    .line 964
    :cond_4
    const-string/jumbo v3, "timeout_b"

    invoke-direct {p0, v3, v7}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v0

    .line 966
    .local v0, "backedUpNormalModeValue":I
    if-lez v0, :cond_3

    .line 967
    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffTimeout(), Restoring backed up value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_5
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 970
    const-string/jumbo v4, "screen_off_timeout"

    .line 969
    invoke-static {v3, v4, v0, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 973
    const-string/jumbo v3, "timeout_b"

    invoke-direct {p0, v3, v7}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setSettings(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    return-void
.end method

.method private setSettings(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .prologue
    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    return-void
.end method

.method private setSettingsComponent(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 904
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSettingsComponent(), enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_0
    sget v2, Lcom/samsung/android/framework/res/R$array;->components_desktop_mode:I

    .line 908
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 907
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setComponentFromList(II)V

    .line 912
    sget v0, Lcom/samsung/android/framework/res/R$array;->components_normal_mode:I

    .line 913
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    .line 912
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setComponentFromList(II)V

    .line 903
    return-void

    :cond_2
    move v0, v1

    .line 909
    goto :goto_0
.end method

.method private setTouchPadScreen(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/16 v3, 0x969

    .line 1441
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTouchPadScreen(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    if-eqz v0, :cond_1

    .line 1444
    if-eqz p1, :cond_2

    .line 1445
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-eqz v0, :cond_1

    .line 1446
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    .line 1448
    sget v1, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_touch_pad:I

    .line 1449
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnected()Z

    move-result v2

    .line 1446
    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->showVirtualDevice(IIZ)V

    .line 1440
    :cond_1
    :goto_0
    return-void

    .line 1452
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    .line 1454
    sget v1, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_touch_pad:I

    .line 1452
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->removeVirtualDevice(II)V

    goto :goto_0
.end method

.method private setVirtualKeyboard(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 979
    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVirtualKeyboard(), enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_0
    if-eqz p1, :cond_4

    .line 983
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 984
    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    const/4 v5, 0x1

    .line 983
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 985
    .local v2, "normalModeValue":I
    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVirtualKeyboard(), Backing up current value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_1
    const-string/jumbo v3, "keyboard_b"

    invoke-direct {p0, v3, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;I)V

    .line 990
    const-string/jumbo v3, "keyboard"

    invoke-direct {p0, v3, v7}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v1

    .line 991
    .local v1, "desktopModeValue":I
    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVirtualKeyboard(), Setting Desktop mode value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_2
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 994
    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    .line 993
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 978
    .end local v1    # "desktopModeValue":I
    .end local v2    # "normalModeValue":I
    :cond_3
    :goto_0
    return-void

    .line 998
    :cond_4
    const-string/jumbo v3, "keyboard_b"

    invoke-direct {p0, v3, v6}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v0

    .line 1000
    .local v0, "backedUpNormalModeValue":I
    if-ltz v0, :cond_3

    .line 1001
    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVirtualKeyboard(), Restoring backed up value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_5
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1004
    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    .line 1003
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1006
    const-string/jumbo v3, "keyboard_b"

    invoke-direct {p0, v3, v6}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 7
    .param p1, "dialogType"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1165
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog(), dialogType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->dialogTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 1168
    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    if-ne v2, p1, :cond_1

    .line 1169
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1170
    return-void

    .line 1172
    :cond_1
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1173
    iput-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    .line 1174
    iput v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    .line 1180
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 1241
    return-void

    .line 1183
    :pswitch_0
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$9;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DesktopModeService$9;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 1201
    .local v1, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1202
    sget v3, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_msg:I

    .line 1201
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1203
    sget v3, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_positive:I

    .line 1201
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1204
    sget v3, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_negative:I

    .line 1201
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1243
    .end local v1    # "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    .local v0, "dialog":Landroid/app/AlertDialog;
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1245
    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    .line 1246
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    .line 1247
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1164
    return-void

    .line 1211
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_1
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$10;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DesktopModeService$10;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 1226
    .restart local v1    # "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1227
    sget v3, Lcom/samsung/android/framework/res/R$string;->dex_dialog_install:I

    .line 1226
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1228
    sget v3, Lcom/samsung/android/framework/res/R$string;->dex_dialog_install_positive:I

    .line 1226
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1229
    const/high16 v3, 0x1040000

    .line 1226
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 1234
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1235
    sget v3, Lcom/samsung/android/framework/res/R$string;->dex_dialog_promotion:I

    .line 1234
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1236
    const v3, 0x104000a

    .line 1234
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 1180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showHeadsUpNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1414
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showHeadsUpNotification()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 1416
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.server.desktopmode.action.NOTIFICATION_PRESSED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1415
    invoke-static {v2, v5, v3, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1417
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1418
    sget v3, Lcom/samsung/android/framework/res/R$drawable;->stat_notify_desktop_mode:I

    .line 1417
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1419
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/framework/res/R$string;->samsung_dex:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1417
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1420
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/framework/res/R$string;->dex_hun_hdmi_settings:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1417
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1421
    new-instance v3, Landroid/app/Notification$Action$Builder;

    .line 1422
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/framework/res/R$string;->dex_hun_action:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1421
    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    .line 1417
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1424
    const/4 v3, 0x3

    .line 1417
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1428
    .local v0, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    sget v4, Lcom/samsung/android/framework/res/R$string;->dex_hun_hdmi_settings:I

    .line 1429
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1428
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1413
    return-void
.end method

.method private startHome()V
    .locals 3

    .prologue
    .line 885
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startHome()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 890
    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 891
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 884
    return-void
.end method

.method private startTopActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 895
    if-nez p1, :cond_0

    .line 896
    return-void

    .line 898
    :cond_0
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTopActivity(), intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 900
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IActivityManagerServiceBridge;->getTopTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    .line 894
    return-void
.end method

.method private updateDesktopModeState()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0x66

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1071
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDesktopModeState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    if-eqz v0, :cond_2

    .line 1074
    :cond_1
    return-void

    .line 1077
    :cond_2
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateOngoingNotification()V

    .line 1079
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeReady()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "hdmi"

    invoke-direct {p0, v0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 1081
    const-string/jumbo v0, "1st_promo"

    invoke-direct {p0, v0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;Z)V

    .line 1082
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeAvailable:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v0, :cond_4

    .line 1070
    :cond_3
    :goto_0
    return-void

    .line 1083
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherInstalled:Z

    if-eqz v0, :cond_6

    .line 1084
    const-string/jumbo v0, "hdmi"

    invoke-direct {p0, v0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    .line 1086
    invoke-direct {p0, v2, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopMode(ZZ)V

    goto :goto_0

    .line 1088
    :cond_5
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1092
    :cond_6
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    .line 1093
    const/4 v2, 0x2

    .line 1092
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1097
    :cond_7
    invoke-direct {p0, v3, v3}, Lcom/android/server/desktopmode/DesktopModeService;->setDesktopMode(ZZ)V

    .line 1098
    const-string/jumbo v0, "1st_promo"

    invoke-direct {p0, v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1099
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    if-nez v0, :cond_8

    .line 1100
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    if-eqz v0, :cond_3

    .line 1101
    :cond_8
    const-string/jumbo v0, "1st_promo"

    invoke-direct {p0, v0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->setSettings(Ljava/lang/String;Z)V

    .line 1102
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateExternalDisplayStatus()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 1480
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    .line 1481
    .local v2, "displays":[Landroid/view/Display;
    const/4 v0, 0x0

    .line 1483
    .local v0, "connected":Z
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .line 1484
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getType()I

    move-result v3

    .line 1485
    .local v3, "type":I
    if-eq v3, v8, :cond_0

    const/4 v6, 0x5

    if-ne v3, v6, :cond_4

    .line 1486
    invoke-virtual {v1}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.displaylink"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 1485
    if-eqz v6, :cond_4

    .line 1487
    :cond_0
    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Connected external display="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    const/4 v0, 0x1

    .line 1489
    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedDisplay:Landroid/view/Display;

    .line 1495
    .end local v1    # "display":Landroid/view/Display;
    .end local v3    # "type":I
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v4, :cond_2

    .line 1496
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getDisplayPortState()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 1497
    const/4 v0, 0x1

    .line 1500
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    .line 1502
    sget-boolean v4, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIsExternalDisplayConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_3
    return-void

    .line 1483
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v3    # "type":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private updateInputDeviceStatus()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 1506
    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v8}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    .line 1507
    .local v1, "ids":[I
    const/4 v6, 0x0

    .line 1508
    .local v6, "mouseConnected":Z
    const/4 v5, 0x0

    .line 1510
    .local v5, "keyboardConnected":Z
    array-length v9, v1

    move v8, v7

    .end local v5    # "keyboardConnected":Z
    .end local v6    # "mouseConnected":Z
    :goto_0
    if-ge v8, v9, :cond_6

    aget v0, v1, v8

    .line 1511
    .local v0, "id":I
    iget-object v10, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 1512
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1513
    invoke-virtual {v2}, Landroid/view/InputDevice;->getSources()I

    move-result v10

    and-int/lit8 v10, v10, 0xe

    if-eqz v10, :cond_4

    const/4 v4, 0x1

    .line 1518
    .local v4, "isMouse":Z
    :goto_1
    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    const/4 v3, 0x1

    .line 1519
    .local v3, "isKeyboard":Z
    :goto_2
    or-int/2addr v6, v4

    .line 1520
    .local v6, "mouseConnected":Z
    or-int/2addr v5, v3

    .line 1522
    .local v5, "keyboardConnected":Z
    if-eqz v4, :cond_1

    .line 1523
    sget-boolean v10, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Connected mouse="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_0
    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedMouse:Landroid/view/InputDevice;

    .line 1526
    :cond_1
    if-eqz v3, :cond_3

    .line 1527
    sget-boolean v10, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Connected keyboard="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_2
    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedKeyboard:Landroid/view/InputDevice;

    .line 1510
    .end local v3    # "isKeyboard":Z
    .end local v4    # "isMouse":Z
    .end local v5    # "keyboardConnected":Z
    .end local v6    # "mouseConnected":Z
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1513
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "isMouse":Z
    goto :goto_1

    :cond_5
    move v3, v7

    .line 1518
    goto :goto_2

    .line 1533
    .end local v0    # "id":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    .end local v4    # "isMouse":Z
    :cond_6
    iput-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    .line 1534
    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    .line 1536
    sget-boolean v7, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mIsMouseConnected="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1537
    const-string/jumbo v9, " mIsKeyboardConnected="

    .line 1536
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1537
    iget-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    .line 1536
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_7
    return-void
.end method

.method private updateOngoingNotification()V
    .locals 0

    .prologue
    .line 846
    return-void
.end method

.method private updateTouchPadScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1460
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateTouchPadScreen()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    if-eqz v0, :cond_4

    .line 1469
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->isVirtualDeviceShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1470
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-eqz v0, :cond_2

    .line 1471
    const-class v0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayOn(ZLjava/lang/String;)V

    .line 1472
    const-class v0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchScreenOn(ZLjava/lang/String;)V

    .line 1474
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchPadScreen(Z)V

    .line 1459
    :cond_3
    :goto_0
    return-void

    .line 1463
    :cond_4
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mVirtualDeviceManager:Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/VirtualDeviceManager;->isVirtualDeviceShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1464
    invoke-direct {p0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchPadScreen(Z)V

    .line 1465
    const-class v0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchScreenOn(ZLjava/lang/String;)V

    .line 1466
    const-class v0, Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayOn(ZLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1679
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 1681
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: can\'t dump DesktopModeService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1682
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1681
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1682
    const-string/jumbo v7, ", uid="

    .line 1681
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1682
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1681
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1683
    return-void

    .line 1686
    :cond_0
    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v6, :cond_8

    array-length v6, p3

    if-lez v6, :cond_8

    .line 1687
    aget-object v1, p3, v8

    .line 1688
    .local v1, "cmd":Ljava/lang/String;
    const-string/jumbo v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1690
    const-string/jumbo v6, "toggle"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1691
    iget-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    .line 1701
    .local v3, "enabled":Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    if-ne v3, v6, :cond_6

    .line 1703
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Forced DeX mode is already turned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v3, :cond_5

    const-string/jumbo v6, "on"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1702
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1704
    return-void

    .line 1691
    .end local v3    # "enabled":Z
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "enabled":Z
    goto :goto_0

    .line 1692
    .end local v3    # "enabled":Z
    :cond_2
    const-string/jumbo v6, "on"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1693
    const/4 v3, 0x1

    .restart local v3    # "enabled":Z
    goto :goto_0

    .line 1694
    .end local v3    # "enabled":Z
    :cond_3
    const-string/jumbo v6, "off"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1695
    const/4 v3, 0x0

    .restart local v3    # "enabled":Z
    goto :goto_0

    .line 1697
    .end local v3    # "enabled":Z
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; USAGE: [on|off|toggle]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    return-void

    .line 1703
    .restart local v3    # "enabled":Z
    :cond_5
    const-string/jumbo v6, "off"

    goto :goto_1

    .line 1707
    :cond_6
    if-eqz v3, :cond_7

    .line 1708
    const-string/jumbo v6, "Turning on forced DeX mode..."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1709
    const-string/jumbo v6, "This simulates the connection of an external display and a mouse."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/desktopmode/DesktopModeService;->setForcedDesktopMode(Z)V

    .line 1717
    :goto_2
    return-void

    .line 1712
    :cond_7
    const-string/jumbo v6, "Turning off forced DeX mode..."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    const-string/jumbo v6, "This simulates the disconnection of an external display and a mouse."

    .line 1713
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1715
    invoke-virtual {p0, v8}, Lcom/android/server/desktopmode/DesktopModeService;->setForcedDesktopMode(Z)V

    goto :goto_2

    .line 1721
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "enabled":Z
    :cond_8
    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v6, "  "

    const/16 v7, 0x78

    invoke-direct {v5, p2, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 1722
    .local v5, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1723
    :try_start_0
    const-string/jumbo v6, "DesktopModeService (dumpsys desktopmode):"

    invoke-virtual {v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1725
    const-string/jumbo v6, "\nmIsDesktopMode"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1726
    const-string/jumbo v6, "\nmDockState"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockState:I

    invoke-static {v8}, Lcom/android/server/desktopmode/DesktopModeService;->dockStateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1727
    const-string/jumbo v6, "\nmIsDesktopDockConnected"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1728
    const-string/jumbo v6, "\nmIsForcedDesktopMode"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1729
    const-string/jumbo v6, "\nmPendingStatus"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPendingStatus:I

    invoke-static {v8}, Lcom/android/server/desktopmode/DesktopModeService;->pendingStatusToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1730
    const-string/jumbo v6, "\nmModeChangeLock"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChangeLock:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1731
    const-string/jumbo v6, "\nmDialogType"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDialogType:I

    invoke-static {v8}, Lcom/android/server/desktopmode/DesktopModeService;->dialogTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1732
    const-string/jumbo v6, "\nmIsDesktopModeAvailable"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeAvailable:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1733
    const-string/jumbo v6, "\nmIsLauncherInstalled"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsLauncherInstalled:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1734
    const-string/jumbo v6, "\nmIsExternalDisplayConnected"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1735
    const-string/jumbo v6, "\nmConnectedDisplay"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedDisplay:Landroid/view/Display;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1736
    const-string/jumbo v6, "\nmIsMouseConnected"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsMouseConnected:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1737
    const-string/jumbo v6, "\nmConnectedMouse"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedMouse:Landroid/view/InputDevice;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1738
    const-string/jumbo v6, "\nmIsKeyboardConnected"

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsKeyboardConnected:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1739
    const-string/jumbo v6, "\nmConnectedKeyboard"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mConnectedKeyboard:Landroid/view/InputDevice;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1740
    const-string/jumbo v6, "\nmTopTaskId"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1741
    const-string/jumbo v6, "\nmTopTaskIntent"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTopTaskIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1742
    const-string/jumbo v6, "\nmCallbacks"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1743
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1744
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1745
    .local v2, "count":I
    const-string/jumbo v6, "count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1746
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1747
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_9

    .line 1748
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    .line 1749
    .local v0, "cb":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    invoke-virtual {v5, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1747
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1751
    .end local v0    # "cb":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    :cond_9
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1752
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1753
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1754
    const-string/jumbo v6, "\nmDefaultDisplayEnabler"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1755
    const-string/jumbo v6, "\nmTouchScreenEnabler"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1756
    const-string/jumbo v6, "\nmCurrentUserId"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1757
    const-string/jumbo v6, "\nmCustomWidth"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1758
    const-string/jumbo v6, "\nmCustomHeight"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1759
    const-string/jumbo v6, "\nmCustomDensity"

    iget v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCustomDensity:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1760
    const-string/jumbo v6, "\nmLoadingScreenManager"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1761
    const-string/jumbo v6, "\nConfiguration"

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1762
    const-string/jumbo v6, "\nDISPLAY_SIZE_FORCED"

    .line 1763
    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1764
    const-string/jumbo v9, "display_size_forced"

    .line 1763
    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1762
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1765
    const-string/jumbo v6, "\nDISPLAY_DENSITY_FORCED"

    .line 1766
    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1767
    const-string/jumbo v9, "display_density_forced"

    const/4 v10, 0x0

    .line 1766
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1765
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1768
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1769
    const-string/jumbo v6, "\npersist.service.dex.hdmi"

    .line 1770
    const-string/jumbo v8, "persist.service.dex.hdmi"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1769
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1771
    const-string/jumbo v6, "\npersist.service.dex.1st_promo"

    .line 1773
    const-string/jumbo v8, "persist.service.dex.1st_promo"

    .line 1772
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1771
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1774
    const-string/jumbo v6, "\npersist.service.dex.1st_mirror"

    .line 1776
    const-string/jumbo v8, "persist.service.dex.1st_mirror"

    .line 1775
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1774
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1777
    const-string/jumbo v6, "\npersist.service.dex.developer"

    .line 1778
    const-string/jumbo v8, "persist.service.dex.developer"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1777
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1779
    const-string/jumbo v6, "\npersist.service.dex.keyboard"

    .line 1780
    const-string/jumbo v8, "persist.service.dex.keyboard"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1779
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1781
    const-string/jumbo v6, "\npersist.service.dex.keyboard_b"

    .line 1783
    const-string/jumbo v8, "persist.service.dex.keyboard_b"

    .line 1782
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1781
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1784
    const-string/jumbo v6, "\nSHOW_IME_WITH_HARD_KEYBOARD"

    .line 1785
    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1786
    const-string/jumbo v9, "show_ime_with_hard_keyboard"

    .line 1785
    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1784
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1787
    const-string/jumbo v6, "\npersist.service.dex.timeout"

    .line 1789
    const-string/jumbo v8, "persist.service.dex.timeout"

    .line 1788
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1787
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1790
    const-string/jumbo v6, "\npersist.service.dex.timeout_b"

    .line 1792
    const-string/jumbo v8, "persist.service.dex.timeout_b"

    .line 1791
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1790
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1793
    const-string/jumbo v6, "\nSCREEN_OFF_TIMEOUT"

    .line 1794
    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1795
    const-string/jumbo v9, "screen_off_timeout"

    const/4 v10, -0x2

    .line 1794
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1793
    invoke-virtual {v5, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1796
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1797
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 1678
    return-void

    .line 1722
    .end local v2    # "count":I
    .end local v4    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public getLaunchPolicy(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1569
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLaunchPolicy ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1572
    .local v2, "startTime":J
    const-string/jumbo v1, "developer"

    invoke-direct {p0, v1, v6}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1573
    return v7

    .line 1576
    :cond_1
    const/4 v0, 0x0

    .line 1577
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->getLaunchModeFromDB(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1579
    if-nez v0, :cond_8

    .line 1580
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1581
    const/4 v0, 0x1

    .line 1598
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLaunchPolicy, ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_3
    return v0

    .line 1582
    :cond_4
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isPreloadedAppResizeable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1583
    const/4 v0, 0x1

    goto :goto_0

    .line 1584
    :cond_5
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isDexSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1585
    const/4 v0, 0x1

    goto :goto_0

    .line 1586
    :cond_6
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isTouchScreenDeclared(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1587
    const/4 v0, 0x3

    goto :goto_0

    .line 1588
    :cond_7
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isCategoryHomeDeclared(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1589
    const/4 v0, 0x4

    goto :goto_0

    .line 1591
    :cond_8
    if-ne v0, v7, :cond_9

    .line 1592
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getLaunchPolicy, pkg in whitelist"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1594
    :cond_9
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getLaunchPolicy, pkg in blacklist"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_a
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getModeChangePolicy(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1604
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getModeChangePolicy ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_0
    const-string/jumbo v1, "developer"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->getSettings(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1607
    const/4 v1, 0x1

    return v1

    .line 1610
    :cond_1
    const/4 v0, 0x0

    .line 1612
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->isKeepAlive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1613
    const/4 v0, 0x1

    .line 1615
    :cond_2
    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getModeChangePolicy, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_3
    return v0
.end method

.method public isDefaultDisplayBlocked()Z
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopDockConnected()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopDockConnected:Z

    return v0
.end method

.method public isDesktopMode()Z
    .locals 1

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    return v0
.end method

.method public isExternalDisplayConnected()Z
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    return v0
.end method

.method public isModeChangePending()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 775
    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPendingStatus:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStartActivityAllowed(Landroid/content/pm/ActivityInfo;)Z
    .locals 8
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v7, 0x1

    .line 1541
    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopMode:Z

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 1542
    :cond_0
    return v7

    .line 1546
    :cond_1
    const-string/jumbo v4, "com.sec.android.app.desktoplauncher"

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1547
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1548
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1549
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1550
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1551
    const/high16 v5, 0x10000

    .line 1550
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1552
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_2

    .line 1553
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1552
    if-eqz v4, :cond_2

    .line 1555
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1556
    .local v0, "appLabel":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    .line 1557
    sget v5, Lcom/samsung/android/framework/res/R$string;->dex_toast_unable_launch:I

    .line 1556
    const/16 v6, 0x67

    invoke-virtual {v4, v6, v5, v7, v0}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1558
    .local v2, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1559
    const/4 v4, 0x0

    return v4

    .line 1563
    .end local v0    # "appLabel":Ljava/lang/String;
    .end local v1    # "homeIntent":Landroid/content/Intent;
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return v7
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 809
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    .line 810
    const/4 v2, 0x2

    .line 809
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 811
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/desktopmode/DesktopModeService$8;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->post(Ljava/lang/Runnable;)Z

    .line 808
    return-void

    .line 809
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method public onUnfreezingScreen()V
    .locals 6

    .prologue
    const/16 v5, 0x69

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1402
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    if-eqz v3, :cond_1

    .line 1403
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->getState()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1404
    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onUnfreezingScreen()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_0
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    .line 1407
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    .line 1408
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLoadingScreenManager:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    invoke-virtual {v4}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->getState()I

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1407
    invoke-virtual {v3, v5, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1409
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1401
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 1408
    goto :goto_0
.end method

.method public registerStateCallback(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    .prologue
    .line 786
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 787
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "ret":Z
    monitor-exit v2

    .line 789
    return v0

    .line 786
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDefaultDisplayOn(ZLjava/lang/String;)V
    .locals 6
    .param p1, "on"    # Z
    .param p2, "callerPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 721
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 722
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callerPkgName must not be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 725
    :cond_1
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultDisplayOn(), on="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 726
    const-string/jumbo v4, ", callerPkgName="

    .line 725
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 727
    const-string/jumbo v4, ", mDefaultDisplayEnabler="

    .line 725
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 727
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 725
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-nez v2, :cond_4

    .line 730
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setDefaultDisplayOn(): External display is not connected."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_3
    return-void

    .line 734
    :cond_4
    if-eqz p1, :cond_7

    .line 735
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-nez v2, :cond_6

    .line 736
    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 737
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 736
    invoke-direct {v2, p2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$Enabler;-><init>(Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 739
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 740
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 741
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    new-instance v3, Lcom/android/server/desktopmode/DesktopModeService$7;

    invoke-direct {v3, p0}, Lcom/android/server/desktopmode/DesktopModeService$7;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 746
    const-wide/16 v4, 0x3e8

    .line 741
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 720
    .end local v0    # "token":J
    :cond_5
    :goto_0
    return-void

    .line 748
    :cond_6
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultDisplayOn(), Screen already enabled by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 749
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 748
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 752
    :cond_7
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-eqz v2, :cond_9

    .line 753
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->tag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 754
    iput-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 755
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 756
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    goto :goto_0

    .line 758
    :cond_8
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultDisplayOn(), Tag not matched; REQUESTED: {tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 759
    const-string/jumbo v4, "}"

    .line 758
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 760
    const-string/jumbo v4, " ACQUIRING: "

    .line 758
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 760
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDefaultDisplayEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 758
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 763
    :cond_9
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setDefaultDisplayOn(), Screen already disabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultDisplayPowerMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 803
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultDisplayPowerMode(), mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->powerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->setDefaultDisplayPowerMode(I)V

    .line 802
    return-void
.end method

.method public setForcedDesktopMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1317
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADB command received; setForcedDesktopMode(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsForcedDesktopMode:Z

    .line 1319
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopModeState()V

    .line 1316
    return-void
.end method

.method public setSystemService(Ljava/lang/Object;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/Object;

    .prologue
    .line 535
    instance-of v0, p1, Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1

    .line 536
    check-cast p1, Lcom/android/server/am/ActivityManagerService;

    .end local p1    # "service":Ljava/lang/Object;
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 537
    .restart local p1    # "service":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_2

    .line 538
    check-cast p1, Lcom/android/server/wm/WindowManagerService;

    .end local p1    # "service":Ljava/lang/Object;
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    goto :goto_0

    .line 539
    .restart local p1    # "service":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Lcom/android/server/input/InputManagerService;

    if-eqz v0, :cond_3

    .line 540
    check-cast p1, Lcom/android/server/input/InputManagerService;

    .end local p1    # "service":Ljava/lang/Object;
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    goto :goto_0

    .line 541
    .restart local p1    # "service":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Lcom/android/server/am/IActivityManagerServiceBridge;

    if-eqz v0, :cond_0

    .line 542
    check-cast p1, Lcom/android/server/am/IActivityManagerServiceBridge;

    .end local p1    # "service":Ljava/lang/Object;
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSamsungActivityManager:Lcom/android/server/am/IActivityManagerServiceBridge;

    goto :goto_0
.end method

.method public setTouchScreenOn(ZLjava/lang/String;)V
    .locals 7
    .param p1, "on"    # Z
    .param p2, "callerPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 674
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 675
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callerPkgName must not be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 678
    :cond_1
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchScreenOn(), on="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", callerPkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 679
    const-string/jumbo v4, ", mTouchScreenEnabler="

    .line 678
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 679
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 678
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsExternalDisplayConnected:Z

    if-nez v2, :cond_4

    .line 682
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setTouchScreenOn(): External display is not connected."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_3
    return-void

    .line 686
    :cond_4
    if-eqz p1, :cond_7

    .line 687
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-nez v2, :cond_6

    .line 688
    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 689
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 688
    invoke-direct {v2, p2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeService$Enabler;-><init>(Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 691
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 692
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 693
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 695
    const-class v3, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 693
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5, v5, v3}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    .line 673
    .end local v0    # "token":J
    :cond_5
    :goto_0
    return-void

    .line 697
    :cond_6
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchScreenOn(), TSP already enabled by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 698
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 697
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 701
    :cond_7
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    if-eqz v2, :cond_9

    .line 702
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v2, v2, Lcom/android/server/desktopmode/DesktopModeService$Enabler;->tag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 703
    iput-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 704
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 705
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 707
    const-class v3, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 705
    invoke-virtual {v2, v5, v5, v5, v3}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_8
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTouchScreenOn(), Tag not matched; REQUESTED: {tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 710
    const-string/jumbo v4, "}"

    .line 709
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 711
    const-string/jumbo v4, " ACQUIRING: "

    .line 709
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 711
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchScreenEnabler:Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 709
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 714
    :cond_9
    sget-boolean v2, Lcom/android/server/desktopmode/DesktopModeService;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setTouchScreenOn(), TSP already disabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public unregisterStateCallback(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    .prologue
    .line 795
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "ret":Z
    monitor-exit v2

    .line 798
    return v0

    .line 795
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
