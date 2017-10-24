.class public Lcom/android/server/cover/CoverManagerService;
.super Lcom/samsung/android/cover/ICoverManager$Stub;
.source "CoverManagerService.java"

# interfaces
.implements Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverManagerService$1;,
        Lcom/android/server/cover/CoverManagerService$2;,
        Lcom/android/server/cover/CoverManagerService$3;,
        Lcom/android/server/cover/CoverManagerService$4;,
        Lcom/android/server/cover/CoverManagerService$5;,
        Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;,
        Lcom/android/server/cover/CoverManagerService$CoverShapeThread;
    }
.end annotation


# static fields
.field static final COVER_ABSENT:I = -0x1

.field static final COVER_ATTACH:I = 0x1

.field static final COVER_CLOSED:I = 0x0

.field static final COVER_DETACH:I = 0x0

.field static final COVER_OPEN:I = 0x1

.field private static final DEBUG:Z = true

.field private static final MESSAGE_SCREEN_SIZE_UPDATE:I = 0x12c

.field static final MOBILE_KEYBOARD_KOR:I = 0x9

.field static final MOBILE_KEYBOARD_US:I = 0xa

.field private static final SAFE_DEBUG:Z = true

.field private static final SCREEN_UPDATE_DELAY:I = 0x1388

.field private static final SERIAL_NUMBER_CUT_LENGTH:I = 0x4

.field private static final SERVICE_VERSION:I = 0x1090000

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "CoverManager"


# instance fields
.field private mAnimationStartCallback:Ljava/lang/Runnable;

.field private mCalledByTestModule:Z

.field private mContext:Landroid/content/Context;

.field private final mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

.field private final mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

.field private final mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCoverStateLock:Ljava/lang/Object;

.field private final mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

.field private final mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

.field private mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field private final mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private mLastSwitchStateForDesktopMode:Z

.field private mLedCoverController:Lcom/android/server/cover/LedCoverController;

.field private mLedCoverService:Lcom/samsung/android/cover/ISViewCoverBaseService;

.field private mLedCoverServiceBound:Z

.field private mLedCoverServiceConnection:Landroid/content/ServiceConnection;

.field private mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

.field private mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

.field private mOnCoverTestModeCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mScreenChangeObserver:Landroid/database/ContentObserver;

.field private mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

.field private final mStateNotifier:Lcom/android/server/cover/StateNotifier;

.field private mSystemReady:Z

