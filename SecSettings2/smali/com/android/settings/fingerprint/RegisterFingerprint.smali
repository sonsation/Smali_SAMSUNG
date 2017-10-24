.class public Lcom/android/settings/fingerprint/RegisterFingerprint;
.super Landroid/app/Activity;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/RegisterFingerprint$1;,
        Lcom/android/settings/fingerprint/RegisterFingerprint$2;,
        Lcom/android/settings/fingerprint/RegisterFingerprint$3;,
        Lcom/android/settings/fingerprint/RegisterFingerprint$4;,
        Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;
    }
.end annotation


# static fields
.field private static final mIsEnableSurveyMode:Z

.field private static mIsEnforcedMultifactorNReset:Z


# instance fields
.field private first_line_text:Landroid/widget/TextView;

.field private fromShowGuidewithTipDialog:Z

.field private isBackSecond:Z

.field private isEnrolling:Z

.field private isError:Z

.field private isFirstGuideShow:Z

.field private isFirstGuideShowClose:Z

.field private isLiftMsgCalled:Z

.field private isPauseRegistration:Z

.field private isPaused:Z

.field private isPreEnrolled:Z

.field private isRegisterCompleted:Z

.field private isRegisterStarted:Z

.field private isRotateGuideShow:Z

.field private isShowKeyboardAlertDialog:Z

.field private mAddButton:Landroid/widget/Button;

.field private mBackEnabled:Z

.field private mBackHandler:Landroid/os/Handler;

.field private mCaptureNG:I

.field private mCaptureOK:I

.field private mChallenge:J

.field private mClearHomekey:I

.field private mConfirmedDisclaimer:Z

.field private mContinueButton:Landroid/widget/Button;

.field private mCoversTheEntire:I

.field private mDirectFingerprintLock:Z

.field private mDone2Button:Landroid/widget/Button;

.field private mDoneButton:Landroid/widget/Button;

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mEnrollmentCancel:Landroid/os/CancellationSignal;

.field mErrorMessage:Landroid/widget/RelativeLayout;

.field mErrorText:Landroid/widget/TextView;

.field private mEventProgressBarCount:I

.field mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFirstGuideScreen:Landroid/widget/RelativeLayout;

.field mGuideText:Landroid/widget/RelativeLayout;

.field mGuideTitle:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHasEnrolledFinger:Z

.field private mIdentifyFingerprint:Z

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mIsAfw:Z

.field private mIsButtonClicked:Z

.field private mIsContinueButtonClicked:Z

.field private mIsFromKnoxKeyguardEnroll:Z

.field private mIsFromKnoxOtherCases:Z

.field private mIsFromKnoxSetupWizard:Z

.field private mIsFromKnoxTwoStep:Z

.field private mIsInMultiWindowMode:Z

.field private mIsReCreated:Z

.field private mIsRearSensor:Z

.field private mIsSharedDevice:Z

.field private mKeyboardDialog:Landroid/app/AlertDialog;

.field private mLiftMsgShow:Z

.field private mLiftOff:I

.field private mLittleLonger:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMsgHandler:Landroid/os/Handler;

.field private mMsgRunnable:Ljava/lang/Runnable;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviousStage:Ljava/lang/String;

.field mRegisterErrorHandler:Landroid/os/Handler;

.field mRegisterErrorRunnable:Ljava/lang/Runnable;

.field private mRegisterScreen:Landroid/widget/RelativeLayout;

.field private mSecondGuideScreen:Landroid/widget/RelativeLayout;

.field private mSensorStatus:I

.field private mSurface:Landroid/view/Surface;

