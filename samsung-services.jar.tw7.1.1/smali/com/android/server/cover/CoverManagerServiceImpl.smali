.class Lcom/android/server/cover/CoverManagerServiceImpl;
.super Lcom/samsung/android/cover/ICoverManager$Stub;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;
.implements Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverManagerServiceImpl$1;,
        Lcom/android/server/cover/CoverManagerServiceImpl$2;,
        Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;,
        Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;
    }
.end annotation


# static fields
.field private static final COVER_ABSENT:I = -0x1

.field private static final COVER_ATTACH:I = 0x1

.field private static final COVER_CLOSED:I = 0x0

.field private static final COVER_DETACH:I = 0x0

.field private static final COVER_OPEN:I = 0x1

.field private static final MSG_COVER_EVENT_FINISHED:I = 0x12d

.field private static final MSG_UPDATE_WINDOW_SIZE:I = 0x12c

.field private static final SERIAL_NUMBER_CUT_LENGTH:I = 0x4

.field private static final SERVICE_VERSION:I = 0x10b0000

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationStartCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

.field private final mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

.field private final mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

.field private final mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

.field private final mCoverState:Lcom/samsung/android/cover/CoverState;

.field private final mCoverStateLock:Ljava/lang/Object;

.field private final mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

.field private final mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

.field private mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

.field private final mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mLedCoverController:Lcom/android/server/cover/LedCoverController;

.field private mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

.field private mPackageName:Ljava/lang/String;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mScreenChangeObserver:Landroid/database/ContentObserver;

.field private mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

.field private final mStateNotifier:Lcom/android/server/cover/StateNotifier;

.field private mSystemReady:Z

