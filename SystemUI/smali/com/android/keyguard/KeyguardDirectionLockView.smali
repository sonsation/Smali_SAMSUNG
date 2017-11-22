.class public Lcom/android/keyguard/KeyguardDirectionLockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardDirectionLockView$1;,
        Lcom/android/keyguard/KeyguardDirectionLockView$2;,
        Lcom/android/keyguard/KeyguardDirectionLockView$3;,
        Lcom/android/keyguard/KeyguardDirectionLockView$4;,
        Lcom/android/keyguard/KeyguardDirectionLockView$5;,
        Lcom/android/keyguard/KeyguardDirectionLockView$6;,
        Lcom/android/keyguard/KeyguardDirectionLockView$7;,
        Lcom/android/keyguard/KeyguardDirectionLockView$8;,
        Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;,
        Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;,
        Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator",
        "<",
        "Lcom/android/internal/widget/LockPatternView$CellState;",
        ">;",
        "Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;"
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-KeyguardDirectionLockView$FooterModeSwitchesValues:[I

.field private static final mBuildCharacteristics:Ljava/lang/String;


# instance fields
.field private final ANIMATION_DURATION:J

.field private final ARROW_DOT_THRESHOLD:J

.field private final MAX_DOTS_ALLOWED:I

.field private final MIN_INPUT_ALLOWED:I

.field private final WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

.field _TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelDirectionRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionLockAfterPasswordCheckedHandler:Landroid/os/Handler;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mDot:Landroid/widget/ImageView;

.field private mDotAnimator:Landroid/animation/ValueAnimator;

.field private mDotBackground:Landroid/graphics/drawable/Drawable;

.field private mDotLayout:Landroid/widget/LinearLayout;

.field private mDotList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDotListAnimator:Landroid/animation/ValueAnimator;

.field private mDotMarginLeft:D

.field private mDotMarginRight:D

.field private mEMAPress:Z

.field private mEcaView:Landroid/view/View;

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorTextEnterAnim:Landroid/view/animation/Animation;

.field private mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mErrorTextExitAnim:Landroid/view/animation/Animation;

.field private mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mForgotDirectionLockButton:Landroid/widget/Button;

.field private final mHandler:Landroid/os/Handler;

.field private mHashMap:Ljava/util/HashMap;
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

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mIsAccountExist:Z

.field private mIsChecking:Z

.field private mIsMobileKeyboardCovered:I

.field private mIsSleeping:Z

.field private mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

.field private mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

.field private mLastFooterMode:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mPlayBeep:Z

.field private mPlayVibration:Z

.field private mPlayVoice:Z

.field private mPromptReason:I

.field private mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

.field private final mShadowColor:I

.field private mShowArrow:Z

.field private final mTextColor:I

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

.field private mTotalFailedDirectionLockAttempts:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVibratePattern:[J

.field private mVibraterService:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardDirectionLockView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->MIN_INPUT_ALLOWED:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsAccountExist:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsChecking:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/keyguard/KeyguardDirectionLockView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsMobileKeyboardCovered:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/keyguard/KeyguardDirectionLockView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLastPokeTime:J

    return-wide v0
.end method

.method static synthetic -get22(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVoice:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/keyguard/KeyguardDirectionLockView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPromptReason:I

    return v0
.end method

.method static synthetic -get26(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/keyguard/KeyguardDirectionLockView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mVibraterService:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionLockAfterPasswordCheckedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private static synthetic -getcom-android-keyguard-KeyguardDirectionLockView$FooterModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView;->-com-android-keyguard-KeyguardDirectionLockView$FooterModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView;->-com-android-keyguard-KeyguardDirectionLockView$FooterModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->values()[Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ForgotLockDirection:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/keyguard/KeyguardDirectionLockView;->-com-android-keyguard-KeyguardDirectionLockView$FooterModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardDirectionLockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardDirectionLockView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsAccountExist:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsChecking:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/KeyguardDirectionLockView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsMobileKeyboardCovered:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/keyguard/KeyguardDirectionLockView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLastPokeTime:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/keyguard/KeyguardDirectionLockView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->isSupportPatternBackupPin()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardDirectionLockView;I)Ljava/lang/String;
    .locals 1
    .param p1, "attempts"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateErrorText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->checkPasswordAndHandle()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->handleAndPerformDotAnimations()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/keyguard/KeyguardDirectionLockView;J)V
    .locals 1
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardDirectionLockView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetmTimer()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const-string/jumbo v0, "ro.build.characteristics"

    .line 143
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardDirectionLockView;->mBuildCharacteristics:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 437
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardDirectionLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 436
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 449
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    iput v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    .line 164
    const/16 v0, 0x16

    iput v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->MAX_DOTS_ALLOWED:I

    .line 167
    const-string/jumbo v0, "4"

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->MIN_INPUT_ALLOWED:I

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 205
    iput v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsMobileKeyboardCovered:I

    .line 221
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLastPokeTime:J

    .line 226
    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$1;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCancelDirectionRunnable:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$2;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHandler:Landroid/os/Handler;

    .line 257
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mEMAPress:Z

    .line 272
    const-wide/16 v0, 0x50

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->ARROW_DOT_THRESHOLD:J

    .line 274
    const-wide/16 v0, 0x63

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->ANIMATION_DURATION:J

    .line 280
    const-string/jumbo v0, "white_lockscreen_wallpaper"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

    .line 282
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mShadowColor:I

    .line 284
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTextColor:I

    .line 286
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorMessage:Ljava/lang/String;

    .line 371
    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$3;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 456
    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$4;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    .line 550
    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$5;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 556
    const/16 v0, 0xc

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mVibratePattern:[J

    .line 915
    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$6;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

    .line 954
    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$7;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

    .line 1001
    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLastFooterMode:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    .line 1557
    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$8;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 451
    invoke-static {p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 452
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->makeAnimations()V

    .line 448
    return-void

    .line 556
    :array_0
    .array-data 8
        0x0
        0x3c
        0x19
        0x3c
        0x19
        0x3c
        0x32
        0x3c
        0x19
        0x3c
        0x19
        0x3c
    .end array-data
.end method

.method private checkAccountExist(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1241
    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;)V

    .line 1242
    .local v0, "accountAnalyzer":Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;->start()V

    .line 1238
    return-void
.end method

.method private checkPasswordAndHandle()V
    .locals 4

    .prologue
    const/16 v2, 0x2c

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    if-ne v0, v1, :cond_1

    .line 299
    :cond_0
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "do nothing on no direction input case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->MIN_INPUT_ALLOWED:I

    if-ge v0, v1, :cond_3

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    :goto_0
    return-void

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 309
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 310
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 311
    new-instance v3, Lcom/android/keyguard/KeyguardDirectionLockView$9;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$9;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    .line 308
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private clearDots()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 890
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 899
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    .line 889
    return-void

    .line 897
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private disableDevicePermanently()V
    .locals 3

    .prologue
    .line 1544
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in disableDevicePermanently()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1547
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1548
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 1550
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetmTimer()V

    .line 1551
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    .line 1552
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 1553
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    const v2, 0x10409cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1552
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1543
    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 3

    .prologue
    .line 1121
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in displayDefaultSecurityMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->DirectionLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1120
    return-void
.end method

.method private handleAndPerformDotAnimations()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 973
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 977
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    .line 981
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 983
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 985
    .local v0, "layParamForDots":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_2

    .line 986
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "layParamForDots":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 988
    .restart local v0    # "layParamForDots":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginLeft:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginRight:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 989
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 993
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 994
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 972
    :cond_3
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    const/4 v2, 0x0

    .line 1254
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in handleAttemptLockout()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1256
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1257
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 1258
    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    .line 1260
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetmTimer()V

    .line 1261
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    .line 1263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1266
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1268
    iput-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1271
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$15;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardDirectionLockView$15;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDirectionLockView$15;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1253
    return-void
.end method

.method private isSupportPatternBackupPin()Z
    .locals 1

    .prologue
    .line 862
    const/4 v0, 0x0

    return v0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 850
    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView;->mBuildCharacteristics:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private makeAnimations()V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    .line 905
    sget v1, Lcom/android/keyguard/R$anim;->keyguard_error_text_enter_animation:I

    .line 904
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    .line 906
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 907
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineIn33;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineIn33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 908
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    .line 909
    sget v1, Lcom/android/keyguard/R$anim;->keyguard_error_text_exit_animation:I

    .line 908
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    .line 910
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 911
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 902
    return-void
.end method

.method private resetmTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 883
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->interrupt()V

    .line 885
    iput-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    .line 882
    :cond_0
    return-void
.end method

.method private updateErrorText(I)Ljava/lang/String;
    .locals 5
    .param p1, "attempts"    # I

    .prologue
    .line 874
    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_wrong_direction_lock_vzw:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 876
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 875
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_wrong_direction_lock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    .prologue
    .line 1011
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in updateFooter()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLastFooterMode:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    .line 1014
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 1015
    return-void

    .line 1017
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardDirectionLockView;->-getcom-android-keyguard-KeyguardDirectionLockView$FooterModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1040
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->resizeFooter()V

    .line 1010
    :cond_1
    return-void

    .line 1020
    :pswitch_0
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "mode normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1026
    :pswitch_1
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "mode ForgotLockDirection changing to BackupPIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1032
    :pswitch_2
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "mode VerifyUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1017
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "animatedCell"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    .line 361
    return-void
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "animatedCell"    # Ljava/lang/Object;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    move-object v1, p1

    .line 359
    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/KeyguardDirectionLockView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .prologue
    .line 1532
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in hasOverlappingRendering()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    const/4 v0, 0x0

    return v0
.end method

.method public needsInput()Z
    .locals 2

    .prologue
    .line 1363
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in needsInput()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1444
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1445
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1443
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1453
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    .line 1456
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->removeCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    .line 1452
    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 1045
    return-void
.end method

.method protected onFinishInflate()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x63

    const/4 v9, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 569
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 570
    const-string/jumbo v4, "KeyguardDirectionLockView"

    const-string/jumbo v7, "in onFinishInflate()"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v4, :cond_7

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 573
    sget v4, Lcom/android/keyguard/R$id;->directionLockView:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DirectionLockView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    .line 574
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v4, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 577
    new-instance v4, Landroid/speech/tts/TextToSpeech;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v4, v7, v8}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 580
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "tts_default_rate"

    .line 581
    const/16 v8, 0x64

    .line 580
    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 582
    .local v1, "defaultRate":I
    const-string/jumbo v4, "KeyguardDirectionLockView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mTextToSpeech Rate - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    int-to-float v7, v1

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 585
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    .line 586
    const-string/jumbo v7, "accessibility"

    .line 585
    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 589
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 590
    const-string/jumbo v7, "universal_lock_vibration"

    .line 589
    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVibration:Z

    .line 591
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 592
    const-string/jumbo v7, "universal_lock_voice"

    .line 591
    invoke-static {v4, v7, v6, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVoice:Z

    .line 593
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 594
    const-string/jumbo v7, "universal_lock_visible"

    .line 593
    invoke-static {v4, v7, v6, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mShowArrow:Z

    .line 595
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 596
    const-string/jumbo v7, "universal_lock_beep"

    .line 595
    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayBeep:Z

    .line 598
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHashMap:Ljava/util/HashMap;

    .line 599
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHashMap:Ljava/util/HashMap;

    const-string/jumbo v7, "com.samsung.SMT.KEY_PARAM"

    const-string/jumbo v8, "DISABLE_NOTICE_POPUP"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 602
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 603
    sget v8, Lcom/android/keyguard/R$dimen;->direction_lock_keyguard_arrow_size:I

    .line 602
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    .line 607
    :goto_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    .line 608
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mShowArrow:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    .line 609
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVoice:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    .line 610
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVibration:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    .line 611
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayBeep:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    .line 612
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    .line 615
    new-instance v4, Lcom/android/keyguard/KeyguardDirectionLockView$10;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$10;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionLockAfterPasswordCheckedHandler:Landroid/os/Handler;

    .line 718
    sget v4, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/EmergencyCarrierArea;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mEcaView:Landroid/view/View;

    .line 720
    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v4, :cond_0

    .line 721
    sget v4, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    .line 722
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 723
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    sget v7, Lcom/android/keyguard/R$string;->kg_forgot_spass_button_text:I

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    .line 724
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/keyguard/KeyguardDirectionLockView$11;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$11;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    :cond_0
    sget v4, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    .line 735
    .local v0, "button":Lcom/android/keyguard/EmergencyButton;
    if-eqz v0, :cond_1

    .line 736
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 739
    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 742
    sget v4, Lcom/android/keyguard/R$id;->container:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

    .line 744
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v4, :cond_2

    .line 745
    const-string/jumbo v4, "KeyguardDirectionLockView"

    const-string/jumbo v7, "in onFinishInflate() mSecurityMessageDisplay IS NOT NULL"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    .line 749
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v7, "vibrator"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mVibraterService:Landroid/os/Vibrator;

    .line 752
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 753
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 754
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 757
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 758
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 759
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 762
    sget v4, Lcom/android/keyguard/R$id;->dot_layout:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotLayout:Landroid/widget/LinearLayout;

    .line 764
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$dimen;->dot_left_margin:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v8, v4

    iput-wide v8, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginLeft:D

    .line 765
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$dimen;->dot_right_margin:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v8, v4

    iput-wide v8, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginRight:D

    .line 767
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    .line 768
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$drawable;->keyguard_direction_view_dot_circle:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotBackground:Landroid/graphics/drawable/Drawable;

    .line 769
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    .line 770
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 771
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 773
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/keyguard/KeyguardDirectionLockView$12;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$12;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 785
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/keyguard/KeyguardDirectionLockView$13;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$13;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 808
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$dimen;->dot_size:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v8, v4

    .line 809
    iget-wide v10, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginLeft:D

    .line 808
    add-double/2addr v8, v10

    .line 809
    iget-wide v10, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginRight:D

    .line 808
    add-double/2addr v8, v10

    .line 809
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    .line 808
    div-double v2, v8, v10

    .line 810
    .local v2, "mDotListAnimatorTolerance":D
    const/4 v4, 0x2

    new-array v4, v4, [F

    double-to-float v7, v2

    aput v7, v4, v6

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    .line 811
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 812
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 814
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/keyguard/KeyguardDirectionLockView$14;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$14;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 826
    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEPARATE_FAILED_ATTEMPTS_FOR_BIOMETRIC:Z

    if-eqz v4, :cond_3

    .line 827
    sget v4, Lcom/android/keyguard/R$id;->biometric_timeout_message:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    .line 830
    :cond_3
    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    if-eqz v4, :cond_4

    .line 831
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->checkAccountExist(Landroid/content/Context;)V

    .line 834
    :cond_4
    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v4, :cond_5

    .line 835
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsMobileKeyboardCovered:I

    .line 838
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    .line 837
    if-eqz v4, :cond_6

    .line 839
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->disableDevicePermanently()V

    .line 568
    :cond_6
    return-void

    .line 572
    .end local v0    # "button":Lcom/android/keyguard/EmergencyButton;
    .end local v1    # "defaultRate":I
    .end local v2    # "mDotListAnimatorTolerance":D
    :cond_7
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    .restart local v1    # "defaultRate":I
    :cond_8
    move v4, v6

    .line 589
    goto/16 :goto_1

    :cond_9
    move v4, v6

    .line 591
    goto/16 :goto_2

    :cond_a
    move v4, v6

    .line 593
    goto/16 :goto_3

    :cond_b
    move v4, v6

    .line 595
    goto/16 :goto_4

    .line 605
    :cond_c
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v4}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView()Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    goto/16 :goto_5

    .line 769
    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1407
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1410
    iput-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v0, :cond_1

    .line 1415
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1416
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1419
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    if-eqz v0, :cond_2

    .line 1420
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->interrupt()V

    .line 1421
    iput-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    .line 1424
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    .line 1406
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 1437
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->reset()V

    .line 1439
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->displayDefaultSecurityMessage()V

    .line 1436
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1057
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in onTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1160
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1161
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in onWindowFocusChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1166
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetmTimer()V

    .line 1167
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    .line 1169
    if-eqz p1, :cond_0

    .line 1171
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->reset()V

    .line 1159
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 1069
    const-string/jumbo v2, "KeyguardDirectionLockView"

    const-string/jumbo v3, "in reset()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1071
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1072
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 1074
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetmTimer()V

    .line 1075
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    .line 1079
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    .line 1078
    if-eqz v2, :cond_0

    .line 1080
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->disableDevicePermanently()V

    .line 1068
    :goto_0
    return-void

    .line 1084
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 1086
    .local v0, "deadline":J
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1087
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 1086
    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    .line 1089
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 1090
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->handleAttemptLockout(J)V

    goto :goto_0

    .line 1096
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1097
    sget-object v2, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    goto :goto_0

    .line 1098
    :cond_2
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsAccountExist:Z

    if-eqz v2, :cond_3

    .line 1102
    iget v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    if-lt v2, v4, :cond_3

    .line 1103
    sget-object v2, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ForgotLockDirection:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    goto :goto_0

    .line 1104
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->isSupportPatternBackupPin()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    if-lt v2, v4, :cond_4

    .line 1105
    sget-object v2, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    goto :goto_0

    .line 1107
    :cond_4
    sget-object v2, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 524
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 535
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setNextMessageColor(I)V

    .line 1395
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1393
    return-void
.end method

.method public showPromptReason(I)V
    .locals 8
    .param p1, "reason"    # I

    .prologue
    const/16 v7, 0x1388

    const/4 v6, 0x0

    .line 1369
    const-string/jumbo v3, "KeyguardDirectionLockView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showPromptReason() reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iput p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPromptReason:I

    .line 1372
    if-eqz p1, :cond_2

    .line 1373
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 1374
    .local v0, "deadline":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 1375
    return-void

    .line 1377
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->DirectionLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v4, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v2

    .line 1378
    .local v2, "promptReasonString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1379
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    .line 1380
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1368
    .end local v0    # "deadline":J
    .end local v2    # "promptReasonString":Ljava/lang/String;
    :goto_0
    return-void

    .line 1382
    .restart local v0    # "deadline":J
    .restart local v2    # "promptReasonString":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    goto :goto_0

    .line 1385
    .end local v0    # "deadline":J
    .end local v2    # "promptReasonString":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    goto :goto_0
.end method

.method public startAppearAnimation()V
    .locals 2

    .prologue
    .line 1481
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in startAppearAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1492
    const-string/jumbo v0, "KeyguardDirectionLockView"

    const-string/jumbo v1, "in startDisappearAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1494
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1496
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->interrupt()V

    .line 1498
    iput-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    .line 1501
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    .line 1503
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1507
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mContext:Landroid/content/Context;

    .line 1508
    const v2, 0x10c000f

    .line 1507
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 1503
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1508
    const-wide/16 v2, 0x64

    .line 1503
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1511
    const/4 v0, 0x1

    return v0
.end method

.method public updateChildViewsLook()V
    .locals 0

    .prologue
    .line 1516
    return-void
.end method