.field private mTextureView:Landroid/view/TextureView;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mToken:[B

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTxtVewProgress:Landroid/widget/TextView;

.field private mUiVersion:I

.field private mUpAndDown:I

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private mWasSecureBefore:Z

.field private pRunnable:Ljava/lang/Runnable;

.field private selectedFingerIndex:I

.field tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureOK:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mClearHomekey:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCoversTheEntire:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftOff:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLittleLonger:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/settings/fingerprint/RegisterFingerprint;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    return v0
.end method

.method static synthetic -get29(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUpAndDown:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShowClose:Z

    return v0
.end method

.method static synthetic -get30(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isLiftMsgCalled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPaused:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isRegisterCompleted:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isRotateGuideShow:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureNG:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCoversTheEntire:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftOff:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLittleLonger:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic -set17(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set18(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUpAndDown:I

    return p1
.end method

.method static synthetic -set19(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isLiftMsgCalled:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPaused:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isRegisterCompleted:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isShowKeyboardAlertDialog:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureNG:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureOK:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mClearHomekey:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->cancelEnrollment()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V
    .locals 0
    .param p1, "imageQuality"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0
    .param p1, "guideNum"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuideScreen(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0
    .param p1, "eventStatus"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startEnrollment()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V
    .locals 0
    .param p1, "animationType"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "msgString"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->eventProcess(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finishRegistration()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0
    .param p1, "guideNum"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->hideGuideScreen(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runCompleteRegistration()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideTitle(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "visible"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setViewVisibility(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showDuplicatedDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 192
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 191
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsEnableSurveyMode:Z

    .line 216
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsEnforcedMultifactorNReset:Z

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 115
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    .line 116
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxKeyguardEnroll:Z

    .line 118
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    .line 128
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    .line 129
    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    .line 130
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 135
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    .line 152
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    .line 154
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    .line 166
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShowClose:Z

    .line 167
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z

    .line 168
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;

    .line 169
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;

    .line 170
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 172
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isShowKeyboardAlertDialog:Z

    .line 173
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mKeyboardDialog:Landroid/app/AlertDialog;

    .line 175
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    .line 177
    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mChallenge:J

    .line 179
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPreEnrolled:Z

    .line 180
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 182
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIdentifyFingerprint:Z

    .line 183
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDirectFingerprintLock:Z

    .line 184
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsAfw:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isLiftMsgCalled:Z

    .line 187
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isRegisterStarted:Z

    .line 188
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isRegisterCompleted:Z

    .line 203
    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUpAndDown:I

    .line 204
    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLittleLonger:I

    .line 205
    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCoversTheEntire:I

    .line 206
    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mClearHomekey:I

    .line 207
    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftOff:I

    .line 208
    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureOK:I

    .line 209
    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureNG:I

    .line 210
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    .line 211
    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    .line 212
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPaused:Z

    .line 213
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isRotateGuideShow:Z

    .line 214
    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    .line 215
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    .line 217
    iput v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    .line 218
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHasEnrolledFinger:Z

    .line 219
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    .line 224
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsButtonClicked:Z

    .line 225
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsContinueButtonClicked:Z

    .line 249
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 255
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    .line 256
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$2;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackHandler:Landroid/os/Handler;

    .line 415
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$3;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 483
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$4;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 87
    return-void
.end method

.method private DisableSystemKey()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1984
    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    .line 1985
    const/16 v1, 0xbb

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    .line 1986
    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1987
    .local v0, "sbm":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 1988
    const/high16 v1, 0x1200000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1983
    :cond_0
    return-void
.end method

.method private EnableSystemKey()V
    .locals 5

    .prologue
    const/16 v4, 0xbb

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1993
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1994
    invoke-direct {p0, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    .line 1996
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1997
    invoke-direct {p0, v4, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    .line 1999
    :cond_1
    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 2000
    .local v0, "sbm":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_2

    .line 2001
    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1992
    :cond_2
    return-void
.end method

.method private cancelEnrollment()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "cancelEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 408
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 410
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 405
    return-void
.end method

.method private checkMobileKeyboard()V
    .locals 6

    .prologue
    const v5, 0x7f0b0680

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1202
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1203
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    if-ne v1, v2, :cond_1

    .line 1204
    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "checkMobileKeyboard : Keyboard is mounted. Reduce the layout."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->reduceTopMargin()V

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isShowKeyboardAlertDialog:Z

    .line 1208
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0b0732

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1209
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showFingerprintKeyboardDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 1212
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    if-ne v1, v2, :cond_3

    .line 1213
    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "checkMobileKeyboard : Keyboard has been removed. Restore the layout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->restoreTopMargin()V

    goto :goto_0

    .line 1216
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isShowKeyboardAlertDialog:Z

    if-eqz v1, :cond_0

    .line 1217
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isShowKeyboardAlertDialog:Z

    .line 1218
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method private eventProcess(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "msgString"    # Ljava/lang/CharSequence;

    .prologue
    .line 536
    move v0, p1

    .line 538
    .local v0, "evtId":I
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint$6;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 534
    return-void
.end method

.method private finishRegistration()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "isShopDemo is true, showLDUDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showLDUDialog()V

    .line 457
    return-void

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-nez v1, :cond_3

    .line 461
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "FingerprintSettings_register"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 462
    const-string/jumbo v1, "fingerprint_entry"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsAfw:Z

    if-eqz v1, :cond_2

    .line 463
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.sdk.pass.SpassFingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 460
    if-eqz v1, :cond_3

    .line 464
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startFingerprintLockSettings()V

    .line 467
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 468
    .local v0, "result_intent":Landroid/content/Intent;
    const-string/jumbo v1, "fingerIndex"

    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    const-string/jumbo v1, "isSharedDevice"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    const-string/jumbo v1, "previousStage"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 472
    const-string/jumbo v1, "enrollResult"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_fingerIndex"

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 476
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "lock_screen_pin_pattern_password"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b072b

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 478
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    .line 480
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 453
    return-void
.end method

.method private getFingerRegisterText()I
    .locals 2

    .prologue
    .line 2093
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 2094
    const/16 v0, 0x190

    return v0

    .line 2096
    :cond_0
    const/16 v0, 0x192

    return v0
.end method

.method private getSDAgentString()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1029
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 1030
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 1034
    .local v4, "s":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 1036
    .local v2, "res":Landroid/content/res/Resources;
    const-string/jumbo v5, "com.sec.enterprise.knox.shareddevice:string/fingerprint_accountpwd_as_confirmpwd"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1035
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1037
    .local v3, "resourceId":I
    if-eqz v3, :cond_0

    .line 1038
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.sec.enterprise.knox.shareddevice"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1039
    .local v4, "s":Ljava/lang/CharSequence;
    const-string/jumbo v5, "FpstRegisterTouchFingerprint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSDAgentString: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resourceId":I
    .end local v4    # "s":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v4

    .line 1041
    :catch_0
    move-exception v1

    .line 1042
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getStatusBarHeight()I
    .locals 6

    .prologue
    .line 940
    const/4 v1, 0x0

    .line 941
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 942
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 943
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 945
    :cond_0
    return v1
.end method

.method private hideGuideScreen(I)V
    .locals 8
    .param p1, "guideNum"    # I

    .prologue
    const-wide/16 v6, 0x12c

    const/16 v4, 0xc9

    const/16 v1, 0xc8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1263
    packed-switch p1, :pswitch_data_0

    .line 1304
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1306
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1307
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1309
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 1310
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1311
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    .line 1262
    :cond_2
    return-void

    .line 1265
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v4, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 1266
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 1267
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    .line 1269
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    .line 1270
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$9;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    .line 1278
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1281
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v4, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 1282
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 1284
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    .line 1285
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$10;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$10;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    .line 1293
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1295
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 1296
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPaused:Z

    .line 1297
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->requestResume()Z

    goto :goto_0

    .line 1263
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 229
    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertSurveyLog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsEnableSurveyMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-boolean v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsEnableSurveyMode:Z

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 233
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 234
    invoke-static/range {v0 .. v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 228
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private isFingerprintDisabled()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1050
    const/4 v4, 0x0

    .line 1051
    .local v4, "isDisabledByEDM":Z
    const/4 v3, 0x0

    .line 1052
    .local v3, "isDisabledByDPM":Z
    const/4 v2, 0x0

    .line 1054
    .local v2, "isDisabledByCC":Z
    const-string/jumbo v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1056
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 1057
    const-string/jumbo v6, "FpstRegisterTouchFingerprint"

    const-string/jumbo v7, "isFingerprintDisabled :  dpm is NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    return v8

    .line 1061
    :cond_0
    iget v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v0, v10, v7}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_3

    const/4 v3, 0x1

    .line 1065
    :goto_0
    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    .line 1066
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v9, "isBiometricAuthenticationEnabled"

    invoke-static {v7, v8, v9, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1067
    .local v1, "isBiometricAuthenticationEnabled":I
    invoke-virtual {v0, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v7

    if-lez v7, :cond_1

    .line 1068
    if-nez v1, :cond_1

    .line 1069
    const-string/jumbo v7, "FpstRegisterTouchFingerprint"

    const-string/jumbo v8, "isBiometricAuthenticationEnabled == Utils.EDM_FALSE"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/4 v4, 0x1

    .line 1076
    :cond_1
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1077
    const/4 v2, 0x1

    .line 1080
    :cond_2
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    .end local v2    # "isDisabledByCC":Z
    :goto_1
    return v2

    .line 1061
    .end local v1    # "isBiometricAuthenticationEnabled":I
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v2    # "isDisabledByCC":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .restart local v1    # "isBiometricAuthenticationEnabled":I
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    move v2, v6

    .line 1080
    goto :goto_1
.end method

.method private isSkipGuideScreen()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1316
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1317
    const-string/jumbo v0, "FingerprintSettings_register"

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1321
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_guide_shown"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1322
    return v3

    .line 1318
    :cond_1
    return v2

    .line 1324
    :cond_2
    return v2
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    .line 2017
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 2019
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2020
    :catch_0
    move-exception v0

    .line 2021
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSystemKeyEventRequested - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    const/4 v2, 0x0

    return v2
.end method

.method private launchChooseLock()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 970
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "launchChooseLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 973
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "minimum_quality"

    .line 974
    const/high16 v3, 0x10000

    .line 973
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 976
    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 979
    const-string/jumbo v2, "for_fingerprint"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 980
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 981
    sget-boolean v2, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_0

    .line 982
    const-string/jumbo v2, "fromKnoxKeyguard"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 984
    :cond_0
    const-string/jumbo v2, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 985
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIdentifyFingerprint:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 986
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    .line 987
    const v3, 0x61000

    .line 986
    if-ne v2, v3, :cond_2

    .line 989
    :cond_1
    const-string/jumbo v2, "confirm_credentials"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 990
    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxKeyguardEnroll:Z

    if-eqz v2, :cond_3

    .line 993
    const-string/jumbo v2, "confirm_credentials"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 995
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-eqz v2, :cond_4

    .line 996
    const-string/jumbo v2, "isFromKnoxSetDigitalLock"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 999
    :cond_4
    const/16 v2, 0x3eb

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1000
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 1001
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPreEnrolled:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :goto_0
    return-void

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "launchChooseLock : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0
.end method

.method private launchConfirmLock()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1009
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "launchConfirmLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mChallenge:J

    .line 1013
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 1015
    .local v1, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSDAgentString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1017
    :goto_0
    const v2, 0x7f0b10c2

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1018
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-wide v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mChallenge:J

    iget v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    .line 1016
    const/16 v2, 0x3ea

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1019
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "Fail launchConfirmationActivity!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_0
    iput-boolean v9, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 1023
    iput-boolean v9, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPreEnrolled:Z

    .line 1008
    return-void

    .line 1015
    :cond_1
    const/4 v0, 0x0

    .local v0, "s":Ljava/lang/CharSequence;
    goto :goto_0

    .end local v0    # "s":Ljava/lang/CharSequence;
    :cond_2
    move-object v5, v4

    .line 1018
    goto :goto_1
.end method

.method private reduceTopMargin()V
    .locals 7

    .prologue
    const v6, 0x7f0a03c1

    const v5, 0x7f0a03c0

    const v4, 0x7f0a03be

    const/4 v3, 0x0

    .line 1144
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1145
    const v1, 0x7f1103a2

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1146
    .local v0, "layout":Landroid/view/View;
    invoke-direct {p0, v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1147
    const v1, 0x7f1103a3

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1148
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1149
    const v1, 0x7f110398

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1150
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1152
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1153
    const v1, 0x7f11039b

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1154
    invoke-direct {p0, v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1155
    const v1, 0x7f110388

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1156
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1157
    const v1, 0x7f110389

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1158
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1159
    const v1, 0x7f11039c

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1160
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1162
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1163
    const v1, 0x7f1103a4

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1164
    invoke-direct {p0, v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1165
    const v1, 0x7f1103a5

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1166
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1167
    const v1, 0x7f110399

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1168
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1141
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 2007
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2006
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 2009
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2010
    :catch_0
    move-exception v0

    .line 2011
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    const/4 v2, 0x0

    return v2
.end method

.method private restoreTopMargin()V
    .locals 6

    .prologue
    const v5, 0x7f0a03b5

    const v4, 0x7f0a03b0

    const v3, 0x7f0a03b8

    .line 1174
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1175
    const v1, 0x7f1103a2

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1176
    .local v0, "layout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1177
    const v1, 0x7f1103a3

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1178
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1179
    const v1, 0x7f110398

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1180
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1182
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1183
    const v1, 0x7f11039b

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1184
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1185
    const v1, 0x7f110388

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1186
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1187
    const v1, 0x7f110389

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1188
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1189
    const v1, 0x7f11039c

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1190
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1192
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1193
    const v1, 0x7f1103a4

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1194
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1195
    const v1, 0x7f1103a5

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1196
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1197
    const v1, 0x7f110399

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1198
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1171
    return-void
.end method

.method private runCompleteRegistration()V
    .locals 7

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startCompleteEffect()V

    .line 425
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendSurveyLog()V

    .line 427
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxKeyguardEnroll:Z

    if-eqz v3, :cond_0

    .line 428
    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "ENFORCE MULTIFACTOR ENROLL FINGER FINISH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v1, "knoxIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.knox.kss"

    const-string/jumbo v5, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 431
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 432
    const-string/jumbo v3, "resetResult"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    .line 434
    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 437
    .end local v1    # "knoxIntent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v3, "google_setupwizard_fingerprint"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "PYPT"

    const-string/jumbo v6, "Fingerprints"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_1
    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 442
    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$5;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$5;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 448
    .local v2, "runnable":Ljava/lang/Runnable;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 449
    .local v0, "handler":Landroid/os/Handler;
    const-wide/16 v4, 0x4b0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :cond_2
    return-void
.end method

.method private sendSurveyLog()V
    .locals 6

    .prologue
    .line 240
    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAF"

    const-string/jumbo v3, "UpAndDown"

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUpAndDown:I

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 241
    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAF"

    const-string/jumbo v3, "LittleLonger"

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLittleLonger:I

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 242
    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAF"

    const-string/jumbo v3, "CoversTheEntire"

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCoversTheEntire:I

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 243
    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAF"

    const-string/jumbo v3, "ClearHomekey"

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mClearHomekey:I

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 244
    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAF"

    const-string/jumbo v3, "LiftOff"

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftOff:I

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 245
    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAT"

    const-string/jumbo v3, "OK"

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureOK:I

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 246
    const-string/jumbo v1, "com.samsung.android.fingerprint.service"

    const-string/jumbo v2, "FPAT"

    const-string/jumbo v3, "NG"

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCaptureNG:I

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 239
    return-void
.end method

.method private setFingerGuideText(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    const v1, 0x7f0b0726

    const/4 v3, 0x0

    .line 2041
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2042
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "first_line_text is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    return-void

    .line 2046
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2040
    :cond_1
    :goto_0
    return-void

    .line 2048
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    const v1, 0x7f0b073b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2051
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2052
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 2053
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 2057
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2060
    :pswitch_3
    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2061
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    const v1, 0x7f0b06a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2063
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    const v1, 0x7f0b0727

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2046
    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setFingerGuideTitle(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2073
    :cond_0
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "mGuideTitle is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    return-void

    .line 2077
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2071
    :goto_0
    :pswitch_0
    return-void

    .line 2079
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    const v1, 0x7f0b069c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2082
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    const v1, 0x7f0b069d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2085
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    const v1, 0x7f0b069f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2077
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 922
    const/16 v0, 0x3400

    .line 923
    .local v0, "visibility":I
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 925
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 926
    .local v1, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 921
    return-void
.end method

.method private setTopMargin(Landroid/view/View;I)V
    .locals 3
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "margin"    # I

    .prologue
    .line 932
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 933
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 934
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 935
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private setViewVisibility(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "visible"    # Z

    .prologue
    .line 2028
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2029
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2030
    .local v0, "child":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 2031
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2032
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2028
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2034
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2035
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 2026
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showDuplicatedDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1760
    iget-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPaused:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v6, :cond_0

    .line 1761
    const-string/jumbo v6, "FpstRegisterTouchFingerprint"

    const-string/jumbo v7, "showDuplicatedDialog : Called Paused"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->requestPause()Z

    .line 1763
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPaused:Z

    .line 1766
    :cond_0
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1769
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1770
    const v6, 0x7f04010c

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1775
    .local v5, "view":Landroid/view/View;
    :goto_0
    const v6, 0x7f110386

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1776
    .local v4, "text":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0690

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    const v6, 0x7f110385

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;

    .line 1779
    .local v1, "alertView":Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;
    iget v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    iget-boolean v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->setUiVersion(IZ)V

    .line 1780
    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;->startAnimation()V

    .line 1782
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1783
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1784
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1785
    const v6, 0x7f0b0691

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1787
    new-instance v6, Lcom/android/settings/fingerprint/RegisterFingerprint$13;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$13;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 1786
    const v7, 0x104000a

    invoke-virtual {v2, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1792
    new-instance v6, Lcom/android/settings/fingerprint/RegisterFingerprint$14;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$14;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1806
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1807
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1759
    return-void

    .line 1772
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "alertView":Lcom/samsung/android/visualeffect/progressfingerscan/FingerPrintAlertView;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "text":Landroid/widget/TextView;
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    const v6, 0x7f040108

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method private showErrorMessage(ILjava/lang/String;)V
    .locals 8
    .param p1, "imageQuality"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1812
    :try_start_0
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "imageQuality["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const/16 v4, 0xca

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 1814
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    if-nez v4, :cond_1

    .line 1815
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1816
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    const/16 v5, 0xcb

    invoke-direct {p0, v5, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 1818
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    .line 1821
    :cond_1
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1822
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    .line 1823
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v5, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1826
    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1827
    .local v1, "mH":Landroid/os/Handler;
    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$15;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint$15;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    .line 1835
    .local v2, "mR":Ljava/lang/Runnable;
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1837
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    if-nez v4, :cond_3

    .line 1838
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    .line 1839
    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$16;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$16;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    .line 1862
    :cond_3
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 1863
    .local v3, "test":Z
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Run_Runnable_ErrorMSG : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    .end local v1    # "mH":Landroid/os/Handler;
    .end local v2    # "mR":Ljava/lang/Runnable;
    .end local v3    # "test":Z
    :goto_0
    return-void

    .line 1864
    :catch_0
    move-exception v0

    .line 1865
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "undefined imageQuality: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1866
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V

    goto :goto_0
.end method

.method private showFingerprintKeyboardDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 709
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 710
    const v1, 0x7f0b0733

    .line 709
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 713
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$7;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$7;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 712
    const v2, 0x104000a

    .line 709
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 719
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$8;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$8;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 709
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 725
    const/4 v1, 0x0

    .line 709
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mKeyboardDialog:Landroid/app/AlertDialog;

    .line 727
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mKeyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 708
    return-void
.end method

.method private showGuideScreen(I)V
    .locals 5
    .param p1, "guideNum"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1226
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    .line 1228
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1229
    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v0, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    .line 1233
    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    .line 1234
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z

    .line 1235
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isLiftMsgCalled:Z

    .line 1236
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V

    .line 1238
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1255
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 1256
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1257
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1258
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setFocusable(Z)V

    .line 1224
    :cond_2
    return-void

    .line 1240
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    .line 1241
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1242
    const v0, 0x7f110391

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    .line 1243
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_guide_shown"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1246
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isRotateGuideShow:Z

    .line 1247
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    const/16 v1, 0xc9

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 1248
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    const/16 v1, 0xcf

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 1249
    const v0, 0x7f110395

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    goto :goto_0

    .line 1238
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showGuidewithTipDialog()V
    .locals 4

    .prologue
    .line 1959
    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "showGuidewithTipDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1962
    const v2, 0x7f0b068a

    .line 1961
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1963
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b068b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1961
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1965
    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$19;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$19;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 1964
    const v3, 0x104000a

    .line 1961
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1971
    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$20;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 1961
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1980
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1958
    return-void
.end method

.method private showLDUDialog()V
    .locals 5

    .prologue
    .line 1738
    const v2, 0x7f0b06ac

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1739
    .local v1, "popupmessage":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1740
    const v3, 0x7f0b073a

    .line 1739
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1743
    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$11;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$11;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 1742
    const v4, 0x104000a

    .line 1739
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1748
    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$12;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$12;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 1739
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1754
    const/4 v3, 0x0

    .line 1739
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1756
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1737
    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 7
    .param p1, "eventStatus"    # I

    .prologue
    const/4 v6, 0x0

    .line 1896
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    if-eqz v3, :cond_0

    .line 1898
    return-void

    .line 1900
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0685

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1901
    .local v2, "errorTitle":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1903
    .local v1, "errorMessage":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1915
    const/4 v3, 0x5

    if-ne p1, v3, :cond_4

    .line 1916
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "always_finish_activities"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 1917
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 1918
    const v5, 0x7f0b0108

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1917
    const v5, 0x7f0b068e

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1929
    .local v1, "errorMessage":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    .line 1930
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    .line 1932
    :cond_1
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    const v4, 0x186c8

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    const v4, 0x186c9

    if-ne v3, v4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1936
    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1939
    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$17;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$17;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 1938
    const v5, 0x104000a

    .line 1936
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1944
    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$18;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$18;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 1936
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1954
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1894
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :goto_1
    return-void

    .line 1905
    .local v1, "errorMessage":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0687

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMessage":Ljava/lang/String;
    goto :goto_0

    .line 1908
    .local v1, "errorMessage":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b068b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMessage":Ljava/lang/String;
    goto :goto_0

    .line 1911
    .local v1, "errorMessage":Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b068c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1912
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b068d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMessage":Ljava/lang/String;
    goto :goto_0

    .line 1922
    .local v1, "errorMessage":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1923
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0689

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 1925
    .local v1, "errorMessage":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0688

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "errorMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 1933
    :cond_6
    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "Session closed!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_1

    .line 1903
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x3e9 -> :sswitch_0
        0x3eb -> :sswitch_1
    .end sparse-switch
.end method

.method private startBiometricsLockSetup()V
    .locals 5

    .prologue
    .line 949
    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "startBiometricsLockSetup"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.feature.fingerprint_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    .line 952
    .local v2, "uiLevel":I
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 955
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 956
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    const-string/jumbo v3, "for_fingerprint"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 960
    const/16 v3, 0x3ed

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 953
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->launchChooseLock()V

    goto :goto_0

    .line 961
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 963
    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "startBiometricsLockSetup : Activity Not Found !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0
.end method

.method private startCompleteEffect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2141
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setViewVisibility(Landroid/view/ViewGroup;Z)V

    .line 2143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2144
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$21;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$21;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 2186
    .local v1, "runnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2187
    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 2188
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setViewVisibility(Landroid/view/ViewGroup;Z)V

    .line 2140
    :cond_0
    return-void
.end method

.method private startEnrollment()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 371
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "startEnrollment"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    array-length v0, v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    aget-byte v0, v0, v3

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 376
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "Challenge is incorrect"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/16 v0, 0x3eb

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    .line 380
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_3

    .line 381
    :cond_1
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "startEnrollment : mToken or mFingerprintManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    .line 383
    return-void

    :cond_2
    move v0, v1

    .line 380
    goto :goto_0

    .line 386
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    .line 387
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 389
    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    .line 391
    :cond_4
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 401
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 402
    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 401
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    .line 370
    return-void
.end method

.method private startFingerprintLockSettings()V
    .locals 5

    .prologue
    .line 1084
    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "startFingerprintLockSettings()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFingerprintDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1087
    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "isFingerprintDisabled() = TRUE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return-void

    .line 1091
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    .line 1093
    .local v2, "passwordQuality":I
    const/16 v3, 0x1000

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1098
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1099
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    const-string/jumbo v3, "previousStage"

    const-string/jumbo v4, "fingerprint_settings_add_fingerprint"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1101
    const-string/jumbo v3, "hw_auth_token"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1102
    const-string/jumbo v3, "fingerprintlockmain"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDirectFingerprintLock:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1103
    const-string/jumbo v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1104
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    if-nez v3, :cond_2

    .line 1105
    const-string/jumbo v3, "WasSecureBefore"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1109
    :cond_2
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :goto_0
    return-void

    .line 1094
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "Directionlock Enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void

    .line 1110
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "Activity Not Found !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startViewAnimation(ILandroid/view/View;)V
    .locals 22
    .param p1, "animationType"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1609
    if-eqz p2, :cond_0

    .line 1610
    packed-switch p1, :pswitch_data_0

    .line 1607
    :goto_0
    :pswitch_0
    return-void

    .line 1612
    :pswitch_1
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1613
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1614
    .local v14, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1615
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1616
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1619
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    :pswitch_2
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1620
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1621
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1622
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1623
    const/4 v6, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1626
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    :pswitch_3
    new-instance v21, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1627
    .local v21, "textEffectOut":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1628
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1629
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1630
    const/4 v9, 0x1

    const v10, 0x3cf5c28f    # 0.03f

    .line 1627
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1631
    .local v2, "translateDown":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x190

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1632
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1633
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x190

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1634
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1635
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ea8f5c3    # 0.33f

    const/4 v8, 0x0

    const v9, 0x3f2b851f    # 0.67f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1636
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1637
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1638
    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1639
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1640
    const/4 v6, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1643
    .end local v2    # "translateDown":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v21    # "textEffectOut":Landroid/view/animation/AnimationSet;
    :pswitch_4
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    new-instance v20, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1645
    .local v20, "textEffectIn":Landroid/view/animation/AnimationSet;
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1646
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1647
    const/4 v8, 0x1

    const v9, 0x3cf5c28f    # 0.03f

    .line 1648
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1645
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1649
    .local v3, "translateUp":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x190

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1650
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1651
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x190

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1652
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1653
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ea8f5c3    # 0.33f

    const/4 v8, 0x0

    const v9, 0x3f2b851f    # 0.67f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1654
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1655
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1656
    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1657
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1660
    .end local v3    # "translateUp":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v20    # "textEffectIn":Landroid/view/animation/AnimationSet;
    :pswitch_5
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1661
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1662
    .local v15, "completeAnimation":Landroid/view/animation/AnimationSet;
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1663
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1664
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1665
    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1666
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1667
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1670
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v15    # "completeAnimation":Landroid/view/animation/AnimationSet;
    :pswitch_6
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1671
    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1672
    .local v18, "textEffectGuideIn":Landroid/view/animation/AnimationSet;
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1673
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1674
    const/4 v9, 0x1

    const v10, 0x3dcccccd    # 0.1f

    .line 1675
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1672
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1676
    .local v4, "translateGuideUp":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1677
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1678
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x14a

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1679
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1680
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ea8f5c3    # 0.33f

    const/4 v8, 0x0

    const v9, 0x3f2b851f    # 0.67f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1681
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1682
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1683
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1684
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1687
    .end local v4    # "translateGuideUp":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v18    # "textEffectGuideIn":Landroid/view/animation/AnimationSet;
    :pswitch_7
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1688
    .local v19, "textEffectGuideOut":Landroid/view/animation/AnimationSet;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1689
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1690
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1691
    const/4 v12, 0x1

    const v13, 0x3dcccccd    # 0.1f

    .line 1688
    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1692
    .local v5, "translateGuideDown":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1693
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1694
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x14a

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1695
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1696
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ea8f5c3    # 0.33f

    const/4 v8, 0x0

    const v9, 0x3e4ccccd    # 0.2f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1697
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1698
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1699
    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1700
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1701
    const/4 v6, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1708
    .end local v5    # "translateGuideDown":Landroid/view/animation/Animation;
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v19    # "textEffectGuideOut":Landroid/view/animation/AnimationSet;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1710
    :sswitch_0
    new-instance v17, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1711
    .local v17, "effectGuideOut":Landroid/view/animation/AnimationSet;
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ea8f5c3    # 0.33f

    const/4 v8, 0x0

    const v9, 0x3f2b851f    # 0.67f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1712
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e19999a    # 0.15f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1713
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1714
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1715
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1716
    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1718
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v6}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->showErrorEffect()V

    goto/16 :goto_0

    .line 1721
    .end local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v17    # "effectGuideOut":Landroid/view/animation/AnimationSet;
    :sswitch_1
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1722
    .local v16, "effectGuideIn":Landroid/view/animation/AnimationSet;
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ea8f5c3    # 0.33f

    const/4 v8, 0x0

    const v9, 0x3f2b851f    # 0.67f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1723
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const v6, 0x3e19999a    # 0.15f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1724
    .restart local v14    # "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1725
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1726
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1727
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v6}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeFingerMark()V

    goto/16 :goto_0

    .line 1610
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1708
    :sswitch_data_0
    .sparse-switch
        0xca -> :sswitch_0
        0xce -> :sswitch_1
    .end sparse-switch
.end method

.method private updateRegisterFingerprint()V
    .locals 9

    .prologue
    const/16 v8, 0x190

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1329
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "updateRegisterFingerprint()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1333
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_9

    .line 1334
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1336
    .local v1, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    if-ne v2, v7, :cond_7

    .line 1337
    const v2, 0x7f04010b

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setContentView(I)V

    .line 1338
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setIndicatorTransparency()V

    .line 1359
    .end local v1    # "wmLp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    const v2, 0x7f110387

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    .line 1360
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1361
    const v2, 0x7f11038f

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    .line 1362
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1363
    const v2, 0x7f110393

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    .line 1364
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSecondGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getStatusBarHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setTopMargin(Landroid/view/View;I)V

    .line 1366
    const v2, 0x7f110388

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    .line 1368
    const v2, 0x7f11038a

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    .line 1369
    const v2, 0x7f11038b

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    .line 1370
    const v2, 0x7f110389

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    .line 1371
    invoke-direct {p0, v8}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V

    .line 1372
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b06cf

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1373
    const v2, 0x7f11038c

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    .line 1374
    const v2, 0x7f11037a

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorText:Landroid/widget/TextView;

    .line 1376
    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    if-ne v2, v7, :cond_5

    .line 1377
    const v2, 0x7f11039e

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAddButton:Landroid/widget/Button;

    .line 1378
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAddButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 1379
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1381
    :cond_1
    const v2, 0x7f11039f

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDoneButton:Landroid/widget/Button;

    .line 1382
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDoneButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 1383
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1385
    :cond_2
    const v2, 0x7f1103a1

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDone2Button:Landroid/widget/Button;

    .line 1386
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDone2Button:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 1387
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDone2Button:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1389
    :cond_3
    const v2, 0x7f110397

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mContinueButton:Landroid/widget/Button;

    .line 1390
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mContinueButton:Landroid/widget/Button;

    if-eqz v2, :cond_4

    .line 1391
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1393
    :cond_4
    const v2, 0x7f11039b

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    .line 1394
    invoke-direct {p0, v8}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideTitle(I)V

    .line 1397
    :cond_5
    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1398
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v2, p0, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1401
    :cond_6
    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isRegisterStarted:Z

    .line 1402
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    .line 1403
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->DisableSystemKey()V

    .line 1405
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSkipGuideScreen()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1406
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    const/16 v3, 0xc8

    invoke-direct {p0, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 1407
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    const/16 v3, 0xcf

    invoke-direct {p0, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    .line 1408
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startEnrollment()V

    .line 1328
    :goto_1
    return-void

    .line 1340
    .restart local v1    # "wmLp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    const-string/jumbo v2, "fingerprint_setup_wizard"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1341
    const-string/jumbo v2, "#00b081"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1342
    const v2, 0x7f04010a

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setContentView(I)V

    .line 1343
    if-eqz v1, :cond_0

    .line 1344
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1345
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .line 1348
    :cond_8
    const v2, 0x7f040109

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setContentView(I)V

    .line 1349
    if-eqz v1, :cond_0

    .line 1350
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1351
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .line 1356
    .end local v1    # "wmLp":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_0

    .line 1410
    :cond_a
    const/16 v2, 0x12c

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuideScreen(I)V

    goto :goto_1
.end method


# virtual methods
.method public chageGuideVideo(I)V
    .locals 5
    .param p1, "guideNum"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 2294
    const/4 v1, 0x0

    .line 2295
    .local v1, "videoUri":Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 2315
    .end local v1    # "videoUri":Landroid/net/Uri;
    :goto_0
    if-eqz v1, :cond_0

    .line 2317
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 2318
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2319
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 2320
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 2321
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2293
    :cond_0
    :goto_1
    return-void

    .line 2297
    .restart local v1    # "videoUri":Landroid/net/Uri;
    :pswitch_0
    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    if-ge v2, v3, :cond_1

    .line 2298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/raw/fingerprint_v_02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2302
    .local v1, "videoUri":Landroid/net/Uri;
    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShowClose:Z

    goto :goto_0

    .line 2300
    .local v1, "videoUri":Landroid/net/Uri;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/raw/fingerprint_dream_v_02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "videoUri":Landroid/net/Uri;
    goto :goto_2

    .line 2305
    .local v1, "videoUri":Landroid/net/Uri;
    :pswitch_1
    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    if-ge v2, v3, :cond_2

    .line 2306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/raw/fingerprint_h_02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "videoUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 2308
    .local v1, "videoUri":Landroid/net/Uri;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/raw/fingerprint_dream_h_02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "videoUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 2322
    .end local v1    # "videoUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 2323
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_1

    .line 2295
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 266
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 268
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 271
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 273
    packed-switch p1, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 275
    :pswitch_1
    if-ne p2, v6, :cond_3

    .line 276
    if-eqz p3, :cond_1

    .line 277
    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    .line 279
    :cond_1
    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult: token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    if-nez v2, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    goto :goto_0

    .line 279
    :cond_2
    const-string/jumbo v2, "NULL"

    goto :goto_1

    .line 286
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0

    .line 290
    :pswitch_2
    if-ne p2, v7, :cond_d

    .line 291
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 292
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 293
    const v2, 0x7f0b071c

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 329
    :cond_4
    :goto_2
    if-eqz p3, :cond_5

    .line 330
    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    .line 332
    :cond_5
    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult: token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iput-boolean v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDirectFingerprintLock:Z

    .line 337
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    if-eqz v2, :cond_c

    .line 338
    :cond_6
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    if-nez v2, :cond_0

    .line 339
    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[KNOX FINGERPRINT] : startEnroll, token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    goto/16 :goto_0

    .line 295
    :cond_7
    const v2, 0x7f0b071a

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 298
    :cond_8
    const/4 v1, 0x0

    .line 299
    .local v1, "toastMsg":Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_9

    .line 300
    iput v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    .line 302
    :cond_9
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 303
    .local v0, "passwordQuality":I
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passwordQuality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sparse-switch v0, :sswitch_data_0

    .line 324
    .end local v1    # "toastMsg":Ljava/lang/String;
    :goto_5
    if-eqz v1, :cond_4

    .line 325
    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 307
    .restart local v1    # "toastMsg":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b06fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "toastMsg":Ljava/lang/String;
    goto :goto_5

    .line 312
    .local v1, "toastMsg":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b06fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "toastMsg":Ljava/lang/String;
    goto :goto_5

    .line 315
    .local v1, "toastMsg":Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b06fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "toastMsg":Ljava/lang/String;
    goto :goto_5

    .line 318
    .local v1, "toastMsg":Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b06fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "toastMsg":Ljava/lang/String;
    goto :goto_5

    .line 332
    .end local v0    # "passwordQuality":I
    .end local v1    # "toastMsg":Ljava/lang/String;
    :cond_a
    const-string/jumbo v2, "NULL"

    goto/16 :goto_3

    .line 339
    :cond_b
    const-string/jumbo v2, "NULL"

    goto/16 :goto_4

    .line 344
    :cond_c
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    if-nez v2, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    goto/16 :goto_0

    .line 350
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 351
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {p0, v5, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 359
    :pswitch_3
    if-ne p2, v6, :cond_e

    .line 360
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->launchChooseLock()V

    goto/16 :goto_0

    .line 362
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 304
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_3
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCanceDisclaimerDialog()V
    .locals 2

    .prologue
    .line 1890
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onCanceDisclaimerDialog: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 1889
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1579
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1578
    :cond_0
    :goto_0
    return-void

    .line 1581
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsButtonClicked:Z

    if-nez v0, :cond_0

    .line 1582
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsButtonClicked:Z

    .line 1583
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    .line 1584
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->recreate()V

    goto :goto_0

    .line 1589
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsButtonClicked:Z

    if-nez v0, :cond_0

    .line 1590
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsButtonClicked:Z

    .line 1591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    .line 1592
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finishRegistration()V

    goto :goto_0

    .line 1596
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsContinueButtonClicked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isRotateGuideShow:Z

    if-eqz v0, :cond_0

    .line 1597
    const/16 v0, 0x12d

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->hideGuideScreen(I)V

    .line 1598
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsContinueButtonClicked:Z

    goto :goto_0

    .line 1579
    :sswitch_data_0
    .sparse-switch
        0x7f110397 -> :sswitch_2
        0x7f11039e -> :sswitch_0
        0x7f11039f -> :sswitch_1
        0x7f1103a1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1573
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isRotateGuideShow:Z

    if-eqz v0, :cond_0

    .line 1574
    const/16 v0, 0x12d

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->hideGuideScreen(I)V

    .line 1572
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1135
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1138
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->checkMobileKeyboard()V

    .line 1134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 786
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    const-string/jumbo v7, "onCreate"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 790
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 792
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v7, "com.sec.feature.fingerprint_ui"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    .line 793
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate : mUiVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->isRearSesnor()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    .line 795
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate : mIsRearSensor = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsRearSensor:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    .line 797
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate : isInMultiWindowMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    if-eqz v4, :cond_0

    .line 800
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 801
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "enrollResult"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 802
    const-string/jumbo v4, "hw_auth_token"

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 803
    invoke-virtual {p0, v6, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 804
    const v4, 0x7f0b0714

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 805
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 806
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 807
    return-void

    .line 809
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "fingerprint_disclaimer_noti"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 810
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    .line 822
    :goto_0
    const-class v4, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 824
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v4, :cond_4

    .line 825
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    const-string/jumbo v5, "[onCreate] mFingerprintManager == null"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-direct {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    .line 827
    return-void

    .line 812
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 813
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "fingerprint_disclaimer_noti"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 814
    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    .line 815
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ConfirmedDisclaimer : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "fingerprint_disclaimer_noti"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 817
    :cond_2
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    goto :goto_1

    :cond_3
    move v4, v6

    .line 819
    goto :goto_2

    .line 829
    .end local v2    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    .line 830
    .local v1, "isHWdetected":Z
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    .line 832
    if-eqz v1, :cond_5

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    const v7, 0x186c8

    if-eq v4, v7, :cond_6

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    const v7, 0x186c9

    if-eq v4, v7, :cond_6

    .line 833
    :cond_5
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[onCreate] isHardwareDetected = false, requestGetSensorStatus = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSensorStatus:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-direct {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    .line 835
    return-void

    .line 839
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 841
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    .line 842
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mUserId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const-string/jumbo v4, "hw_auth_token"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    .line 845
    const-string/jumbo v7, "FpstRegisterTouchFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreate: token="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-nez v4, :cond_7

    if-eqz p1, :cond_7

    .line 848
    const-string/jumbo v4, "hw_auth_token"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    .line 849
    const-string/jumbo v4, "IsPreEnrolled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPreEnrolled:Z

    .line 850
    const-string/jumbo v4, "IsReCreated"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    .line 853
    :cond_7
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v7}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHasEnrolledFinger:Z

    .line 855
    const-string/jumbo v4, "fingerIndex"

    const/4 v7, -0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    .line 857
    const-string/jumbo v4, "isSharedDevice"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    .line 859
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[selectedFingerIndex] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string/jumbo v4, "previousStage"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    .line 861
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[previousStage] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string/jumbo v4, "lock_screen_fingerprint"

    iget-object v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 863
    const-string/jumbo v4, "password"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserPassword:Ljava/lang/String;

    .line 865
    :cond_8
    const-string/jumbo v4, "identifyFingerprint"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIdentifyFingerprint:Z

    .line 866
    const-string/jumbo v4, "isAfw"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsAfw:Z

    .line 868
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 869
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    .line 870
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "fromKnoxKeyguard"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsEnforcedMultifactorNReset:Z

    .line 873
    const-string/jumbo v4, "isFromKnoxSetupWizard"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    .line 874
    const-string/jumbo v4, "is_knox"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    .line 875
    const-string/jumbo v4, "is_reset_pwd"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxKeyguardEnroll:Z

    .line 876
    const-string/jumbo v4, "is_knox_two_step"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    .line 877
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[KNOX FINGERPRINT] : init, mIsFromKnoxSetupWizard:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 878
    const-string/jumbo v8, ", mIsFromKnoxOtherCases:"

    .line 877
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 878
    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    .line 877
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 878
    const-string/jumbo v8, ", mIsFromKnoxTwoStep"

    .line 877
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 878
    iget-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    .line 877
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPowerManager:Landroid/os/PowerManager;

    .line 883
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v4, :cond_c

    .line 884
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    .line 915
    :cond_9
    :goto_4
    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    if-nez v4, :cond_a

    .line 916
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 785
    :cond_a
    return-void

    .line 845
    :cond_b
    const-string/jumbo v4, "NULL"

    goto/16 :goto_3

    .line 885
    :cond_c
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPreEnrolled:Z

    if-nez v4, :cond_9

    .line 887
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    if-eqz v4, :cond_10

    .line 888
    :cond_d
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_9

    .line 889
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v7, 0x64

    if-lt v4, v7, :cond_e

    .line 890
    iput v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    .line 893
    :cond_e
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v7}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 894
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    const-string/jumbo v7, "[KNOX FINGERPRPINT] : nonFinger chooseLock CASE"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 896
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v6, "isFromKnoxSetDigitalLock"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 897
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->launchConfirmLock()V

    goto :goto_4

    .line 899
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startBiometricsLockSetup()V

    goto :goto_4

    .line 904
    :cond_10
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSharedDevice:Z

    if-nez v4, :cond_13

    .line 905
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 906
    const-string/jumbo v4, "lock_screen_fingerprint"

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 911
    :cond_11
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startBiometricsLockSetup()V

    goto :goto_4

    .line 907
    :cond_12
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    .line 908
    const v5, 0x61000

    .line 907
    if-eq v4, v5, :cond_11

    .line 909
    :cond_13
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->launchConfirmLock()V

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1535
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 1495
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1498
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPaused:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    .line 1499
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "onDestroy : Called Resume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->requestResume()Z

    .line 1501
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPaused:Z

    .line 1504
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-eqz v2, :cond_1

    .line 1505
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1506
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "KnoxKeyguardEventFlag"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1507
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.knox.kss"

    const-string/jumbo v4, "com.samsung.knox.kss.KnoxKeyguardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1508
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1511
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_2

    .line 1513
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1514
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1520
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPreEnrolled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    if-eqz v2, :cond_4

    .line 1521
    :cond_3
    const-string/jumbo v2, "lock_screen_pin_pattern_password"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1522
    const-string/jumbo v2, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1521
    if-nez v2, :cond_4

    .line 1523
    const-string/jumbo v2, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1521
    if-nez v2, :cond_4

    .line 1524
    const-string/jumbo v2, "personal_page"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1521
    if-nez v2, :cond_4

    .line 1525
    const-string/jumbo v2, "app_lock"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1520
    if-eqz v2, :cond_5

    .line 1526
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    if-nez v2, :cond_5

    .line 1527
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "postEnroll()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 1494
    :cond_5
    return-void

    .line 1515
    :catch_0
    move-exception v0

    .line 1516
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error shutting down TTS engine"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 740
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    .line 741
    const v4, 0x7f0b072a

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 743
    .local v1, "exitToast":Landroid/widget/Toast;
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    if-eqz v4, :cond_2

    .line 744
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 745
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 746
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "enrollResult"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 747
    invoke-virtual {p0, v9, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 748
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 749
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 781
    .end local v1    # "exitToast":Landroid/widget/Toast;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 750
    .restart local v1    # "exitToast":Landroid/widget/Toast;
    :cond_2
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    if-nez v4, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 751
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    if-nez v4, :cond_3

    .line 752
    iput-boolean v9, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    .line 753
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 754
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 755
    return v9

    .line 757
    :cond_3
    iput-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    .line 758
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 759
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "enrollResult"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    const-string/jumbo v4, "hw_auth_token"

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 761
    invoke-virtual {p0, v8, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 762
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 764
    iget-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mDirectFingerprintLock:Z

    if-eqz v4, :cond_4

    .line 766
    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {p0, v4}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v3

    .line 767
    .local v3, "notiIntent":Landroid/content/Intent;
    if-eqz v3, :cond_4

    .line 768
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    const-string/jumbo v5, "launchRedaction [startActivity]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    .end local v3    # "notiIntent":Landroid/content/Intent;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0

    .line 771
    .restart local v3    # "notiIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "FpstRegisterTouchFingerprint"

    const-string/jumbo v5, "launchRedactionInterstitial : Activity Not Found !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 1430
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 1431
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    .line 1429
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 732
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 735
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setIntent(Landroid/content/Intent;)V

    .line 731
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1540
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1550
    return v2

    .line 1542
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1543
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "enrollResult"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1544
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 1545
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 1546
    return v3

    .line 1540
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1446
    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1450
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setRequestedOrientation(I)V

    .line 1452
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->EnableSystemKey()V

    .line 1454
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 1456
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 1457
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1460
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 1461
    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "mMediaPlayer.release()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 1463
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 1464
    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1466
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 1467
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1468
    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    .line 1471
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 1472
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1473
    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    .line 1476
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isRegisterStarted:Z

    if-eqz v1, :cond_6

    .line 1477
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    if-eqz v1, :cond_4

    .line 1478
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->cancelEnrollment()V

    .line 1481
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isRegisterCompleted:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-ne v1, v2, :cond_6

    .line 1482
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1483
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v1, :cond_5

    .line 1484
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1486
    :cond_5
    const-string/jumbo v1, "enrollResult"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1487
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 1488
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 1445
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1416
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1417
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    if-nez v0, :cond_0

    .line 1420
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setRequestedOrientation(I)V

    .line 1423
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPauseRegistration:Z

    .line 1425
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->checkMobileKeyboard()V

    .line 1415
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1437
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1438
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1440
    const-string/jumbo v0, "IsPreEnrolled"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isPreEnrolled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1441
    const-string/jumbo v0, "IsReCreated"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsReCreated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1436
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1118
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1119
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "OnStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1129
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1130
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 8
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v6, 0x3

    .line 2194
    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    .line 2197
    const/4 v4, 0x0

    .line 2199
    .local v4, "videoUri":Landroid/net/Uri;
    :try_start_0
    iget-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    if-eqz v5, :cond_4

    .line 2200
    iget v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    if-ge v5, v6, :cond_3

    .line 2201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/raw/fingerprint_v_01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2213
    .end local v4    # "videoUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 2215
    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_1

    .line 2216
    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    .line 2217
    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 2218
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2221
    :cond_1
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2222
    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2223
    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v6, 0x9c4

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    .line 2224
    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 2225
    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 2226
    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 2229
    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/android/settings/fingerprint/RegisterFingerprint$22;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$22;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2267
    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/android/settings/fingerprint/RegisterFingerprint$23;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$23;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2193
    :cond_2
    :goto_1
    return-void

    .line 2203
    .restart local v4    # "videoUri":Landroid/net/Uri;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/raw/fingerprint_dream_v_01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .local v4, "videoUri":Landroid/net/Uri;
    goto :goto_0

    .line 2205
    .local v4, "videoUri":Landroid/net/Uri;
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isRotateGuideShow:Z

    if-eqz v5, :cond_0

    .line 2206
    iget v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiVersion:I

    if-ge v5, v6, :cond_5

    .line 2207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/raw/fingerprint_h_01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .local v4, "videoUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 2209
    .local v4, "videoUri":Landroid/net/Uri;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/raw/fingerprint_dream_h_01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, "videoUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 2287
    .end local v4    # "videoUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 2288
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "FpstRegisterTouchFingerprint"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_1

    .line 2284
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2285
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v5, "FpstRegisterTouchFingerprint"

    const-string/jumbo v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_1

    .line 2281
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    .line 2282
    .local v3, "e":Ljava/lang/SecurityException;
    const-string/jumbo v5, "FpstRegisterTouchFingerprint"

    const-string/jumbo v6, "SecurityException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_1

    .line 2278
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v1

    .line 2279
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "FpstRegisterTouchFingerprint"

    const-string/jumbo v6, "IllegalArgumentException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_1
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 2332
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/SurfaceTexture;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 2336
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 2342
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1555
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1569
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1558
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1559
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "Remove_Error_Runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startDisclaimerFromRegister()V
    .locals 2

    .prologue
    .line 1880
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "startDisclaimerFromRegister: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolling:Z

    if-nez v0, :cond_0

    .line 1883
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    .line 1879
    :cond_0
    return-void
.end method