.field private final mThread:Landroid/os/HandlerThread;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/cover/CoverManagerService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mAnimationStartCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/CoverHideAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/cover/CoverManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mLastSwitchStateForDesktopMode:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/ISViewCoverBaseService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/StateNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/cover/CoverManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/ISViewCoverBaseService;)Lcom/samsung/android/cover/ISViewCoverBaseService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/CoverManagerService;ZZ)V
    .locals 0
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchState(ZZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->updateCoverWindowSize()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateLedCoverServiceCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    .line 106
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    .line 107
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    .line 123
    new-instance v0, Lcom/android/server/cover/CoverManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$1;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mAnimationStartCallback:Ljava/lang/Runnable;

    .line 132
    new-instance v0, Lcom/android/server/cover/CoverManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$2;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mOnCoverTestModeCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .line 148
    new-instance v0, Lcom/android/server/cover/CoverManagerService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/cover/CoverManagerService$3;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mScreenChangeObserver:Landroid/database/ContentObserver;

    .line 161
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverServiceBound:Z

    .line 162
    new-instance v0, Lcom/android/server/cover/CoverManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$4;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverServiceConnection:Landroid/content/ServiceConnection;

    .line 184
    new-instance v0, Lcom/android/server/cover/CoverManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$5;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .line 212
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 215
    iput-object p3, p0, Lcom/android/server/cover/CoverManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 216
    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    .line 218
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 221
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 223
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "cover"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    .line 224
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 225
    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    .line 226
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v1, Lcom/android/server/cover/CoverManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/cover/CoverManagerService$6;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 235
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 236
    new-instance v0, Lcom/android/server/cover/CoverVerifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/CoverVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    .line 237
    new-instance v0, Lcom/android/server/cover/StateNotifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/StateNotifier;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    .line 238
    new-instance v0, Lcom/android/server/cover/CoverDisabler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/CoverDisabler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    .line 239
    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    .line 240
    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    .line 241
    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    .line 242
    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    .line 243
    invoke-static {}, Lcom/android/server/cover/CoverManagerWhiteLists;->getInstance()Lcom/android/server/cover/CoverManagerWhiteLists;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    .line 244
    new-instance v0, Lcom/android/server/cover/CoverHideAnimator;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/CoverHideAnimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    .line 245
    new-instance v0, Lcom/android/server/cover/CoverTestModeUtils;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    .line 246
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mOnCoverTestModeCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .line 245
    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/CoverTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    .line 211
    return-void
.end method

.method private checkNeedThread([BII)Z
    .locals 4
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 998
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "checkNeedThread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 1001
    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 1000
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1004
    :cond_1
    return v3
.end method

.method private getCoverState(Z)Lcom/samsung/android/cover/CoverState;
    .locals 4
    .param p1, "needCheckUid"    # Z

    .prologue
    .line 819
    if-eqz p1, :cond_0

    .line 820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "getCoverState : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v0, 0x0

    return-object v0

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 827
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initializeLedCoverController()V
    .locals 4

    .prologue
    .line 798
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->getSupportNfcLedCoverLevel()I

    move-result v0

    .line 799
    .local v0, "nfcLedCoverLevel":I
    sparse-switch v0, :sswitch_data_0

    .line 813
    const-string/jumbo v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCoverAttachStateLocked : unsupported NfcLedCover level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :goto_0
    return-void

    .line 801
    :sswitch_0
    new-instance v1, Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 802
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    .line 801
    invoke-direct {v1, v2, v3}, Lcom/android/server/cover/DreamyNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    goto :goto_0

    .line 805
    :sswitch_1
    new-instance v1, Lcom/android/server/cover/GracefulNfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 806
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    .line 805
    invoke-direct {v1, v2, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    goto :goto_0

    .line 809
    :sswitch_2
    new-instance v1, Lcom/android/server/cover/NfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 810
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    .line 809
    invoke-direct {v1, v2, v3}, Lcom/android/server/cover/NfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    goto :goto_0

    .line 799
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x14 -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method private initializeLedCoverService()V
    .locals 4

    .prologue
    .line 788
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    if-nez v1, :cond_0

    .line 789
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 790
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.cover.ledcover"

    .line 791
    const-string/jumbo v3, "com.sec.android.cover.ledcover.LedCoverService"

    .line 790
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 792
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    .line 793
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    .line 792
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverServiceBound:Z

    .line 786
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private isThemeCover(Ljava/lang/String;)Z
    .locals 3
    .param p1, "coverUri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 647
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    .line 649
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "isThemeCover : it is theme cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v0, 0x1

    return v0

    .line 653
    :cond_0
    return v2
.end method

.method private needToBoost()Z
    .locals 2

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v1, :cond_0

    .line 427
    const/4 v1, 0x0

    return v1

    .line 430
    :cond_0
    const/4 v0, 0x0

    .line 431
    .local v0, "needToBoost":Z
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 441
    :goto_0
    :pswitch_0
    return v0

    .line 436
    :pswitch_1
    const/4 v0, 0x1

    .line 437
    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readTouchChannelCount()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, "point":Landroid/graphics/Point;
    const-string/jumbo v3, "get_x_num"

    invoke-static {v3}, Lcom/android/server/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v1

    .line 963
    .local v1, "x":I
    const-string/jumbo v3, "get_y_num"

    invoke-static {v3}, Lcom/android/server/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v2

    .line 968
    .local v2, "y":I
    if-le v1, v2, :cond_0

    .line 969
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "point":Landroid/graphics/Point;
    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 973
    .local v0, "point":Landroid/graphics/Point;
    :goto_0
    return-object v0

    .line 971
    .local v0, "point":Landroid/graphics/Point;
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "point":Landroid/graphics/Point;
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .local v0, "point":Landroid/graphics/Point;
    goto :goto_0
.end method

.method private registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .param p4, "needCheckUid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    if-eqz p4, :cond_0

    .line 336
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "registerListenerCallback : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/StateNotifier;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 334
    return-void
.end method

.method private sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 11
    .param p1, "isBoot"    # Z
    .param p2, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 701
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v4}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v0

    .line 702
    .local v0, "coverAttached":Z
    if-eqz v0, :cond_2

    .line 703
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 705
    .local v1, "coverSwitchState":Z
    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 708
    const/4 v1, 0x1

    .line 711
    :cond_0
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v5, p2}, Lcom/android/server/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    .line 713
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v4, :cond_3

    .line 715
    const-string/jumbo v4, "CoverManager"

    const-string/jumbo v5, "sendCoverAttachStateLocked : CoverState is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return-void

    .line 703
    .end local v1    # "coverSwitchState":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "coverSwitchState":Z
    goto :goto_0

    .line 704
    .end local v1    # "coverSwitchState":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "coverSwitchState":Z
    goto :goto_0

    .line 721
    :cond_3
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isMobileKeyboardFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 722
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    .line 723
    :cond_4
    const/4 v1, 0x1

    .line 724
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v4, v5}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 727
    :cond_5
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_d

    .line 728
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 729
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-nez v4, :cond_6

    .line 730
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->initializeLedCoverController()V

    .line 732
    :cond_6
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v4, :cond_7

    .line 733
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/cover/BaseNfcLedCoverController;->updateNfcLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    .line 742
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 743
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->initializeLedCoverService()V

    .line 753
    :cond_8
    :goto_2
    if-eqz v0, :cond_f

    .line 754
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "serialNumber":Ljava/lang/String;
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v10, :cond_e

    .line 756
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "number":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/server/cover/CoverManagerUtils;->reportContextualSurveyCoverSerial(Landroid/content/Context;Ljava/lang/String;)V

    .line 761
    .end local v2    # "number":Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v0, v5, p1}, Lcom/android/server/cover/StateNotifier;->updateCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;Z)V

    .line 763
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v4}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 764
    invoke-direct {p0, v1, p1, v9, v8}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZZZ)Z

    .line 771
    .end local v3    # "serialNumber":Ljava/lang/String;
    :cond_9
    :goto_4
    if-nez v0, :cond_a

    .line 773
    iget-boolean v4, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverServiceBound:Z

    if-eqz v4, :cond_a

    .line 774
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 775
    iput-boolean v8, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverServiceBound:Z

    .line 776
    iput-object v7, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    .line 781
    :cond_a
    const-string/jumbo v4, "CoverManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendCoverAttachStateLocked : coverAttached = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 782
    const-string/jumbo v6, ", coverSwitchState="

    .line 781
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void

    .line 736
    :cond_b
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-nez v4, :cond_c

    .line 737
    new-instance v4, Lcom/android/server/cover/LedCoverController;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/server/cover/LedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    .line 739
    :cond_c
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/cover/LedCoverController;->updateLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_1

    .line 745
    :cond_d
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_8

    .line 746
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isSupportNeonCover()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 747
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    if-nez v4, :cond_8

    .line 748
    new-instance v4, Lcom/android/server/cover/NeonCoverServiceController;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/server/cover/NeonCoverServiceController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    goto/16 :goto_2

    .line 759
    .restart local v3    # "serialNumber":Ljava/lang/String;
    :cond_e
    const-string/jumbo v4, "CoverManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cover serial number is null or too short, wtf? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 767
    .end local v3    # "serialNumber":Ljava/lang/String;
    :cond_f
    invoke-direct {p0, v1, p1, v9, v8}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZZZ)Z

    .line 768
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v0, v5, p1}, Lcom/android/server/cover/StateNotifier;->updateCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;Z)V

    goto/16 :goto_4