.field private final mThread:Landroid/os/HandlerThread;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/CoverManagerServiceImpl;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mAnimationStartCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/cover/CoverHideAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/cover/CoverServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/cover/CoverManagerServiceImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/cover/StateNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/cover/CoverManagerServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/android/server/input/InputManagerService;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/cover/CoverManagerServiceImpl;ZLcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "attach"    # Z
    .param p2, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/CoverManagerServiceImpl;->notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/cover/CoverManagerServiceImpl;ZZLcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "attach"    # Z
    .param p2, "isBoot"    # Z
    .param p3, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/cover/CoverManagerServiceImpl;Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/cover/CoverManagerServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverWindowSize()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    .line 80
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 93
    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$1;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mAnimationStartCallback:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/cover/CoverManagerServiceImpl$2;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mScreenChangeObserver:Landroid/database/ContentObserver;

    .line 121
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 122
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 123
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 126
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cover"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    .line 127
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 128
    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;Landroid/os/Looper;Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    .line 129
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance v1, Lcom/android/server/cover/CoverManagerServiceImpl$3;

    invoke-direct {v1, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$3;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 137
    new-instance v0, Lcom/android/server/cover/CoverVerifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/CoverVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    .line 138
    new-instance v0, Lcom/android/server/cover/CoverServiceManager;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    invoke-virtual {v2}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/cover/CoverServiceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    .line 139
    new-instance v0, Lcom/android/server/cover/StateNotifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/StateNotifier;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    .line 140
    new-instance v0, Lcom/android/server/cover/CoverDisabler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/CoverDisabler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    .line 141
    new-instance v0, Lcom/android/server/cover/CoverHideAnimator;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/CoverHideAnimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    .line 142
    new-instance v0, Lcom/android/server/cover/CoverManagerWhiteLists;

    invoke-direct {v0}, Lcom/android/server/cover/CoverManagerWhiteLists;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    .line 143
    new-instance v0, Lcom/android/server/cover/CoverTestModeUtils;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/cover/CoverManagerServiceImpl$4;

    invoke-direct {v2, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$4;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/CoverTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    .line 120
    return-void
.end method

.method private checkNeedThread([BII)Z
    .locals 3
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 1057
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 1058
    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 1057
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    return v2
.end method

.method private cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 222
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    .line 223
    return-object v0
.end method

.method private getCoverAttachStateFromInputManager()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 657
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v1

    .line 658
    .local v1, "im":Lcom/android/server/input/InputManagerService;
    if-eqz v1, :cond_2

    .line 660
    const/4 v3, -0x1

    const/16 v4, -0x100

    const/16 v5, 0x1a

    :try_start_0
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 661
    .local v2, "sw":I
    if-lez v2, :cond_0

    .line 662
    const/4 v3, 0x1

    return v3

    .line 663
    :cond_0
    if-nez v2, :cond_1

    .line 664
    return v7

    .line 666
    :cond_1
    return v6

    .line 668
    .end local v2    # "sw":I
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "getCoverAttachStateFromInputManager : Can\'t get cover attach state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v6

    .line 672
    :cond_2
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "getCoverAttachStateFromInputManager : InputManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCoverStateInternal(Z)Lcom/samsung/android/cover/CoverState;
    .locals 4
    .param p1, "needCheckUid"    # Z

    .prologue
    .line 716
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 718
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 717
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0

    .line 719
    :cond_1
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "getCoverStateInternal : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCoverSwitchStateFromInputManager()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 678
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v1

    .line 679
    .local v1, "im":Lcom/android/server/input/InputManagerService;
    if-eqz v1, :cond_2

    .line 681
    const/4 v3, -0x1

    const/16 v4, -0x100

    const/16 v5, 0x15

    :try_start_0
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 682
    .local v2, "sw":I
    if-lez v2, :cond_0

    .line 683
    const/4 v3, 0x1

    return v3

    .line 684
    :cond_0
    if-nez v2, :cond_1

    .line 685
    return v7

    .line 687
    :cond_1
    return v6

    .line 689
    .end local v2    # "sw":I
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "getCoverSwitchStateFromInputManager : Can\'t get cover switch state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return v6

    .line 694
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "getCoverSwitchStateFromInputManager : InputManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return v6
.end method

.method private getInputManagerService()Lcom/android/server/input/InputManagerService;
    .locals 2

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-nez v1, :cond_0

    .line 236
    const-string v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 237
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService;

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 239
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-object v1
.end method

.method private getWindowManagerService()Lcom/android/server/wm/WindowManagerService;
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_0

    .line 228
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 229
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 231
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v1
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 168
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 170
    .local v1, "h":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/cover/CoverManagerServiceImpl$5;

    invoke-direct {v2, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$5;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    .line 180
    const-wide/16 v4, 0x1388

    .line 170
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    .end local v1    # "h":Landroid/os/Handler;
    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isSupportWindowCover()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 195
    const-string v4, "display_size_forced"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mScreenChangeObserver:Landroid/database/ContentObserver;

    .line 194
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 197
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 198
    const-string v4, "display_density_forced"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mScreenChangeObserver:Landroid/database/ContentObserver;

    .line 197
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 167
    :cond_0
    return-void

    .line 181
    :cond_1
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    sget-object v2, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "Nfc authentication supported, skipping creating first coverState"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_2
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverAttachStateFromInputManager()I

    move-result v4

    if-ne v4, v3, :cond_3

    move v2, v3

    :cond_3
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 186
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    .line 188
    .local v0, "coverSwitchState":Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v2}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 189
    :cond_4
    const/4 v0, 0x1

    .line 191
    :cond_5
    invoke-direct {p0, v0, v3}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverSwitchState(ZZ)V

    goto :goto_0

    .line 186
    .end local v0    # "coverSwitchState":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "coverSwitchState":Z
    goto :goto_1
.end method

.method private initializeCoverController(ZII)V
    .locals 3
    .param p1, "attach"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I

    .prologue
    .line 605
    sparse-switch p2, :sswitch_data_0

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 607
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_1

    .line 609
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;->updateNfcLedCoverAttachStateLocked(ZI)V

    goto :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-nez v0, :cond_3

    .line 616
    new-instance v0, Lcom/android/server/cover/LedCoverController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/LedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/LedCoverController;->updateLedCoverAttachStateLocked(ZII)V

    goto :goto_0

    .line 622
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportNeonCover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Lcom/android/server/cover/GenericCoverServiceController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/GenericCoverServiceController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    goto :goto_0

    .line 629
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-nez v0, :cond_0

    .line 631
    new-instance v0, Lcom/android/server/cover/GenericCoverServiceController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/GenericCoverServiceController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    goto :goto_0

    .line 605
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method private initializeLedCoverController()V
    .locals 4

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->getSupportNfcLedCoverLevel()I

    move-result v0

    .line 640
    .local v0, "nfcLedCoverLevel":I
    sparse-switch v0, :sswitch_data_0

    .line 652
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeLedCoverController : unsupported NfcLedCover level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_0
    return-void

    .line 643
    :sswitch_0
    new-instance v1, Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/server/cover/DreamyNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    goto :goto_0

    .line 646
    :sswitch_1
    new-instance v1, Lcom/android/server/cover/GracefulNfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    goto :goto_0

    .line 649
    :sswitch_2
    new-instance v1, Lcom/android/server/cover/NfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/server/cover/NfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    goto :goto_0

    .line 640
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x14 -> :sswitch_1
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method private isThemeCover(Ljava/lang/String;)Z
    .locals 3
    .param p1, "coverUri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    .line 367
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "isThemeCover : it is theme cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, 0x1

    return v0

    .line 370
    :cond_0
    return v2
.end method

.method private notifyCoverAttachStateChangedInternal(Z)V
    .locals 2
    .param p1, "attach"    # Z

    .prologue
    .line 314
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 313
    return-void
.end method

.method private notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "attach"    # Z
    .param p2, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 336
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v1}, Lcom/android/server/cover/BaseNfcLedCoverController;->notifyAuthenticationResponse()V

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    if-eqz p2, :cond_1

    iget v1, p2, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v1, v3, :cond_2

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 342
    :goto_0
    invoke-static {v1, p1}, Lcom/android/server/cover/CoverTestModeUtils;->getSmartCoverStateForTestMode(ZZ)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 344
    .local v0, "smartCoverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_2

    .line 345
    move-object p2, v0

    .line 349
    .end local v0    # "smartCoverState":Lcom/samsung/android/cover/CoverState;
    :cond_2
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 351
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 353
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 354
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->isThemeCover(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    :goto_1
    monitor-exit v2

    .line 334
    return-void

    :cond_4
    move v1, v2

    .line 343
    goto :goto_0

    .line 355
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    if-nez v1, :cond_6

    .line 356
    new-instance v1, Lcom/android/server/cover/SmartCoverAppController;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/cover/SmartCoverAppController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 351
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 358
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/server/cover/SmartCoverAppController;->smartCoverAttachStateChanged(ZLjava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/cover/SmartCoverAppController;->getSmartCoverPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private readTouchChannelCount()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 1010
    const/4 v0, 0x0

    .line 1011
    .local v0, "point":Landroid/graphics/Point;
    const-string v3, "get_x_num"

    invoke-static {v3}, Lcom/android/server/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v1

    .line 1012
    .local v1, "x":I
    const-string v3, "get_y_num"

    invoke-static {v3}, Lcom/android/server/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v2

    .line 1017
    .local v2, "y":I
    if-le v1, v2, :cond_0

    .line 1018
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "point":Landroid/graphics/Point;
    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 1022
    .local v0, "point":Landroid/graphics/Point;
    :goto_0
    return-object v0

    .line 1020
    .local v0, "point":Landroid/graphics/Point;
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "point":Landroid/graphics/Point;
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .local v0, "point":Landroid/graphics/Point;
    goto :goto_0
.end method

.method private registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .param p4, "needCheckUid"    # Z

    .prologue
    .line 265
    if-eqz p4, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/StateNotifier;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 264
    return-void

    .line 267
    :cond_1
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "registerListenerCallbackInternal : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method private sendContextServiceLogForSerialNumberLocked()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 450
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "serialNumber":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 452
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "number":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/cover/ContextLoggingManager;->sendContextServiceLogForSerialNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 449
    .end local v0    # "number":Ljava/lang/String;
    :goto_0
    return-void

    .line 455
    :cond_0
    sget-object v2, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cover serial number is null or too short, wtf? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 8
    .param p1, "isBoot"    # Z
    .param p2, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 388
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v3}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v0

    .line 389
    .local v0, "attach":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v3

    if-eqz v3, :cond_6

    :cond_0
    const/4 v1, 0x1

    .line 391
    .local v1, "switchState":Z
    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 394
    const/4 v1, 0x1

    .line 397
    :cond_1
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3, v4, p2}, Lcom/android/server/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    .line 399
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    .line 402
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isMobileKeyboardFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 403
    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 404
    :cond_2
    const/4 v1, 0x1

    .line 405
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 409
    :cond_3
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/cover/CoverManagerServiceImpl;->initializeCoverController(ZII)V

    .line 411
    if-eqz v0, :cond_8

    .line 413
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v3, v2, v6}, Lcom/android/server/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 415
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v4

    invoke-virtual {v3, v7, v2, v4}, Lcom/android/server/cover/StateNotifier;->updateCoverAttachState(ZIZ)V

    .line 416
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 418
    invoke-direct {p0, v1, p1, v7, v6}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    .line 422
    :goto_1
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendContextServiceLogForSerialNumberLocked()V

    .line 423
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverInformationToAgentLocked(Z)V

    .line 443
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isRuggedizedFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 444
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Lcom/android/server/cover/CoverManagerUtils;->showRuggedizedPopup(Landroid/content/Context;ZZ)V

    .line 446
    :cond_5
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCoverAttachStateLocked : coverAttached = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", switchState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 389
    .end local v1    # "switchState":Z
    .end local v2    # "type":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "switchState":Z
    goto/16 :goto_0

    .line 420
    .restart local v2    # "type":I
    :cond_7
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3, v1}, Lcom/android/server/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    goto :goto_1

    .line 426
    :cond_8
    invoke-direct {p0, v7, p1, v7, v6}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    .line 428
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v4

    invoke-virtual {v3, v6, v2, v4}, Lcom/android/server/cover/StateNotifier;->updateCoverAttachState(ZIZ)V

    .line 430
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v3, v2}, Lcom/android/server/cover/CoverServiceManager;->unbindCoverService(I)V

    .line 432
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3, v7}, Lcom/android/server/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    .line 434
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v3, :cond_9

    .line 435
    iput-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    goto :goto_2

    .line 436
    :cond_9
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v3, :cond_a

    .line 437
    iput-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    goto :goto_2

    .line 438
    :cond_a
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v3, :cond_4

    .line 439
    iput-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    goto :goto_2
