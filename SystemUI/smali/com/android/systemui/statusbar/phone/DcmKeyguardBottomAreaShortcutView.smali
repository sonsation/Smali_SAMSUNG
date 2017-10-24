.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
.super Landroid/widget/FrameLayout;
.source "DcmKeyguardBottomAreaShortcutView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;,
        Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$2;,
        Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$3;,
        Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$4;,
        Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;,
        Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$QueryHandler;
    }
.end annotation


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static sBroadcastReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mCallTextView:Landroid/widget/TextView;

.field private mCameraImageView:Landroid/widget/ImageView;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

.field private final mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mEmailTextView:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field mHandlerSp:Landroid/os/Handler;

.field mHandlerTel:Landroid/os/Handler;

.field private mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mIsCallViewVisible:Z

.field private mIsEmailViewVisible:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhoneImageView:Landroid/widget/ImageView;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mPrewarmBound:Z

.field private final mPrewarmConnection:Landroid/content/ServiceConnection;

.field private mPrewarmMessenger:Landroid/os/Messenger;

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/phone/DcmLockIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)Z
    .locals 1
    .param p1, "result"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->isSuccessfulLaunch(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getMissedCallCount()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;J)V
    .locals 1
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setMissedCallCount(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setSPModeMailUnreadCount(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateCallVisibility(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateEmailVisibility(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;ZI)V
    .locals 0
    .param p1, "isLongClicked"    # Z
    .param p2, "delay"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateLockIcon(ZI)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updatePhoneVisibility()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    .line 93
    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 92
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "com.sec.android.app.camera"

    const-string/jumbo v2, "com.sec.android.app.camera.Camera"

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    const/high16 v1, 0x800000

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 96
    new-instance v0, Landroid/content/Intent;

    .line 97
    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    .line 96
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "com.sec.android.app.camera"

    const-string/jumbo v2, "com.sec.android.app.camera.Camera"

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 117
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 118
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 119
    const-string/jumbo v1, "number"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 120
    const-string/jumbo v1, "date"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 121
    const-string/jumbo v1, "duration"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 122
    const-string/jumbo v1, "type"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 117
    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandlerTel:Landroid/os/Handler;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandlerSp:Landroid/os/Handler;

    .line 145
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    .line 147
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mVibrator:Landroid/os/Vibrator;

    .line 149
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsCallViewVisible:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsEmailViewVisible:Z

    .line 156
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 178
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$2;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 481
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$3;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    .line 582
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$4;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 594
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$5;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    .line 593
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 174
    return-void
.end method

.method private arrangeIcons()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 832
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 833
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 834
    .local v0, "disp":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 835
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 836
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 837
    .local v4, "totalWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 838
    const v7, 0x7f0d02f0

    .line 837
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 839
    .local v1, "oneIconWidth":I
    mul-int/lit8 v6, v1, 0x5

    sub-int v6, v4, v6

    div-int/lit8 v2, v6, 0x4

    .line 841
    .local v2, "oneMargin":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setX(F)V

    .line 842
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    add-int v7, v1, v2

    mul-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setX(F)V

    .line 843
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    add-int v7, v1, v2

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setX(F)V

    .line 844
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    add-int v7, v1, v2

    mul-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setX(F)V

    .line 845
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    add-int v7, v1, v2

    mul-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setX(F)V

    .line 848
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    div-int/lit8 v7, v1, 0x2

    invoke-virtual {v6, v7, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 849
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    div-int/lit8 v7, v1, 0x2

    invoke-virtual {v6, v7, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 831
    return-void
.end method

.method private getCallIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 853
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 854
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    const-string/jumbo v1, "missed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 856
    return-object v0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 297
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 296
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 298
    .local v0, "canSkipBouncer":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 298
    :goto_0
    return-object v1

    .line 299
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private getEmailIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 860
    const-string/jumbo v2, "jp.co.nttdocomo.carriermail"

    .line 861
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "jp.co.nttdocomo.carriermail.activity.EulaViewer"

    .line 863
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 864
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "jp.co.nttdocomo.carriermail"

    const-string/jumbo v4, "jp.co.nttdocomo.carriermail.activity.EulaViewer"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 866
    const-string/jumbo v3, "folderType"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 867
    return-object v1
.end method

.method private getMissedCallCount()V
    .locals 10

    .prologue
    .line 686
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$QueryHandler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$QueryHandler;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Landroid/content/ContentResolver;)V

    .line 688
    .local v0, "queryHanlder":Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$QueryHandler;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type="

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    .local v9, "where":Ljava/lang/StringBuilder;
    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 690
    const-string/jumbo v1, " AND new=1"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :try_start_0
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 694
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "date DESC"

    .line 693
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 694
    const/4 v6, 0x0

    .line 693
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v8

    .line 696
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DcmKeyguardBottomAreaShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KeyguardBottomAreaView.getMissedCallCount(): missedcall query exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 697
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 696
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNotificationShowingState()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 957
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 958
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, -0x1

    .line 959
    .local v3, "showNotification":I
    const/4 v0, -0x1

    .line 963
    .local v0, "allowPrivate":I
    :try_start_0
    const-string/jumbo v4, "lock_screen_show_notifications"

    const/4 v5, -0x2

    .line 962
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 965
    const-string/jumbo v4, "lock_screen_allow_private_notifications"

    const/4 v5, -0x2

    .line 964
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 970
    :goto_0
    if-ne v3, v8, :cond_0

    if-ne v0, v8, :cond_0

    .line 971
    const/4 v4, 0x2

    return v4

    .line 966
    :catch_0
    move-exception v1

    .line 967
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DcmKeyguardBottomAreaShortcutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNotificationShowingState e : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 972
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    if-ne v3, v8, :cond_1

    if-nez v0, :cond_1

    .line 973
    return v8

    .line 974
    :cond_1
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 975
    return v7

    .line 977
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method private handleAttemptLockout(J)V
    .locals 11
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    const/4 v3, 0x0

    .line 1021
    const-string/jumbo v0, "DcmKeyguardBottomAreaShortcutView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAttemptLockout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1025
    .local v8, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v6

    .line 1027
    .local v6, "isAutoWipe":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1029
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1035
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$13;

    sub-long v2, p1, v8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$13;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;JJZ)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$13;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1020
    return-void
.end method

.method private initAccessibility()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 264
    return-void
.end method

.method private isCameraDisabledByDpm()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 332
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    return v1

    .line 335
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isPhoneVisible()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 318
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 320
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v4, "com.nttdocomo.android.mascot"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 321
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v4, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 324
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/Exception;
    return v6

    .line 322
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 323
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v6
.end method

.method private isSuccessfulLaunch(I)Z
    .locals 3
    .param p1, "result"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 991
    if-eqz p1, :cond_0

    .line 992
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 991
    :cond_0
    :goto_0
    return v0

    .line 993
    :cond_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 985
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 986
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getActivityStarter()Lcom/android/systemui/statusbar/phone/ActivityStarter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 981
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 769
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$12;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    .line 800
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 801
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    .line 800
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 767
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 720
    sget-object v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 721
    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$11;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 745
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 746
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE_LOCAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 747
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    const-string/jumbo v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 750
    const-string/jumbo v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    .line 749
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 719
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setIconsInvisible()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x4

    .line 946
    const-string/jumbo v0, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v3, "setIconsInvisible()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 950
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsCallViewVisible:Z

    .line 951
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsEmailViewVisible:Z

    .line 953
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 945
    return-void

    :cond_0
    move v0, v2

    .line 950
    goto :goto_0

    :cond_1
    move v1, v2

    .line 952
    goto :goto_1
.end method

.method private setMissedCallCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandlerTel:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$9;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 701
    return-void
.end method

.method private setSPModeMailUnreadCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandlerSp:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$10;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 710
    return-void
.end method

.method private unregisterReceiver()V
    .locals 4

    .prologue
    .line 756
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 758
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 760
    const-string/jumbo v1, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v2, "KeyguardBottomAreaView.unregisterReceiver(): unregist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DcmKeyguardBottomAreaShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KeyguardBottomAreaView.unregisterReceiver(): exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCallVisibility(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 871
    const-string/jumbo v0, ""

    .line 872
    .local v0, "countStr":Ljava/lang/String;
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsCallViewVisible:Z

    .line 874
    if-lez p1, :cond_1

    .line 875
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getNotificationShowingState()I

    move-result v1

    .line 876
    .local v1, "showingState":I
    if-eqz v1, :cond_0

    .line 877
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsCallViewVisible:Z

    .line 880
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 881
    const/16 v3, 0x32

    if-le p1, v3, :cond_2

    const-string/jumbo v0, "50"

    .line 885
    .end local v1    # "showingState":I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsCallViewVisible:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 870
    return-void

    .line 881
    .restart local v1    # "showingState":I
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 886
    .end local v1    # "showingState":I
    :cond_3
    const/4 v2, 0x4

    goto :goto_1
.end method

.method private updateEmailVisibility(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 890
    const-string/jumbo v0, ""

    .line 891
    .local v0, "countStr":Ljava/lang/String;
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsEmailViewVisible:Z

    .line 892
    if-lez p1, :cond_1

    .line 893
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getNotificationShowingState()I

    move-result v1

    .line 894
    .local v1, "showingState":I
    if-eqz v1, :cond_0

    .line 895
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsEmailViewVisible:Z

    .line 898
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 899
    const/16 v3, 0x32

    if-le p1, v3, :cond_2

    const-string/jumbo v0, "50+"

    .line 903
    .end local v1    # "showingState":I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsEmailViewVisible:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 889
    return-void

    .line 899
    .restart local v1    # "showingState":I
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 904
    .end local v1    # "showingState":I
    :cond_3
    const/4 v2, 0x4

    goto :goto_1
.end method

.method private updateLockIcon(ZI)V
    .locals 1
    .param p1, "isLongClicked"    # Z
    .param p2, "delay"    # I

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->update(ZI)V

    .line 548
    :cond_0
    return-void
.end method

.method private updatePhoneVisibility()V
    .locals 4

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->isPhoneVisible()Z

    move-result v0

    .line 313
    .local v0, "visible":Z
    const-string/jumbo v1, "DcmKeyguardBottomAreaShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePhoneVisibility(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    return-void

    .line 314
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private declared-synchronized vibrate()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 938
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 939
    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mVibrator:Landroid/os/Vibrator;

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 937
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private watchForCameraPolicyChanges()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 339
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 340
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 342
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 341
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 338
    return-void
.end method


# virtual methods
.method public getIndicationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    return-object v0
.end method

.method public getLockIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public launchCall()V
    .locals 1

    .prologue
    .line 908
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 909
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->launchActivity(Landroid/content/Intent;)V

    .line 907
    return-void
.end method

.method public launchCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    .line 389
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 388
    invoke-static {v2, v0, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    .line 390
    .local v1, "wouldLaunchResolverActivity":Z
    sget-object v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_1

    .line 432
    :cond_0
    const-string/jumbo v2, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v3, "launchCamera() InSecure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string/jumbo v2, "isSecure"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 437
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const/high16 v2, 0x34010000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 444
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getActivityStarter()Lcom/android/systemui/statusbar/phone/ActivityStarter;

    move-result-object v2

    .line 445
    new-instance v3, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$7;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    .line 444
    invoke-interface {v2, v0, v4, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startCameraActivity(Landroid/content/Intent;ZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V

    .line 386
    :goto_0
    return-void

    .line 391
    :cond_1
    const-string/jumbo v2, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v3, "launchCamera() SECURE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$6;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Landroid/content/Intent;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public launchEmail()V
    .locals 1

    .prologue
    .line 913
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getEmailIntent()Landroid/content/Intent;

    move-result-object v0

    .line 914
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->launchActivity(Landroid/content/Intent;)V

    .line 912
    return-void
.end method

.method public launchPhone()V
    .locals 4

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->isPhoneVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    return-void

    .line 457
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 458
    .local v1, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    const-string/jumbo v2, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v3, "return to call - "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$8;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$8;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Landroid/telecom/TelecomManager;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 454
    :goto_0
    return-void

    .line 467
    :cond_1
    const-string/jumbo v2, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v3, "launch phone - "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string/jumbo v2, "LOCK_CLICK_MASCOT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string/jumbo v2, "com.nttdocomo.android.mascot"

    .line 472
    const-string/jumbo v3, "com.nttdocomo.android.mascot.application.MascotApplicationProxy"

    .line 471
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const/high16 v2, 0x10200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 475
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getActivityStarter()Lcom/android/systemui/statusbar/phone/ActivityStarter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 538
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 537
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 348
    const-string/jumbo v0, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v1, "onClick() : launchCamera()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->vibrate()V

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->launchCamera()V

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setIconsInvisible()V

    .line 357
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    if-ne p1, v0, :cond_3

    .line 358
    const-string/jumbo v0, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v1, "onClick() : unlock!()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->vibrate()V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 346
    :cond_1
    :goto_1
    return-void

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 353
    const-string/jumbo v0, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v1, "onClick() : launchPhone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->vibrate()V

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->launchPhone()V

    goto :goto_0

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 364
    const-string/jumbo v0, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v1, "onClick() : launchEmail()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->vibrate()V

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->launchEmail()V

    goto :goto_1

    .line 367
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 368
    const-string/jumbo v0, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v1, "onClick() : launchCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->vibrate()V

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->launchCall()V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 278
    const v3, 0x7f0d02ed

    .line 277
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 279
    .local v0, "indicationBottomMargin":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 280
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v0, :cond_0

    .line 281
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 282
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 290
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextSize(IF)V

    .line 275
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 545
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 543
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 210
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 211
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 212
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 213
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 214
    const v4, 0x7f130125

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    .line 215
    const v4, 0x7f130129

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    .line 216
    const v4, 0x7f130127

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    .line 217
    const v4, 0x7f130123

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->watchForCameraPolicyChanges()V

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updatePhoneVisibility()V

    .line 221
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setClipChildren(Z)V

    .line 222
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setClipToPadding(Z)V

    .line 223
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 225
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const v4, 0x7f130126

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    .line 228
    const v4, 0x7f130128

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    .line 229
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->onShowKeyguard()V

    .line 232
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->initAccessibility()V

    .line 235
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->startShortcutHintAnimation()V

    .line 236
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 237
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->unregisterReceiver()V

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->registerReceiver()V

    .line 243
    const-string/jumbo v4, "1"

    const-string/jumbo v5, "sys.boot_completed"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 245
    .local v2, "isBootCompleted":Z
    if-eqz v2, :cond_0

    .line 247
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 248
    const-string/jumbo v4, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    .line 247
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    new-instance v3, Landroid/content/Intent;

    .line 251
    const-string/jumbo v4, "com.android.internal.policy.impl.keyguard.ACTION_SCREEN_DISPLAY"

    .line 250
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v3, "screenIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 253
    const-string/jumbo v5, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    .line 252
    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "screenIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mDcmManager:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    .line 209
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "DcmKeyguardBottomAreaShortcutView"

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "KeyguardBottomAreaView.onFinishInflate(): IllegalStateException Occurred: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 257
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 256
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHideKeyguard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 818
    const-string/jumbo v0, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v1, "onHideKeyguard()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 821
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContentObserver:Landroid/database/ContentObserver;

    .line 817
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 827
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 828
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->arrangeIcons()V

    .line 826
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x12cc

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    if-ne p1, v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 378
    const/16 v0, 0x3e8

    invoke-direct {p0, v5, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateLockIcon(ZI)V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 383
    :cond_1
    return v5
.end method

.method public onShowKeyguard()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 806
    const-string/jumbo v0, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v3, "onShowKeyguard()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->registerContentObserver()V

    .line 808
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getMissedCallCount()V

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->setVisibility(I)V

    .line 810
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCallTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsCallViewVisible:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mEmailTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIsEmailViewVisible:Z

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 812
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updatePhoneVisibility()V

    .line 813
    const/16 v0, 0x64

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateLockIcon(ZI)V

    .line 814
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    .line 805
    return-void

    :cond_1
    move v0, v2

    .line 810
    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 927
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 934
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 929
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->vibrate()V

    goto :goto_0

    .line 927
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 998
    if-nez p2, :cond_0

    .line 999
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 1001
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1002
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 1001
    if-eqz v2, :cond_0

    .line 1003
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSwipeLockBeforeTimeout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 997
    .end local v0    # "deadline":J
    :cond_0
    :goto_0
    return-void

    .line 1004
    .restart local v0    # "deadline":J
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1005
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->handleAttemptLockout(J)V

    goto :goto_0
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "keyguardIndicationController"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1010
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 1016
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    .line 1014
    return-void
.end method

.method public unbindCameraPrewarmService(Z)V
    .locals 4
    .param p1, "launched"    # Z

    .prologue
    .line 522
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmBound:Z

    if-eqz v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 525
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmMessenger:Landroid/os/Messenger;

    const/4 v2, 0x0

    .line 526
    const/4 v3, 0x1

    .line 525
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 532
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mPrewarmBound:Z

    .line 521
    :cond_1
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v2, "Error sending camera fired message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected updateCameraVisibility()V
    .locals 6

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v3

    .line 305
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 304
    const/high16 v5, 0x10000

    .line 303
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 306
    .local v0, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->isCameraDisabledByDpm()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 307
    .local v1, "visible":Z
    :goto_0
    const-string/jumbo v2, "DcmKeyguardBottomAreaShortcutView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCameraVisibility(), visible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",   resolved:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mCameraImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    return-void

    .line 306
    .end local v1    # "visible":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_0

    .line 308
    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method
