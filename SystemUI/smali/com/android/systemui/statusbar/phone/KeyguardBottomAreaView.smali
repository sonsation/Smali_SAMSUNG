.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;
    }
.end annotation


# static fields
.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final PHONE_INTENT:Landroid/content/Intent;

.field public static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field protected SHORTCUT_LEFT:I

.field protected SHORTCUT_RIGHT:I

.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field protected mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field protected mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field protected mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentMobileKeyboard:I

.field private final mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

.field protected mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mHelpTextBounceAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

.field protected mIndicationArea:Landroid/widget/LinearLayout;

.field private mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field protected mIndicationText:Landroid/widget/TextView;

.field protected mIsSecure:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field protected mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field protected mLeftIsVoiceAssist:Z

.field protected mLeftPreview:Landroid/view/View;

.field protected mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

.field mMobileKeyboard:Z

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field protected mPreviewContainer:Landroid/view/ViewGroup;

.field protected mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

.field protected mPreviews:[Landroid/view/View;

.field private mPrewarmBound:Z

.field private final mPrewarmConnection:Landroid/content/ServiceConnection;

.field private mPrewarmMessenger:Landroid/os/Messenger;

.field protected mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

.field protected mRightPreview:Landroid/view/View;

.field private mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

.field private mSineIn33:Landroid/view/animation/PathInterpolator;

.field private mSineOut33:Landroid/view/animation/PathInterpolator;

.field protected mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mUserSetupComplete:Z

.field protected mUsimCarrierText:Landroid/widget/TextView;

.field protected mUsimTextArea:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "result"    # I

    .prologue
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isSuccessfulLaunch(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "isSecure"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->insertLog(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/android/keyguard/util/ShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 119
    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 124
    sget-object v0, Lcom/android/keyguard/util/ShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 123
    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v6, 0x3f547ae1    # 0.83f

    const v5, 0x3e2e147b    # 0.17f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 144
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    .line 145
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    .line 166
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSineIn33:Landroid/view/animation/PathInterpolator;

    .line 167
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSineOut33:Landroid/view/animation/PathInterpolator;

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    .line 172
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mMobileKeyboard:Z

    .line 173
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCurrentMobileKeyboard:I

    .line 174
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIsSecure:Z

    .line 196
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    .line 242
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 993
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 1005
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1191
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    .line 1312
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 228
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 229
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 231
    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mMobileKeyboard:Z

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    .line 225
    return-void

    :cond_1
    move v0, v1

    .line 232
    goto :goto_0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 464
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 465
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 464
    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 466
    .local v0, "canSkipBouncer":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    .line 471
    .local v1, "secure":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleTrustCircleClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 650
    const/4 v0, 0x6

    .line 649
    invoke-static {v0, v1, v1}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 652
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 653
    const v1, 0x7f0f04d2

    .line 652
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 648
    return-void
.end method

.method private initAccessibility()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 367
    :cond_1
    return-void
.end method

.method private insertLog(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "isSecure"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.systemui"

    .line 1107
    const-string/jumbo v3, "LSLC"

    const/4 v4, 0x0

    .line 1106
    invoke-static {v0, v2, v3, p1, v4}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1109
    if-eqz p2, :cond_0

    .line 1112
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 1113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start activity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " started"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1115
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 1110
    const/4 v0, 0x5

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1105
    :cond_0
    return-void
.end method

.method private isCameraDisabledByDpm()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 575
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 576
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v5, :cond_2

    .line 578
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I

    .line 579
    .local v4, "userId":I
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 581
    .local v1, "disabledFlags":I
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_0

    .line 582
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardSecure()Z

    move-result v0

    .line 583
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    return v0

    .line 581
    :cond_0
    const/4 v0, 0x0

    .local v0, "disabledBecauseKeyguardSecure":Z
    goto :goto_0

    .line 583
    .end local v0    # "disabledBecauseKeyguardSecure":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 584
    .end local v1    # "disabledFlags":I
    .end local v4    # "userId":I
    :catch_0
    move-exception v3

    .line 585
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v6, "Can\'t get userId"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 588
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    return v7
.end method

.method private isPhoneVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 568
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 569
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v2, "android.hardware.telephony"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 569
    :cond_0
    return v1
.end method

.method private static isSuccessfulLaunch(I)Z
    .locals 3
    .param p0, "result"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 777
    if-eqz p0, :cond_0

    .line 778
    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    .line 777
    :cond_0
    :goto_0
    return v0

    .line 779
    :cond_1
    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private launchVoiceAssist()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 791
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 798
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardCurrentlySecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 790
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v2, 0x0

    .line 802
    const/4 v5, 0x1

    move v4, v3

    .line 801
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_0
.end method

.method private setUsimTextAreaVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 1172
    return-void

    .line 1175
    :cond_0
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_5

    .line 1176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1170
    :goto_0
    return-void

    .line 1178
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIsSecure:Z

    if-nez v0, :cond_4

    .line 1179
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mMobileKeyboard:Z

    :goto_1
    if-nez v0, :cond_3

    .line 1180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1179
    goto :goto_1

    .line 1182
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1184
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1187
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private startFinishDozeAnimationElement(Landroid/view/View;J)V
    .locals 4
    .param p1, "element"    # Landroid/view/View;
    .param p2, "delay"    # J

    .prologue
    const/4 v2, 0x0

    .line 983
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 984
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 985
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 986
    const/high16 v1, 0x3f800000    # 1.0f

    .line 985
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 988
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 985
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 990
    const-wide/16 v2, 0xfa

    .line 985
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 982
    return-void
.end method

.method private watchForCameraPolicyChanges()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 592
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 593
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 595
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 594
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 591
    return-void
.end method


# virtual methods
.method public bindCameraPrewarmService()V
    .locals 9

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v2

    .line 659
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    .line 660
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    .line 659
    invoke-static {v5, v2, v6}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getTargetActivityInfo(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 661
    .local v4, "targetInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 662
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 663
    const-string/jumbo v6, "android.media.still_image_camera_preview_service"

    .line 662
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "clazz":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 665
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 666
    .local v3, "serviceIntent":Landroid/content/Intent;
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string/jumbo v5, "android.service.media.CameraPrewarmService.ACTION_PREWARM"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    .line 671
    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 670
    const v8, 0x4000001

    .line 669
    invoke-virtual {v5, v3, v6, v8, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 672
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v3    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 674
    .restart local v0    # "clazz":Ljava/lang/String;
    .restart local v3    # "serviceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 675
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v5, "PhoneStatusBar/KeyguardBottomAreaView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to bind to prewarm service package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 676
    const-string/jumbo v7, " class="

    .line 675
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected canLaunchVoiceAssist()Z
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method public getBottomAreaMaxHeight()I
    .locals 4

    .prologue
    .line 1293
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1294
    .local v0, "indicationHeight":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1295
    .local v1, "usimTextHeight":I
    if-le v1, v0, :cond_0

    .end local v1    # "usimTextHeight":I
    :goto_0
    return v1

    .restart local v1    # "usimTextHeight":I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getEmergencyButtonView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    return-object v0
.end method

.method public getIndicationController()Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object v0
.end method

.method public getIndicationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLeftView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object v0
.end method

.method public getLockSecureIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    return-object v0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRightView()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getUSimCarrierTextView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimCarrierText:Landroid/widget/TextView;

    return-object v0
.end method

.method public hasCameraShortcutForRight()Z
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x1

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 881
    const/4 v0, 0x0

    return v0
.end method

.method protected inflateCameraPreview()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 897
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->hasCameraShortcutForRight()Z

    move-result v1

    if-nez v1, :cond_0

    .line 898
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateRightPreview()V

    .line 899
    return-void

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightPreview:Landroid/view/View;

    .line 904
    .local v0, "previewBefore":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 905
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 908
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 910
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 912
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 914
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 916
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 895
    :goto_0
    return-void

    .line 922
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 923
    const-string/jumbo v1, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "getCameraIntent() preview failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isInEmergencyButtonArea(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1221
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v3, :cond_3

    .line 1222
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v3, :cond_1

    .line 1223
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1224
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1225
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v3}, Lcom/android/keyguard/EmergencyButton;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1226
    :cond_1
    return v5

    .line 1228
    :cond_2
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1229
    .local v0, "location":[I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/EmergencyButton;->getLocationInWindow([I)V

    .line 1230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1231
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1232
    .local v2, "y":I
    aget v3, v0, v5

    if-lt v1, v3, :cond_3

    .line 1233
    aget v3, v0, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v4}, Lcom/android/keyguard/EmergencyButton;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v1, v3, :cond_3

    .line 1234
    aget v3, v0, v6

    if-lt v2, v3, :cond_3

    .line 1235
    aget v3, v0, v6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v4}, Lcom/android/keyguard/EmergencyButton;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_3

    .line 1236
    return v6

    .line 1242
    .end local v0    # "location":[I
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_3
    return v5
.end method

.method public launchCamera(Ljava/lang/String;)V
    .locals 5
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 698
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    .line 699
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.systemui.camera_launch_source"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 700
    invoke-static {v2, v0, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    .line 702
    .local v1, "wouldLaunchResolverActivity":Z
    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_1

    .line 751
    :cond_0
    const-string/jumbo v2, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v3, "launch insecure Camera - "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string/jumbo v2, "isSecure"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 754
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const/high16 v2, 0x34010000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 763
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 764
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 763
    invoke-interface {v2, v0, v4, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startCameraActivity(Landroid/content/Intent;ZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V

    .line 697
    :goto_0
    return-void

    .line 703
    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/content/Intent;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public launchLeftAffordance()V
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    if-eqz v0, :cond_0

    .line 784
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchVoiceAssist()V

    .line 782
    :goto_0
    return-void

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchPhone()V

    goto :goto_0
.end method

.method protected launchPhone()V
    .locals 4

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 816
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/telecom/TelecomManager;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 814
    :goto_0
    return-void

    .line 824
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 826
    const-string/jumbo v1, "CALL"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardCurrentlySecure()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->insertLog(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public launchRightAffordance()V
    .locals 1

    .prologue
    .line 1133
    const-string/jumbo v0, "lockscreen_affordance"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    .line 1132
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_2

    .line 628
    const-string/jumbo v0, "lockscreen_affordance"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    .line 632
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-ne p1, v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 634
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleTrustCircleClick()V

    .line 625
    :cond_1
    :goto_1
    return-void

    .line 629
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    goto :goto_0

    .line 636
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 637
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 636
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    .line 381
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 383
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_1

    .line 384
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCurrentMobileKeyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v1, v2, :cond_1

    .line 385
    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mMobileKeyboard:Z

    .line 386
    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mCurrentMobileKeyboard:I

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->requestLayout()V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->requestLayout()V

    .line 380
    :cond_1
    return-void

    .line 385
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .prologue
    .line 1302
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    .line 1249
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1246
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 286
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 289
    const v1, 0x7f13015a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 290
    new-array v1, v2, [Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 291
    new-array v1, v2, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    .line 292
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    const v1, 0x7f13015b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    aput-object v1, v2, v3

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 295
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    const v1, 0x7f13015c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    aput-object v1, v2, v3

    .line 297
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 298
    const v1, 0x7f13015d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/LockIcon;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 299
    const v1, 0x7f130159

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->watchForCameraPolicyChanges()V

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 303
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 304
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setClipChildren(Z)V

    .line 305
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setClipToPadding(Z)V

    .line 306
    new-instance v1, Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->inflateCameraPreview()V

    .line 308
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 311
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initAccessibility()V

    .line 323
    const v1, 0x7f13015f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationArea:Landroid/widget/LinearLayout;

    .line 324
    const v1, 0x7f130160

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    .line 325
    const v1, 0x7f130164

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimTextArea:Landroid/widget/LinearLayout;

    .line 326
    const v1, 0x7f130165

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 328
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setRight(Z)V

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIsSecure:Z

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V

    .line 331
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBottomIconsCallback(Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;)V

    .line 332
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_2

    .line 333
    const v1, 0x7f130166

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 334
    .local v0, "vStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 336
    const v1, 0x7f130206

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimCarrierText:Landroid/widget/TextView;

    .line 337
    const-string/jumbo v1, "PhoneStatusBar/KeyguardBottomAreaView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUsimCarrierText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimCarrierText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v0    # "vStub":Landroid/view/ViewStub;
    :cond_2
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_PLMN:Z

    if-eqz v1, :cond_3

    .line 341
    const v1, 0x7f130167

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 342
    .restart local v0    # "vStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_3

    .line 343
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 346
    .end local v0    # "vStub":Landroid/view/ViewStub;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 347
    const v2, 0x10c000d

    .line 346
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 348
    new-instance v1, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 349
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimCarrierText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    new-array v3, v6, [Landroid/net/Uri;

    .line 357
    const-string/jumbo v4, "white_lockscreen_wallpaper"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v5

    .line 356
    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateChildViewsLook()V

    .line 361
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->canSetDcmLauncher()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 362
    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardIndicationControllerDummy;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardIndicationControllerDummy;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 285
    :cond_4
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleTrustCircleClick()V

    .line 645
    const/4 v0, 0x1

    return v0
.end method

.method public onStateChanged(ZZ)V
    .locals 2
    .param p1, "accessibilityEnabled"    # Z
    .param p2, "touchExplorationEnabled"    # Z

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setClickable(Z)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setFocusable(Z)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setClickable(Z)V

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setFocusable(Z)V

    .line 618
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V

    .line 602
    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIsSecure:Z

    .line 888
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V

    .line 892
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 885
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 834
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 835
    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 837
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V

    .line 833
    :cond_0
    return-void
.end method

.method public resolveCameraIntent()Landroid/content/pm/ResolveInfo;
    .locals 4

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v1

    .line 480
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 479
    const/high16 v3, 0x10000

    .line 478
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 1
    .param p1, "accessibilityController"    # Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V

    .line 445
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V

    .line 442
    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 434
    return-void
.end method

.method public setAssistManager(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0
    .param p1, "assistManager"    # Lcom/android/systemui/assist/AssistManager;

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 1096
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    .line 1094
    return-void
.end method

.method public setBottomShortcutVisibility(Z)V
    .locals 0
    .param p1, "vis"    # Z

    .prologue
    .line 1140
    return-void
.end method

.method public setFlashlightController(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p1, "flashlightController"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 438
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "keyguardIndicationController"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1090
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 450
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 448
    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 0
    .param p1, "userSetupComplete"    # Z

    .prologue
    .line 454
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserSetupComplete:Z

    .line 455
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    .line 453
    return-void
.end method

.method public showHelpTextBounceAnimation()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const v9, 0x3f733333    # 0.95f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1253
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "v$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1254
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1255
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 1258
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1259
    .local v0, "bounceAnimPhase1":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1260
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1261
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$11;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1279
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mHelpTextBounceAnimList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1280
    .restart local v1    # "v":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 1281
    new-array v3, v8, [Landroid/animation/Animator;

    .line 1282
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v7

    aput v9, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1281
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1283
    new-array v3, v8, [Landroid/animation/Animator;

    .line 1284
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v7

    aput v9, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1283
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 1287
    .end local v1    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1252
    return-void
.end method

.method public startFinishDozeAnimation()V
    .locals 6

    .prologue
    .line 961
    const-wide/16 v0, 0x0

    .line 962
    .local v0, "delay":J
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 964
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    .line 966
    const-wide/16 v0, 0x30

    .line 968
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    .line 969
    const-wide/16 v2, 0x30

    add-long/2addr v0, v2

    .line 970
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 972
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_RIGHT:I

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startFinishDozeAnimationElement(Landroid/view/View;J)V

    .line 975
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 976
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 977
    const/high16 v3, 0x3f800000    # 1.0f

    .line 976
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 978
    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 976
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 979
    const-wide/16 v4, 0x2bc

    .line 976
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 960
    return-void
.end method

.method public unbindCameraPrewarmService(Z)V
    .locals 4
    .param p1, "launched"    # Z

    .prologue
    .line 683
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmBound:Z

    if-eqz v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmMessenger:Landroid/os/Messenger;

    const/4 v2, 0x0

    .line 687
    const/4 v3, 0x1

    .line 686
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 693
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPrewarmBound:Z

    .line 682
    :cond_1
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "Error sending camera fired message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected updateCameraVisibility()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 483
    return-void
.end method

.method protected updateCameraVisibility(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 8
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    const/4 v3, 0x0

    .line 502
    if-nez p1, :cond_0

    .line 504
    return-void

    .line 506
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 507
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v5

    .line 509
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    .line 508
    const/high16 v7, 0x10000

    .line 506
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 511
    .local v1, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isCameraDisabledByDpm()Z

    move-result v0

    .line 512
    .local v0, "disabledByDpm":Z
    const-string/jumbo v4, "PhoneStatusBar/KeyguardBottomAreaView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCameraVisibility isCameraDisabledByDpm="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 519
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 518
    if-eqz v4, :cond_1

    .line 520
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserSetupComplete:Z

    .line 523
    .local v2, "visible":Z
    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setVisibility(I)V

    .line 501
    return-void

    .end local v2    # "visible":Z
    :cond_1
    move v2, v3

    .line 518
    goto :goto_0

    .line 523
    .restart local v2    # "visible":Z
    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public updateChildViewsLook()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUsimCarrierText:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 1308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 1309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->updateButtonOuterlineColor(Landroid/widget/TextView;)V

    .line 1306
    return-void
.end method

.method public updateLeftAffordance()V
    .locals 0

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    .line 1101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftPreview()V

    .line 1099
    return-void
.end method

.method protected updateLeftAffordanceIcon()V
    .locals 6

    .prologue
    .line 527
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    if-nez v4, :cond_0

    .line 528
    return-void

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->canLaunchVoiceAssist()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    .line 532
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mUserSetupComplete:Z

    .line 533
    .local v3, "visible":Z
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    if-eqz v4, :cond_1

    .line 534
    const v2, 0x7f0201a4

    .line 535
    .local v2, "drawableId":I
    const v0, 0x7f0f02a9

    .line 538
    .local v0, "contentDescription":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 539
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 540
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v5, v4, v5

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setVisibility(I)V

    .line 556
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 526
    return-void

    .line 543
    .end local v0    # "contentDescription":I
    .end local v2    # "drawableId":I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isPhoneVisible()Z

    move-result v4

    and-int/2addr v3, v4

    .line 544
    const v2, 0x7f0201b0

    .line 546
    .restart local v2    # "drawableId":I
    const v0, 0x7f0f05e2

    .line 549
    .restart local v0    # "contentDescription":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAffordanceViews:[Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 552
    :cond_2
    const/16 v4, 0x8

    goto :goto_1
.end method

.method protected updateLeftPreview()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 929
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v0, v1, v2

    .line 931
    .local v0, "previewBefore":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 932
    const-string/jumbo v1, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "updateLeftPreview removeView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 935
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    if-eqz v1, :cond_1

    .line 936
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v4}, Lcom/android/systemui/assist/AssistManager;->getVoiceInteractorComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreviewFromService(Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 942
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 944
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 946
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 948
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 928
    :goto_1
    return-void

    .line 939
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviews:[Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->SHORTCUT_LEFT:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    sget-object v4, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    .line 954
    :cond_2
    const-string/jumbo v1, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "mLeftAffordanceView preview null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected updateRightPreview()V
    .locals 0

    .prologue
    .line 1121
    return-void
.end method