.end method

.method private sendCoverInformationToAgentLocked(Z)V
    .locals 2
    .param p1, "isBoot"    # Z

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/cover/CoverManagerUtils;->sendCoverInformationToAgent(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 459
    :cond_0
    return-void
.end method

.method private sendCoverSwitchStateLocked(ZZZZ)Z
    .locals 8
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z
    .param p3, "force"    # Z
    .param p4, "playHideAnimation"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 535
    if-nez p3, :cond_1

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    if-ne p1, v3, :cond_1

    .line 536
    sget-boolean v3, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    .line 537
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "sendCoverSwitchStateLocked : return false because switch state is same"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    return v6

    .line 542
    :cond_1
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    .line 543
    .local v2, "type":I
    if-nez p3, :cond_2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/server/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 547
    :cond_2
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    .line 549
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    invoke-virtual {v3}, Lcom/android/server/cover/CoverHideAnimator;->cancelHideAnimation()V

    .line 553
    const/16 v3, 0x8

    if-eq v2, v3, :cond_6

    .line 554
    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v3}, Lcom/android/server/cover/StateNotifier;->isLcdOffByDisabledByApp()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 575
    :cond_3
    if-eqz v2, :cond_4

    .line 576
    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    .line 577
    :cond_4
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 578
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 579
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 580
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v3, v0}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 581
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/cover/StateNotifier;->updatePowerState(IZ)V

    .line 597
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    :goto_0
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCoverSwitchStateLocked : switchState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v5, v5, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 598
    const-string v5, ", type = "

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 598
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v5, v5, Lcom/samsung/android/cover/CoverState;->type:I

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 598
    const-string v5, ", color = "

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 598
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v5, v5, Lcom/samsung/android/cover/CoverState;->color:I

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 599
    const-string v5, ", widthPixel = "

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 599
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v5, v5, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 599
    const-string v5, ", heightPixel = "

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 599
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v5, v5, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return v7

    .line 544
    :cond_5
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCoverSwitchStateLocked : return false because type("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return v6

    .line 553
    :cond_6
    if-eqz p4, :cond_3

    .line 556
    if-eqz p1, :cond_3

    .line 557
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    .line 558
    .local v1, "isScreenOn":Z
    if-eqz v1, :cond_7

    .line 559
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance v4, Lcom/android/server/cover/CoverManagerServiceImpl$6;

    invoke-direct {v4, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$6;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v3, v4}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 569
    :cond_7
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v3, v2, v7}, Lcom/android/server/cover/StateNotifier;->updatePowerState(IZ)V

    .line 570
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 571
    .restart local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 572
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 573
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v3, v0}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_0

    .line 583
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v1    # "isScreenOn":Z
    :cond_8
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 584
    .restart local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 585
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 586
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v3, v0}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 588
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    new-instance v4, Lcom/android/server/cover/CoverManagerServiceImpl$7;

    invoke-direct {v4, p0}, Lcom/android/server/cover/CoverManagerServiceImpl$7;-><init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V

    invoke-virtual {v3, v4}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private sendTouchRegion([BII)V
    .locals 4
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 1037
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "sendTouchRegion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    if-nez p1, :cond_0

    .line 1039
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "sendTouchRegion : coverShape is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    return-void

    .line 1043
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 1044
    :cond_1
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "sendTouchRegion : width is 0 or height is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return-void

    .line 1048
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerServiceImpl;->checkNeedThread([BII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1049
    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;

    invoke-direct {v0, p1, p2, p3, v3}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;-><init>([BIILcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;)V

    .line 1050
    .local v0, "coverShapeThread":Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;
    invoke-virtual {v0}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->start()V

    .line 1036
    .end local v0    # "coverShapeThread":Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;
    :goto_0
    return-void

    .line 1052
    :cond_3
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "sendTouchRegion : we don\'t need to start thread because there is no valid value."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterCallbackInternal(Landroid/os/IBinder;Z)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "needCheckUid"    # Z

    .prologue
    .line 290
    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v0

    return v0

    .line 292
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "attach"    # Z
    .param p2, "isBoot"    # Z
    .param p3, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 374
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCoverAttachState : attach="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isBoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    if-nez p2, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverVerifier;->updateCoverAttachState(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 373
    :goto_0
    return-void

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 383
    :cond_1
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "updateCoverAttachState : Returning attach state - it is same"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 1096
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getWindowManagerService()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    .line 1097
    .local v0, "wm":Lcom/android/server/wm/WindowManagerService;
    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 1095
    :goto_0
    return-void

    .line 1100
    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateCoverStateToWindowManagerLocked : wms is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCoverSwitchState(ZZ)V
    .locals 7
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 499
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 500
    :try_start_0
    sget-object v4, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCoverSwitchState : switchState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isBoot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-nez p2, :cond_1

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/cover/CoverManagerUtils;->needsCPUBoostCover(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 503
    :cond_0
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    .line 506
    :cond_1
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 507
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isSupportDetectCover()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 515
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v4}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v4

    if-nez v4, :cond_7

    .line 516
    sget-boolean v4, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v4, :cond_3

    .line 517
    sget-object v4, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v5, "updateCoverSwitchState : return because cover is not attached"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_3
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v4, v1}, Landroid/os/PowerManager;->updateCoverState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 520
    return-void

    .line 508
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v4}, Lcom/android/server/cover/CoverVerifier;->updateCoverVerification()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 509
    const/4 v4, 0x0

    invoke-direct {p0, p2, v4}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 511
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_6
    move v1, v2

    .line 519
    goto :goto_1

    .line 523
    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z

    move-result v0

    .line 524
    .local v0, "isUpdated":Z
    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 525
    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_8

    .line 526
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateCoverSwitchState : cover is opened, so wake up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_8
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v2, 0x6

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/PowerManager;->semWakeUp(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    monitor-exit v3

    .line 498
    return-void
.end method

.method private updateCoverWindowSize()V
    .locals 5

    .prologue
    .line 1105
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1106
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverVerifier;->initializeDefaultCoverState()V

    .line 1107
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1121
    :pswitch_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverWindowSize: no need to update cover window for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 1104
    return-void

    .line 1114
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverWindowSize: updating cover window for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3}, Lcom/android/server/cover/CoverVerifier;->updateCoverWindowSize(Lcom/samsung/android/cover/CoverState;)V

    .line 1116
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 1117
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 1118
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1105
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1107
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
    .line 884
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 886
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 885
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 890
    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "addLedNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->addLedNotification(Landroid/os/Bundle;)V

    .line 883
    :cond_1
    return-void

    .line 887
    :cond_2
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "addLedNotification : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-void
.end method

.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 751
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 752
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 751
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 757
    :cond_0
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 758
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v1

    .line 759
    .local v1, "disabled":Z
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .line 760
    .local v2, "inputSwitchState":Z
    :goto_0
    if-nez v1, :cond_4

    move v0, v2

    .line 761
    :goto_1
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3, v2}, Lcom/android/server/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    .line 762
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 763
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-direct {p0, v0, v4, v5, v6}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 749
    .end local v1    # "disabled":Z
    .end local v2    # "inputSwitchState":Z
    :cond_1
    return-void

    .line 753
    :cond_2
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "disableCoverManager : caller is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void

    .line 759
    .restart local v1    # "disabled":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "inputSwitchState":Z
    goto :goto_0

    .line 760
    :cond_4
    const/4 v0, 0x1

    .local v0, "coverSwitchState":Z
    goto :goto_1

    .line 762
    .end local v0    # "coverSwitchState":Z
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
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

    .line 927
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 928
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 929
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 928
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 933
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/cover/StateNotifier;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    .line 934
    .local v0, "lcdOffByCoverDisabled":Z
    if-eqz v0, :cond_2

    .line 935
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v1, :cond_1

    .line 936
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v1, v5}, Lcom/android/server/cover/BaseNfcLedCoverController;->setLcdOffDisabledByCover(Z)V

    .line 937
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1, p0}, Lcom/android/server/cover/StateNotifier;->registerLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    .line 939
    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v1, :cond_2

    .line 940
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-virtual {v1, v5}, Lcom/android/server/cover/GenericCoverServiceController;->setLcdOffDisabledByCover(Z)V

    .line 941
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1, p0}, Lcom/android/server/cover/StateNotifier;->registerLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    .line 944
    :cond_2
    return v0

    .line 930
    .end local v0    # "lcdOffByCoverDisabled":Z
    :cond_3
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "disableLcdOffByCover : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v1, 0x0

    return v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1139
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1139
    const-string v1, ", uid="

    .line 1138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1139
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1140
    return-void

    .line 1143
    :cond_0
    const-string v0, "COVER MANAGER SERVICE (dumpsys cover)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1145
    const-string v0, " Current Cover state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1147
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1148
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverVerifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1151
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/Feature;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverServiceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/StateNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/LedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1158
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/BaseNfcLedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1161
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v0, :cond_3

    .line 1162
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/GenericCoverServiceController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1164
    :cond_3
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverTestModeUtils;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1135
    return-void

    .line 1146
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
    .line 950
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 952
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 951
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/StateNotifier;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    .line 953
    :cond_1
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "enableLcdOffByCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v0, 0x0

    return v0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 701
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverStateInternal(Z)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method public getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 706
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->getCoverStateInternal(Z)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    return-object v1

    .line 710
    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCoverStateForExternal : caller is invalid, caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 711
    const-string v3, ", packageName = "

    .line 710
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 711
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    .line 710
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-object v4
.end method