.end method

.method private sendCoverSwitchStateLocked(ZZ)Z
    .locals 2
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 488
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZZZ)Z

    move-result v0

    return v0
.end method

.method private sendCoverSwitchStateLocked(ZZZZ)Z
    .locals 4
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z
    .param p3, "force"    # Z
    .param p4, "playHideAnimation"    # Z

    .prologue
    const/4 v3, 0x0

    .line 493
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne p1, v1, :cond_0

    .line 495
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "updateCoverSwitchState : Returning switch state - it is same"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return v3

    .line 500
    :cond_0
    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/android/server/cover/StateNotifier;->checkSystemFeatureForCoverType(Lcom/samsung/android/cover/CoverState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 507
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchStateLocked(Z)V

    .line 509
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverHideAnimator;->cancelHideAnimation()V

    .line 513
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    .line 514
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1}, Lcom/android/server/cover/StateNotifier;->isLcdOffByDisabledByApp()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 533
    :cond_2
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    if-nez v1, :cond_6

    .line 534
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v1, v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 535
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 536
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/android/server/cover/StateNotifier;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 551
    :goto_0
    const-string/jumbo v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCoverSwitchStateLocked : switchState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 552
    const-string/jumbo v3, ", type = "

    .line 551
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 552
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    .line 551
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 552
    const-string/jumbo v3, ", color = "

    .line 551
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 552
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->color:I

    .line 551
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 553
    const-string/jumbo v3, ", widthPixel = "

    .line 551
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 553
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 551
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 553
    const-string/jumbo v3, ", heightPixel = "

    .line 551
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 554
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 551
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v1, 0x1

    return v1

    .line 502
    :cond_3
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "updateCoverSwitchState : Returning switch state - device does not support this type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return v3

    .line 513
    :cond_4
    if-eqz p4, :cond_2

    .line 515
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v1, :cond_2

    .line 516
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 518
    .local v0, "isScreenOn":Z
    if-eqz v0, :cond_5

    .line 521
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v2, Lcom/android/server/cover/CoverManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/cover/CoverManagerService$8;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 529
    :cond_5
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/android/server/cover/StateNotifier;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 530
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v1, v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 531
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    goto/16 :goto_0

    .line 538
    .end local v0    # "isScreenOn":Z
    :cond_6
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v1, v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 539
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 540
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverManagerService;->updateLedCoverServiceCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 542
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v2, Lcom/android/server/cover/CoverManagerService$9;

    invoke-direct {v2, p0}, Lcom/android/server/cover/CoverManagerService$9;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private sendTouchRegion([BII)V
    .locals 3
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 977
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "setCoverShape"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    if-nez p1, :cond_0

    .line 980
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "setCoverShape : coverShape is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-void

    .line 984
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 985
    :cond_1
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "setCoverShape : width is 0 or height is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return-void

    .line 989
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService;->checkNeedThread([BII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 990
    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;-><init>(Lcom/android/server/cover/CoverManagerService;[BII)V

    .line 991
    .local v0, "coverShapeThread":Lcom/android/server/cover/CoverManagerService$CoverShapeThread;
    invoke-virtual {v0}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->start()V

    .line 976
    .end local v0    # "coverShapeThread":Lcom/android/server/cover/CoverManagerService$CoverShapeThread;
    :goto_0
    return-void

    .line 993
    :cond_3
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "setCoverShape : we don\'t need to start thread because there is no valid value."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterCallback(Landroid/os/IBinder;Z)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "needCheckUid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    if-eqz p2, :cond_0

    .line 348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "unregisterCallback : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v0, 0x0

    return v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method private updateCoverAttachState(ZZ)V
    .locals 1
    .param p1, "attach"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 677
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 676
    return-void
.end method

.method private updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "attach"    # Z
    .param p2, "isBoot"    # Z
    .param p3, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 681
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 683
    :try_start_0
    const-string/jumbo v0, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverAttachState : attach="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 684
    const-string/jumbo v3, ", isBoot="

    .line 683
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    if-nez p2, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverVerifier;->onUpdateCoverAttachedLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    invoke-direct {p0, p2, p3}, Lcom/android/server/cover/CoverManagerService;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 680
    return-void

    .line 694
    :cond_1
    :try_start_1
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v2, "updateCoverVerfiedState : Returning attach state - it is same"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateCoverSwitchState(ZZ)V
    .locals 7
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 445
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 447
    :try_start_0
    const-string/jumbo v2, "CoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCoverSwitchState : switchState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 448
    const-string/jumbo v5, ", isBoot="

    .line 447
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-nez p2, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->needToBoost()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 457
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v2}, Lcom/android/server/cover/CoverVerifier;->isCoverVerified()Z

    move-result v0

    .line 458
    .local v0, "isDetected":Z
    const-string/jumbo v2, "CoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[SmartCover]updateCoverSwitchState : switchState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 459
    const-string/jumbo v5, ", isBoot="

    .line 458
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 459
    const-string/jumbo v5, ", isDetected="

    .line 458
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v0    # "isDetected":Z
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v2}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v2

    if-nez v2, :cond_6

    .line 472
    const-string/jumbo v2, "CoverManager"

    const-string/jumbo v4, "updateCoverSwitchState : Returning switch state - cover is not attached"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_5

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4, v2}, Landroid/os/PowerManager;->updateCoverState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 475
    return-void

    .line 461
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isSupportDetectCover()Z

    move-result v2

    if-nez v2, :cond_2

    .line 462
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v2}, Lcom/android/server/cover/CoverVerifier;->onUpdateCoverVerifiedLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 463
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/cover/CoverManagerService;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 445
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 465
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 474
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 478
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZ)Z

    move-result v1

    .line 480
    .local v1, "isSwitchStateUpdated":Z
    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 481
    const-string/jumbo v2, "CoverManager"

    const-string/jumbo v4, "cover opened wake up"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x6

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->wakeUp(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit v3

    .line 444
    return-void
.end method

.method private updateCoverSwitchStateLocked(Z)V
    .locals 1
    .param p1, "switchState"    # Z

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    .line 879
    return-void
.end method

.method private updateCoverWindowSize()V
    .locals 4

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverVerifier;->initializeDefaultCoverState()V

    .line 400
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 414
    :pswitch_0
    const-string/jumbo v0, "CoverManager"

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverWindowSize: no need to update cover window for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 397
    return-void

    .line 408
    :pswitch_1
    :try_start_1
    const-string/jumbo v0, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverWindowSize: updating cover window for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v2}, Lcom/android/server/cover/CoverVerifier;->updateCoverWindowSize(Lcom/samsung/android/cover/CoverState;)V

    .line 410
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v0, v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 411
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 419
    :cond_0
    :try_start_2
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v2, "updateCoverWindowSize: mCoverState is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLedCoverServiceCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 321
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    if-nez v1, :cond_1

    .line 322
    :cond_0
    return-void

    .line 326
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "updateLedCoverServiceCoverState : Done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "updateLedCoverServiceCoverState : Remote LedCoverService error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1259
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "addLedNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "addLedNotification : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    return-void

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    .line 1268
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->addLedNotification(Landroid/os/Bundle;)V

    .line 1258
    :cond_1
    return-void