.method public getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1130
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1129
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getCoverSwitchState()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 729
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 728
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 734
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->getRealCoverSwitchState()Z

    move-result v0

    return v0

    .line 730
    :cond_1
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "getCoverSwitchState : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v0, 0x1

    return v0

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 770
    const/high16 v0, 0x10b0000

    return v0
.end method

.method public isCoverManagerDisabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 743
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    return v0
.end method

.method public notifyCoverAttachStateChanged(JZ)V
    .locals 2
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 300
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "notifyCoverAttachStateChanged : return because system is not yet ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 303
    :cond_0
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "notifyCoverAttachStateChanged : return because of test mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 307
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 308
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/server/cover/CoverManagerServiceImpl;->notifyCoverAttachStateChangedInternal(Z)V

    .line 298
    return-void
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "switchState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x12d

    .line 468
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 469
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "notifyCoverSwitchStateChanged : return because system is not yet ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void

    .line 473
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 474
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 478
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 479
    .end local p3    # "switchState":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0, p3}, Lcom/android/server/cover/CoverDisabler;->setRealCoverSwitchState(Z)V

    .line 480
    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2

    .line 481
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "notifyCoverSwitchStateChanged : return because CoverManager is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_2
    if-nez p3, :cond_4

    .line 483
    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3

    .line 484
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "notifyCoverSwitchStateChanged : so request coverEventFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->removeMessages(I)V

    .line 486
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mHandler:Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 488
    :cond_4
    return-void

    .line 478
    .restart local p3    # "switchState":Z
    :cond_5
    const/4 p3, 0x1

    .local p3, "switchState":Z
    goto :goto_0

    .line 491
    .local p3, "switchState":Z
    :cond_6
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 492
    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "Block cover event because factory app is running."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_7
    return-void

    .line 495
    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->updateCoverSwitchState(ZZ)V

    .line 467
    return-void
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z
    .param p4, "state"    # Lcom/samsung/android/cover/CoverState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 320
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "notifySmartCoverAttachStateChanged : return because system is not yet ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 323
    :cond_0
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "notifySmartCoverAttachStateChanged : return because of test mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 327
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 328
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_2
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySmartCoverAttachStateChanged : attach = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0, p3, p4}, Lcom/android/server/cover/CoverManagerServiceImpl;->notifySmartCoverAttachStateChangedInternal(ZLcom/samsung/android/cover/CoverState;)V

    .line 318
    return-void
.end method

.method public onCoverAppCovered(Z)I
    .locals 3
    .param p1, "covered"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 988
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverAppCovered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverServiceManager;->isBindingCoverService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverServiceManager;->onCoverAppStateChanged(Z)I

    move-result v0

    return v0

    .line 994
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier;->onCoverAppStateChanged(Z)I

    move-result v0

    return v0
.end method

.method public onLcdOffByCoverEnabled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1085
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/BaseNfcLedCoverController;->setLcdOffDisabledByCover(Z)V

    .line 1087
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p0}, Lcom/android/server/cover/StateNotifier;->unregisterLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GenericCoverServiceController;->setLcdOffDisabledByCover(Z)V

    .line 1091
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p0}, Lcom/android/server/cover/StateNotifier;->unregisterLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V

    .line 1084
    :cond_1
    return-void
.end method

.method onUserStopped(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 216
    return-void
.end method

.method onUserUnlocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 204
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserUnlocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is no longer unlocked - exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/cover/CoverServiceManager;->bindCoverService(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 203
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public readTouchChannelCountForExternal()Landroid/graphics/Point;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1000
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->readTouchChannelCount()Landroid/graphics/Point;

    move-result-object v1

    return-object v1

    .line 1004
    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readTouchChannelCountForExternal : caller is invalid, callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1005
    const-string v3, ", packageName = "

    .line 1004
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1005
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    .line 1004
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
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

    .line 244
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    .line 243
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
    .line 249
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    .line 248
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
    .line 254
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/cover/CoverManagerServiceImpl;->registerListenerCallbackInternal(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    .line 253
    :goto_0
    return-void

    .line 258
    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListenerCallbackForExternal : caller is invalid, caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    const-string v3, ", packageName = "

    .line 258
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    .line 258
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
    .param p3, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 811
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 813
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 812
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/BaseNfcLedCoverController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v0, :cond_2

    .line 821
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/GenericCoverServiceController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 810
    :cond_2
    return-void

    .line 814
    :cond_3
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "registerNfcTouchListenerCallback : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
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
    .line 899
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 901
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 900
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "removeLedNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->removeLedNotification(Landroid/os/Bundle;)V

    .line 898
    :cond_1
    return-void

    .line 902
    :cond_2
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "removeLedNotification : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-void
.end method

.method public requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 961
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 962
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 963
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 962
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 967
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 968
    .local v0, "whenNanos":J
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestCoverAuthentication : whenNanos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v3, :cond_1

    .line 970
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;->requestCoverAuthentication(JLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v2

    .line 969
    :cond_1
    return v2

    .line 964
    .end local v0    # "whenNanos":J
    :cond_2
    sget-object v3, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v4, "requestCoverAuthentication : caller is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return v2
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
    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 777
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 776
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    :cond_0
    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "sendDataToCover : ignoring call from SystemUI"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void

    .line 778
    :cond_1
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "sendDataToCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-void

    .line 786
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_3

    .line 787
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    .line 774
    :cond_3
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
    .line 848
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 849
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 850
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 849
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    :cond_0
    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 855
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "sendDataToCover : ignoring call from SystemUI"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-void

    .line 851
    :cond_1
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "sendStateDataToCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return-void

    .line 858
    :cond_2
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_4

    .line 859
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_3

    .line 860
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 847
    :cond_3
    :goto_0
    return-void

    .line 865
    :cond_4
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 866
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/cover/CoverServiceManager;

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 867
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_5

    .line 868
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    .line 870
    :cond_5
    return-void

    .line 872
    :cond_6
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-nez v0, :cond_7

    .line 873
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->initializeLedCoverController()V

    .line 875
    :cond_7
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_3

    .line 876
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_0
.end method

.method public sendPowerKeyToCover()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 794
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "sendPowerKeyToCover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0}, Lcom/android/server/cover/LedCoverController;->sendPowerKeyToCover()V

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_2

    .line 801
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendPowerKeyToCover()V

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v0, :cond_3

    .line 804
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-virtual {v0}, Lcom/android/server/cover/GenericCoverServiceController;->sendPowerKeyToCover()V

    .line 792
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
    .line 913
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 915
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 914
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v0, :cond_1

    .line 920
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    .line 912
    :cond_1
    return-void

    .line 916
    :cond_2
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "sendSystemEvent : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-void
.end method

.method public sendTouchRegionForExternal([BII)V
    .locals 4
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1027
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerServiceImpl;->sendTouchRegion([BII)V

    .line 1026
    :goto_0
    return-void

    .line 1031
    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTouchRegionForExternal : caller is invalid, callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1032
    const-string v3, ", packageName = "

    .line 1031
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1032
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    .line 1031
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1065
    sget-object v0, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCoverPackage : package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1067
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1070
    if-eqz p1, :cond_1

    .line 1071
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    .line 1070
    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    if-nez v0, :cond_2

    .line 1074
    new-instance v0, Lcom/android/server/cover/SmartCoverAppController;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/cover/SmartCoverAppController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 1064
    return-void

    .line 1076
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    .line 1077
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/android/server/cover/SmartCoverAppController;->startCoverService(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1069
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "inProgress"    # Z
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 975
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 976
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 977
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 976
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 981
    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFotaInProgress : inProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/BaseNfcLedCoverController;->setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    :cond_1
    return v0

    .line 978
    :cond_2
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "setFotaInProgress : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    return v0
.end method

.method systemRunning()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 163
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->initialize()V

    .line 160
    :cond_0
    return-void
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
    .line 275
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->unregisterCallbackInternal(Landroid/os/IBinder;Z)Z

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

    .line 280
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-direct {p0, p1, v4}, Lcom/android/server/cover/CoverManagerServiceImpl;->unregisterCallbackInternal(Landroid/os/IBinder;Z)Z

    move-result v1

    return v1

    .line 284
    :cond_0
    sget-object v1, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterCallbackForExternal : caller is invalid, caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    const-string v3, ", packageName = "

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mPackageName:Ljava/lang/String;

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
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
    .line 828
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 829
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 830
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 829
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 834
    :cond_0
    const/4 v1, 0x0

    .line 835
    .local v1, "ledUnregistered":Z
    const/4 v0, 0x0

    .line 836
    .local v0, "genericUnregistered":Z
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    if-eqz v2, :cond_1

    .line 837
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/cover/BaseNfcLedCoverController;

    invoke-virtual {v2, p1}, Lcom/android/server/cover/BaseNfcLedCoverController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v1

    .line 839
    .end local v1    # "ledUnregistered":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    if-eqz v2, :cond_2

    .line 840
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-virtual {v2, p1}, Lcom/android/server/cover/GenericCoverServiceController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v0

    .line 842
    .end local v0    # "genericUnregistered":Z
    :cond_2
    if-nez v1, :cond_4

    :goto_0
    return v0

    .line 831
    :cond_3
    sget-object v2, Lcom/android/server/cover/CoverManagerServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "unregisterNfcTouchListenerCallback : caller is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v2, 0x0

    return v2

    .line 842
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