.end method

.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 894
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 895
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 896
    const-string/jumbo v2, "CoverManager"

    const-string/jumbo v3, "getCoverState : caller is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void

    .line 901
    :cond_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 902
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v2}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v1

    .line 903
    .local v1, "disabled":Z
    if-eqz v1, :cond_2

    .line 904
    const/4 v0, 0x1

    .line 906
    .local v0, "coverSwitchState":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 907
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v3}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 893
    .end local v0    # "coverSwitchState":Z
    .end local v1    # "disabled":Z
    :cond_1
    return-void

    .line 905
    .restart local v1    # "disabled":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "coverSwitchState":Z
    goto :goto_0

    .end local v0    # "coverSwitchState":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "coverSwitchState":Z
    goto :goto_0

    .line 906
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1292
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1293
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1294
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1293
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1296
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "disableLcdOffByCover : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/4 v1, 0x0

    return v1

    .line 1300
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/cover/StateNotifier;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    .line 1302
    .local v0, "lcdOffByCoverDisabled":Z
    if-eqz v0, :cond_2

    .line 1303
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v1, :cond_1

    .line 1304
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v1, v5}, Lcom/android/server/cover/BaseNfcLedCoverController;->setLcdOffDisabledByCover(Z)V

    .line 1305
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1, p0}, Lcom/android/server/cover/StateNotifier;->registerLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    .line 1307
    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    if-eqz v1, :cond_2

    .line 1308
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    invoke-virtual {v1, v5}, Lcom/android/server/cover/NeonCoverServiceController;->setLcdOffDisabledByCover(Z)V

    .line 1309
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1, p0}, Lcom/android/server/cover/StateNotifier;->registerLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    .line 1312
    :cond_2
    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1362
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1363
    const-string/jumbo v1, ", uid="

    .line 1361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    return-void

    .line 1367
    :cond_0
    const-string/jumbo v0, "COVER MANAGER SERVICE (dumpsys cover)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    const-string/jumbo v0, " Current Cover state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1371
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1372
    const-string/jumbo v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverVerifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1375
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/Feature;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/StateNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_1

    .line 1379
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/LedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1381
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2

    .line 1382
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/BaseNfcLedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1384
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    if-eqz v0, :cond_3

    .line 1385
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/NeonCoverServiceController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1387
    :cond_3
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverTestModeUtils;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1358
    return-void

    .line 1370
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1321
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1320
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1323
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "enableLcdOffByCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const/4 v0, 0x0

    return v0

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/StateNotifier;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method getCoverAttachStateFromInputManager()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 859
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, -0x1

    const/16 v4, -0x100

    .line 860
    const/16 v5, 0x1a

    .line 859
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 861
    .local v1, "sw":I
    if-lez v1, :cond_0

    .line 862
    const/4 v2, 0x1

    return v2

    .line 863
    :cond_0
    if-nez v1, :cond_1

    .line 864
    return v7

    .line 866
    :cond_1
    return v6

    .line 868
    .end local v1    # "sw":I
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CoverManager"

    const-string/jumbo v3, "getSwitchStateOfCoveAttach(). Can\'t get cover attach state!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return v6
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    .prologue
    .line 1173
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->getCoverState(Z)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method public getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1129
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverManagerService;->getCoverState(Z)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    return-object v1

    .line 1133
    :cond_0
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "getCoverStateForExternal : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const-string/jumbo v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCoverStateForExternal : callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    return-object v4
.end method

.method getCoverSwitchStateFromInputManager()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 838
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, -0x1

    const/16 v4, -0x100

    .line 839
    const/16 v5, 0x15

    .line 838
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 840
    .local v1, "sw":I
    if-lez v1, :cond_0

    .line 841
    const/4 v2, 0x1

    return v2

    .line 842
    :cond_0
    if-nez v1, :cond_1

    .line 843
    return v7

    .line 845
    :cond_1
    return v6

    .line 847
    .end local v1    # "sw":I
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CoverManager"

    const-string/jumbo v3, "getSwitchStateOfCover(). Can\'t get cover state!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return v6
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 876
    const/high16 v0, 0x1090000

    return v0
.end method

.method public isCoverManagerDisabled()Z
    .locals 2

    .prologue
    .line 885
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 886
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    return v0
.end method

.method public notifyCoverAttachStateChanged(JZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z

    .prologue
    const/4 v2, 0x0

    .line 562
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 564
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "notifyCoverAttachStateChanged : Returning!! not system ready yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void

    .line 569
    :cond_0
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    if-nez v0, :cond_1

    .line 571
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "notifyCoverAttachStateChanged : Returning!! Now is the test mode."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void

    .line 575
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    .line 577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 578
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 582
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    .line 584
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/cover/CoverManagerService;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    .line 561
    :goto_0
    return-void

    .line 586
    :cond_3
    invoke-direct {p0, p3, v2}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZ)V

    goto :goto_0
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 2
    .param p1, "whenNanos"    # J
    .param p3, "switchState"    # Z

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 362
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "notifyCoverSwitchStateChanged : Returning!! not system ready yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void

    .line 367
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 368
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "notifyCoverSwitchStateChanged : Returning! Cover manager disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void

    .line 378
    :cond_2
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "Block cover event because it is Factory app running."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void

    .line 383
    :cond_3
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 384
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "Block cover event because it is Desktop Dock enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iput-boolean p3, p0, Lcom/android/server/cover/CoverManagerService;->mLastSwitchStateForDesktopMode:Z

    .line 386
    return-void

    .line 389
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchState(ZZ)V

    .line 359
    return-void
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .locals 14
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z
    .param p4, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 592
    iget-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    if-nez v3, :cond_0

    .line 594
    const-string/jumbo v3, "CoverManager"

    const-string/jumbo v4, "notifySmartCoverAttachStateChanged : Returning!! not system ready yet!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void

    .line 599
    :cond_0
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    if-nez v3, :cond_1

    .line 601
    const-string/jumbo v3, "CoverManager"

    const-string/jumbo v4, "notifySmartCoverAttachStateChanged : Returning!! Now is the test mode."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void

    .line 605
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    .line 607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 608
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 612
    :cond_2
    const-string/jumbo v3, "CoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySmartCoverAttachStateChanged : attach = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v2, 0x0

    .line 616
    .local v2, "smartCoverState":Lcom/samsung/android/cover/CoverState;
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 617
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_6

    .line 618
    if-eqz p4, :cond_3

    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    iget v3, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0xff

    if-eq v3, v4, :cond_6

    .line 621
    :cond_3
    const-string/jumbo v12, "1com.samsung.android.sdk.cover.hellocover"

    .line 622
    .local v12, "appUri":Ljava/lang/String;
    const/4 v3, 0x5

    new-array v9, v3, [B

    .local v9, "appData":[B
    fill-array-data v9, :array_0

    .line 623
    const-string/jumbo v13, "##########"

    .line 624
    .local v13, "serialNumber":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/cover/CoverState;

    .end local v2    # "smartCoverState":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    .line 625
    :goto_0
    const-string/jumbo v8, "1com.samsung.android.sdk.cover.hellocover"

    const-string/jumbo v10, "##########"

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move/from16 v6, p3

    .line 624
    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIZILjava/lang/String;[BLjava/lang/String;Z)V

    .line 627
    .local v2, "smartCoverState":Lcom/samsung/android/cover/CoverState;
    const-string/jumbo v3, "CoverManager"

    const-string/jumbo v4, "notifySmartCoverAttachStateChanged : make smartCovrerState for test"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v3, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 634
    .end local v2    # "smartCoverState":Lcom/samsung/android/cover/CoverState;
    .end local v9    # "appData":[B
    .end local v12    # "appUri":Ljava/lang/String;
    .end local v13    # "serialNumber":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 635
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0xff

    if-ne v3, v4, :cond_4

    .line 636
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v3, v3, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverManagerService;->isThemeCover(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 591
    :cond_4
    :goto_2
    return-void

    .line 624
    .restart local v9    # "appData":[B
    .restart local v12    # "appUri":Ljava/lang/String;
    .restart local v13    # "serialNumber":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 631
    .end local v9    # "appData":[B
    .end local v12    # "appUri":Ljava/lang/String;
    .end local v13    # "serialNumber":Ljava/lang/String;
    .local v2, "smartCoverState":Lcom/samsung/android/cover/CoverState;
    :cond_6
    const/4 v3, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v3, v1}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    goto :goto_1

    .line 637
    .end local v2    # "smartCoverState":Lcom/samsung/android/cover/CoverState;
    :cond_7
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    if-nez v3, :cond_8

    .line 638
    new-instance v3, Lcom/android/server/cover/SmartCoverAppController;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/cover/SmartCoverAppController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    goto :goto_2

    .line 640
    :cond_8
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v4, v4, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v3, v0, v4}, Lcom/android/server/cover/SmartCoverAppController;->smartCoverAttachStateChanged(ZLjava/lang/String;)V

    .line 641
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v4, v4, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/cover/SmartCoverAppController;->getSmartCoverPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    goto :goto_2

    .line 622
    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
    .end array-data
.end method

.method public onCoverAppCovered(Z)I
    .locals 2
    .param p1, "covered"    # Z

    .prologue
    .line 950
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "onCoverAppCovered!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 954
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier;->onCoverAppCovered(Z)I

    move-result v0

    return v0
.end method

.method public onLcdOffByCoverEnabled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1332
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/BaseNfcLedCoverController;->setLcdOffDisabledByCover(Z)V

    .line 1334
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p0}, Lcom/android/server/cover/StateNotifier;->unregisterLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    if-eqz v0, :cond_1

    .line 1337
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NeonCoverServiceController;->setLcdOffDisabledByCover(Z)V

    .line 1338
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p0}, Lcom/android/server/cover/StateNotifier;->unregisterLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    .line 1331
    :cond_1
    return-void
.end method

.method public readTouchChannelCountForExternal()Landroid/graphics/Point;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1140
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->readTouchChannelCount()Landroid/graphics/Point;

    move-result-object v1

    return-object v1

    .line 1144
    :cond_0
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "readTouchChannelCountForExternal : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const-string/jumbo v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readTouchChannelCountForExternal : callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    return-object v4
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 315
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/cover/CoverManagerService;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    .line 314
    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1163
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/cover/CoverManagerService;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    .line 1162
    return-void
.end method

.method public registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1107
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1109
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/cover/CoverManagerService;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    .line 1106
    :goto_0
    return-void

    .line 1111
    :cond_0
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "registerListenerCallbackForExternal : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const-string/jumbo v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListenerCallbackForExternal : callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1182
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1181
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1184
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "registerNfcTouchListenerCallback : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    return-void

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    .line 1189
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/BaseNfcLedCoverController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    if-eqz v0, :cond_2

    .line 1192
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/NeonCoverServiceController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 1179
    :cond_2
    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1275
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "removeLedNotification : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    return-void

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    .line 1284
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->removeLedNotification(Landroid/os/Bundle;)V

    .line 1274
    :cond_1
    return-void
.end method

.method public sendDataToCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 914
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "sendDataToCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-void

    .line 920
    :cond_0
    const-string/jumbo v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "sendDataToCover : ignoring call from SystemUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    return-void

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_2

    .line 926
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    .line 913
    :cond_2
    return-void
.end method

.method public sendDataToNfcLedCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "sendStateDataToCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return-void

    .line 1227
    :cond_0
    const-string/jumbo v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1228
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "sendDataToCover : ignoring call from SystemUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    return-void

    .line 1232
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2

    .line 1233
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 1234
    return-void

    .line 1237
    :cond_2
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1240
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 1241
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->initializeLedCoverService()V

    .line 1242
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_3

    .line 1243
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->initializeLedCoverController()V

    .line 1245
    :cond_3
    return-void

    .line 1247
    :cond_4
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_5

    .line 1248
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->initializeLedCoverController()V

    .line 1250
    :cond_5
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_6

    .line 1251
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 1220
    :cond_6
    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    .prologue
    .line 932
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 933
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0}, Lcom/android/server/cover/LedCoverController;->sendPowerKeyToCover()V

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2

    .line 940
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendPowerKeyToCover()V

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    if-eqz v0, :cond_3

    .line 943
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    invoke-virtual {v0}, Lcom/android/server/cover/NeonCoverServiceController;->sendPowerKeyToCover()V

    .line 931
    :cond_3
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1346
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1345
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    const-string/jumbo v0, "CoverManager"

    const-string/jumbo v1, "sendSystemEvent : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return-void

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    .line 1343
    :cond_1
    return-void
.end method

.method public sendTouchRegionForExternal([BII)V
    .locals 4
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1151
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1152
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService;->sendTouchRegion([BII)V

    .line 1150
    :goto_0
    return-void

    .line 1155
    :cond_0
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "sendTouchRegionForExternal : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const-string/jumbo v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTouchRegionForExternal : callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCoverPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 658
    const-string/jumbo v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverPackage : package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 661
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    if-eqz p1, :cond_1

    .line 665
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    .line 664
    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 667
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    if-nez v0, :cond_2

    .line 668
    new-instance v0, Lcom/android/server/cover/SmartCoverAppController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/SmartCoverAppController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    .line 657
    :cond_1
    :goto_0
    return-void

    .line 670
    :cond_2
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    .line 671
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/server/cover/SmartCoverAppController;->startCoverService(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 251
    const-string/jumbo v3, "CoverManager"

    const-string/jumbo v4, "systemReady!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    .line 255
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v3, Lcom/android/server/cover/CoverManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/cover/CoverManagerService$7;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    .line 262
    const-wide/16 v4, 0x1388

    .line 256
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 281
    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v3, "com.sec.feature.cover.sview"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 281
    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 284
    const-string/jumbo v3, "display_size_forced"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mScreenChangeObserver:Landroid/database/ContentObserver;

    .line 283
    invoke-virtual {v1, v3, v2, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 286
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 287
    const-string/jumbo v3, "display_density_forced"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mScreenChangeObserver:Landroid/database/ContentObserver;

    .line 286
    invoke-virtual {v1, v3, v2, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 249
    :cond_0
    return-void

    .line 263
    :cond_1
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v3, "Nfc authentication supported, skipping creating first coverState"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverAttachStateFromInputManager()I

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    .line 267
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZ)V

    .line 270
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 271
    .local v0, "coverSwitchState":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 272
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    .line 271
    if-eqz v1, :cond_5

    .line 273
    :cond_4
    const/4 v0, 0x1

    .line 276
    :cond_5
    invoke-direct {p0, v0, v2}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchState(ZZ)V

    goto :goto_0

    .line 270
    .end local v0    # "coverSwitchState":Z
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "coverSwitchState":Z
    goto :goto_1
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1168
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/cover/CoverManagerService;->unregisterCallback(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public unregisterCallbackForExternal(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1118
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    invoke-direct {p0, p1, v4}, Lcom/android/server/cover/CoverManagerService;->unregisterCallback(Landroid/os/IBinder;Z)Z

    move-result v1

    return v1

    .line 1122
    :cond_0
    const-string/jumbo v1, "CoverManager"

    const-string/jumbo v2, "unregisterCallbackForExternal : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const-string/jumbo v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCallbackForExternal : callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    return v4
.end method

.method public unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1199
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1200
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1201
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1200
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1203
    const-string/jumbo v2, "CoverManager"

    const-string/jumbo v3, "unregisterNfcTouchListenerCallback : caller is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const/4 v2, 0x0

    return v2

    .line 1207
    :cond_0
    const/4 v0, 0x0

    .line 1208
    .local v0, "ledUnregistered":Z
    const/4 v1, 0x0

    .line 1209
    .local v1, "neonUnregistered":Z
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v2, :cond_1

    .line 1210
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v2, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v0

    .line 1212
    .end local v0    # "ledUnregistered":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    if-eqz v2, :cond_2

    .line 1213
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mNeonCoverController:Lcom/android/server/cover/NeonCoverServiceController;

    invoke-virtual {v2, p1}, Lcom/android/server/cover/NeonCoverServiceController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v1

    .line 1215
    .end local v1    # "neonUnregistered":Z
    :cond_2
    if-nez v0, :cond_3

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method
