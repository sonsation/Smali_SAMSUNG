.class public Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;
.super Landroid/app/Activity;
.source "FaceSetupwizardBixby.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$1;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$2;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;
    }
.end annotation


# instance fields
.field private final BOUNCE_DOWN_EFFECT_DELAY:I

.field private final BOUNCE_UP_EFFECT_DELAY:I

.field private final RESULT_RETRY:I

.field private final START_VOICE_LISTENING_DELAY:I

.field completionCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

.field private mBackground4:Landroid/widget/FrameLayout;

.field private mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mContext:Landroid/content/Context;

.field private mCurrentStage:Ljava/lang/String;

.field private mDescView:Landroid/view/View;

.field private mEnrollFragment:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

.field private mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

.field private mFaceBixbyMsg:Landroid/widget/TextView;

.field private mFaceBottomContainer:Landroid/widget/RelativeLayout;

.field private mFaceGuideMsg:Landroid/widget/TextView;

.field private final mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

.field private mFacePreviewImage:Landroid/widget/ImageView;

.field private mFaceProgressText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsButtonClicked:Z

.field private mIsEnrolling:Z

.field private mIsNext:Z

.field private mIsRetry:Z

.field private mIsServiceBound:Z

.field private mIsServiceConnected:Z

.field private mMessageView:Landroid/view/View;

.field private mNextArrow:Landroid/widget/ImageView;

.field private mNextBtnArea:Landroid/view/View;

.field private mNextButton:Landroid/widget/TextView;

.field private mNormalModeText:Landroid/widget/TextView;

.field private mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

.field private mPrevArrow:Landroid/widget/ImageView;

.field private mPreviousBtnArea:Landroid/view/View;

.field private mPreviousButton:Landroid/widget/TextView;

.field private mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

.field private mScreenHeight:I

.field private mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mShowButtonBackground:I

.field private mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

.field private mVoiceCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

.field private mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceConnected:Z

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsEnrolling:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsRetry:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsButtonClicked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsEnrolling:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsRetry:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceConnected:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    return-object p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getCurrentStage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V
    .locals 0
    .param p1, "evt"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->handleVoiceListeningEvent(I)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startCancelEffect(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startEnrollFinishEffect()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startFinishEffect(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startIntroAnimation()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startIntroCompleteAnimation()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startPreviewImageEffect()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->removeFaceTemplate()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->replaceFragment()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setBottomBarEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Ljava/lang/String;)V
    .locals 0
    .param p1, "stage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setCurrentStage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setIndicatorTransparency()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "errString"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->showFaceErrorDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->showFaceRetryDialog()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Landroid/view/View;IFF)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "dest"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->BOUNCE_UP_EFFECT_DELAY:I

    .line 55
    const/16 v0, 0x4f2

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->BOUNCE_DOWN_EFFECT_DELAY:I

    .line 56
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->START_VOICE_LISTENING_DELAY:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->RESULT_RETRY:I

    .line 69
    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceBound:Z

    .line 70
    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceConnected:Z

    .line 73
    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    .line 75
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollFragment:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    .line 78
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 79
    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsEnrolling:Z

    .line 80
    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsButtonClicked:Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    .line 82
    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsRetry:Z

    .line 84
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNormalModeText:Landroid/widget/TextView;

    .line 85
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    .line 86
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    .line 87
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    .line 88
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    .line 89
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    .line 90
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    .line 91
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    .line 92
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/TextView;

    .line 93
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    .line 94
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    .line 95
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    .line 96
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPrevArrow:Landroid/widget/ImageView;

    .line 97
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextArrow:Landroid/widget/ImageView;

    .line 98
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    .line 100
    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mShowButtonBackground:I

    .line 102
    sget-object v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->DEFAULT:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    .line 109
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    .line 112
    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    .line 169
    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    .line 720
    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$2;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 745
    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->completionCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    .line 43
    return-void
.end method

.method private bindScriptPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 628
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.app.suwscriptplayer.intent.action.SCRIPT_PLAYER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v0, "checkService":Landroid/content/Intent;
    const-string/jumbo v1, "com.sec.android.app.suwscriptplayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 631
    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceBound:Z

    .line 627
    return-void
.end method

.method private getCurrentStage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    return-object v0
.end method

.method private handleVoiceListeningEvent(I)V
    .locals 4
    .param p1, "evt"    # I

    .prologue
    .line 1113
    const/16 v0, 0x3ef

    if-ne p1, v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    .line 1122
    const-wide/16 v2, 0x12c

    .line 1114
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopUserSayingAnimation()V

    .line 1125
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->stopListenering()V

    goto :goto_0
.end method

.method private isUSA()Z
    .locals 3

    .prologue
    .line 1131
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CountryISO"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "countryCode":Ljava/lang/String;
    const-string/jumbo v1, "US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private releaseFaceManager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 281
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 283
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 277
    :cond_1
    return-void
.end method

.method private removeFaceTemplate()V
    .locals 2

    .prologue
    .line 542
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "removeFaceTemplate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->updateSecureUserID([B)Z

    .line 541
    :cond_0
    return-void
.end method

.method private replaceFragment()V
    .locals 4

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 964
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 965
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollFragment:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    const v3, 0x7f11076c

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 966
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 962
    return-void
.end method

.method private setBottomBarEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 689
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    if-nez v0, :cond_0

    .line 690
    const v0, 0x7f1103f2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    if-nez v0, :cond_1

    .line 693
    const v0, 0x7f11076e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 697
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 688
    :cond_2
    return-void
.end method

.method private setCurrentStage(Ljava/lang/String;)V
    .locals 3
    .param p1, "stage"    # Ljava/lang/String;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    .line 620
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentStage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 1074
    const/16 v0, 0x1402

    .line 1076
    .local v0, "visibility":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1078
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1079
    .local v1, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1073
    return-void
.end method

.method private showFaceErrorDialog()V
    .locals 6

    .prologue
    const v5, 0x7f0b08f0

    .line 922
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->isScriptPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    .line 923
    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    const/16 v4, 0x3f0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    .line 926
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b08f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, "errorTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, "errorDesc":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 931
    const v4, 0x7f0b04b4

    const/4 v5, 0x0

    .line 929
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 932
    new-instance v4, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$12;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$12;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    .line 929
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 939
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 921
    return-void
.end method

.method private showFaceErrorDialog(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->isScriptPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 944
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    .line 947
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b08c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, "errorTitle":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 951
    const v3, 0x7f0b04b4

    const/4 v4, 0x0

    .line 949
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 952
    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$13;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$13;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    .line 949
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 959
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 942
    return-void
.end method

.method private showFaceRetryDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 889
    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "showFaceRetryDialog"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v2, :cond_0

    .line 891
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->stopEnrollment()V

    .line 893
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->isScriptPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 894
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    .line 896
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b08c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 897
    .local v1, "errorTitle":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 898
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b08c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 897
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 900
    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$10;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    .line 899
    const v4, 0x7f0b08c9

    .line 897
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 906
    const v3, 0x7f0b1232

    .line 897
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 907
    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$11;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    .line 897
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 918
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 888
    return-void
.end method

.method private startAlphaViEffect(Landroid/view/View;IFF)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "dest"    # F

    .prologue
    const/4 v5, 0x0

    .line 1043
    if-nez p1, :cond_0

    .line 1044
    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "startTextTransitionEffect : view is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return-void

    .line 1047
    :cond_0
    const/4 v0, 0x0

    .line 1048
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1049
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1050
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1051
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1052
    cmpl-float v1, p4, v5

    if-nez v1, :cond_1

    .line 1053
    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$16;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$16;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1069
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1042
    return-void
.end method

.method private startBackgroundEffect(Landroid/view/View;IFF)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "dest"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 996
    if-nez p1, :cond_0

    .line 997
    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "startBackgroundEffect : view is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return-void

    .line 1000
    :cond_0
    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p3, v3, v4

    aput p4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1001
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1002
    .local v1, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$14;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$14;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1012
    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$15;

    invoke-direct {v2, p0, p1, p4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$15;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Landroid/view/View;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1034
    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/SineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SineInOut90;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1035
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1036
    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    if-nez v2, :cond_1

    .line 1037
    const-wide/16 v2, 0x4f2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1039
    :cond_1
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 995
    return-void
.end method

.method private startCancelEffect(I)V
    .locals 9
    .param p1, "result"    # I

    .prologue
    const/16 v4, 0xa7

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 463
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-nez v2, :cond_1

    .line 465
    :cond_0
    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "start cancel effcet is fail : view is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void

    .line 463
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 468
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    invoke-direct {p0, v2, v4, v7, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 470
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    if-eqz v2, :cond_3

    .line 471
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "SolidBounceEffect is running : do clear effect"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->clearSolidBounceEffect()V

    goto :goto_0

    .line 475
    :cond_2
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startSolidBounceEffect(I)V

    .line 478
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 479
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v4, v7, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 481
    :cond_4
    const/4 v2, 0x5

    new-array v1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 483
    .local v1, "views":[Landroid/view/View;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v0, v1, v2

    .line 484
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0, v4, v7, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
    .end local v0    # "view":Landroid/view/View;
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v2, v8, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setBixbySizeAnimation(II)V

    .line 488
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const-wide/16 v4, 0x4f2

    invoke-virtual {v2, v8, v4, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startIconTransition(IJ)V

    .line 489
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopMovingAnimation()V

    .line 490
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopParticleAnimation()V

    .line 492
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_6

    .line 493
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    const/16 v3, 0x14d

    invoke-direct {p0, v2, v3, v7, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startBackgroundEffect(Landroid/view/View;IFF)V

    .line 495
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$8;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$8;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V

    .line 502
    const-wide/16 v4, 0x74a

    .line 495
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    return-void
.end method

.method private startEnrollFinishEffect()V
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setIsSpeakingEnd(Z)V

    .line 383
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    .line 384
    const-string/jumbo v0, "1.2_face_3_M"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startScript(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const/16 v1, 0xc8

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startParticleAnimation(II)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    const v1, 0x7f0b051d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    const v1, 0x7f0b08ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const/16 v1, 0xa7

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 381
    :cond_2
    return-void
.end method

.method private startFinishEffect(I)V
    .locals 10
    .param p1, "result"    # I

    .prologue
    const/16 v9, 0xa7

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 422
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-nez v2, :cond_1

    .line 424
    :cond_0
    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "start finish effcet is fail : view is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void

    .line 422
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    if-eqz v2, :cond_3

    .line 428
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->clearSolidBounceEffect()V

    goto :goto_0

    .line 431
    :cond_2
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startSolidBounceEffect(I)V

    .line 434
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopParticleAnimation()V

    .line 435
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopMovingAnimation()V

    .line 436
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v2, v6, v9}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setBixbySizeAnimation(II)V

    .line 437
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const-wide/16 v4, 0x4f2

    invoke-virtual {v2, v6, v4, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startIconTransition(IJ)V

    .line 439
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 440
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v9, v8, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 442
    :cond_4
    const/4 v2, 0x6

    new-array v1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 444
    .local v1, "views":[Landroid/view/View;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v0, v1, v2

    .line 445
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0, v9, v8, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 448
    .end local v0    # "view":Landroid/view/View;
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_6

    .line 449
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    const/16 v3, 0x14d

    invoke-direct {p0, v2, v3, v8, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startBackgroundEffect(Landroid/view/View;IFF)V

    .line 452
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V

    .line 459
    const-wide/16 v4, 0x74a

    .line 452
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 421
    return-void
.end method

.method private startFinishEffectBeforeEnroll(I)V
    .locals 5
    .param p1, "result"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/16 v2, 0xa7

    .line 398
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "startFinishEffectBeforeEnroll"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopParticleAnimation()V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->stopMovingAnimation()V

    .line 402
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setBixbySizeAnimation(II)V

    .line 404
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    invoke-direct {p0, v0, v2, v4, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    invoke-direct {p0, v0, v2, v4, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v2, v4, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$6;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V

    .line 417
    const-wide/16 v2, 0x74a

    .line 410
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    return-void
.end method

.method private startInitEffect()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 353
    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-nez v3, :cond_1

    .line 354
    :cond_0
    const-string/jumbo v3, "FcstFaceSetupwizardBixby"

    const-string/jumbo v4, "start init effcet is fail : view is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 353
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    if-eqz v3, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 359
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x14d

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 360
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 362
    const/4 v3, 0x4

    new-array v2, v3, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 363
    .local v2, "views":[Landroid/view/View;
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v2, v3

    .line 364
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 365
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 363
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$5;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    .line 378
    const-wide/16 v6, 0x53

    .line 368
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    return-void
.end method

.method private startIntroAnimation()V
    .locals 6

    .prologue
    const/16 v5, 0xa7

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 635
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "startIntroAnimation"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setIsSpeakingEnd(Z)V

    .line 637
    const-string/jumbo v0, "1.2_face_1_M"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startScript(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startMovingAnimation()V

    .line 639
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    invoke-direct {p0, v0, v5, v3, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 644
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    invoke-direct {p0, v0, v5, v3, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 645
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v5, v3, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const/16 v1, 0xc8

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startParticleAnimation(II)V

    .line 634
    return-void
.end method

.method private startIntroCompleteAnimation()V
    .locals 8

    .prologue
    const/16 v7, 0xa7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 651
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setBottomBarEnabled(Z)V

    .line 652
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 654
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    const/16 v1, 0x14d

    invoke-direct {p0, v0, v1, v5, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startBackgroundEffect(Landroid/view/View;IFF)V

    .line 658
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->updateBottomBar()V

    .line 659
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setBixbySizeAnimation(II)V

    .line 660
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startIconTransition(IJ)V

    .line 661
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startSolidBounceEffect(I)V

    .line 662
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    invoke-direct {p0, v0, v7, v6, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 664
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    invoke-direct {p0, v0, v7, v6, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startAlphaViEffect(Landroid/view/View;IFF)V

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$9;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    .line 684
    const-wide/16 v2, 0xfa

    .line 666
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 650
    return-void
.end method

.method private startPreviewImageEffect()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v7, 0x3ea8f5c3    # 0.33f

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 235
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsButtonClicked:Z

    if-eqz v2, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 237
    .local v1, "alphaShow":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xe6

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 238
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v7, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 239
    invoke-virtual {v1, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 240
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 243
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 244
    .local v0, "alphaHide":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xe6

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 245
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v7, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 246
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 247
    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$4;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 266
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startSolidBounceEffect(I)V
    .locals 13
    .param p1, "mode"    # I

    .prologue
    const/high16 v7, -0x3c510000    # -350.0f

    const-wide/16 v10, 0x2ee

    const-wide/16 v5, 0x14d

    const-wide/16 v8, 0xfa

    const/4 v12, 0x0

    .line 970
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    if-nez v1, :cond_0

    .line 971
    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "startSolidBounceEffect : Effect is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return-void

    .line 975
    :cond_0
    if-nez p1, :cond_2

    .line 976
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 977
    .local v0, "targetY":I
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    const-wide/16 v2, 0x0

    int-to-float v4, v0

    const/high16 v7, 0x43af0000    # 350.0f

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->moveToTraget(JFJFJJ)V

    .line 978
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    if-eqz v1, :cond_1

    .line 979
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    invoke-virtual {v1, v12}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->setIsSpeakingEnd(Z)V

    .line 980
    const-string/jumbo v1, "1.2_face_2_S"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startScript(Ljava/lang/String;)V

    .line 981
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;->startParticleAnimation(II)V

    .line 969
    .end local v0    # "targetY":I
    :cond_1
    :goto_0
    return-void

    .line 984
    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    if-lez v1, :cond_3

    .line 985
    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScreenHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    const-wide/16 v2, 0x4f2

    iget v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    int-to-float v4, v4

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->moveToTraget(JFJFJJ)V

    goto :goto_0

    .line 988
    :cond_3
    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "startSolidBounceEffect : ScreenHeight is 0"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    const-wide/16 v2, 0x4f2

    const v4, -0x3ac48000    # -3000.0f

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->moveToTraget(JFJFJJ)V

    goto :goto_0
.end method

.method private stopEnrollment()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "stopEnrollment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 307
    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->releaseFaceManager()V

    .line 302
    return-void
.end method

.method private updateBottomBar()V
    .locals 5

    .prologue
    const v4, 0x7f0d016d

    const v3, 0x7f0d00ef

    .line 702
    const v1, 0x7f110227

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 703
    .local v0, "divider":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 704
    const v1, 0x7f0d00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0d00f0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 710
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPrevArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 711
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPrevArrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 712
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextArrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 714
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 715
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 716
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 701
    :cond_3
    return-void
.end method


# virtual methods
.method protected initBixbyFaceEnroll(Landroid/view/View;)V
    .locals 6
    .param p1, "enrollView"    # Landroid/view/View;

    .prologue
    const v3, 0x7f020681

    const/4 v5, 0x0

    .line 317
    const v1, 0x7f1103d5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    .line 318
    const v1, 0x7f110770

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    .line 319
    const v1, 0x7f110773

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    .line 320
    const v1, 0x7f110774

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    .line 321
    const v1, 0x7f110771

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    .line 323
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 324
    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mShowButtonBackground:I

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 329
    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mShowButtonBackground:I

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->isUSA()Z

    move-result v1

    if-nez v1, :cond_4

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f0b08e8

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :goto_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceGuideMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 346
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    const v2, 0x7f0b0f22

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 348
    :cond_3
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setEnrollProgressText(I)V

    .line 349
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startInitEffect()V

    .line 316
    return-void

    .line 339
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public isScriptPlaying()Z
    .locals 4

    .prologue
    .line 801
    const/4 v1, 0x0

    .line 803
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v2, :cond_0

    .line 804
    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "isScriptPlaying"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    invoke-interface {v2}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 810
    .end local v1    # "ret":Z
    :cond_0
    :goto_0
    return v1

    .line 807
    .restart local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClickBixbyButton(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x3f0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 506
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsButtonClicked:Z

    if-eqz v1, :cond_0

    .line 507
    return-void

    .line 509
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->NORMAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    .line 510
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsButtonClicked:Z

    .line 511
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 513
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 516
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 517
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->isScriptPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 518
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->stopScript()V

    .line 521
    :cond_2
    const v1, 0x7f11076e

    if-ne v0, v1, :cond_4

    .line 522
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    const-string/jumbo v2, "face_bixby_suw_intro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 523
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startFinishEffectBeforeEnroll(I)V

    .line 505
    :goto_0
    return-void

    .line 525
    :cond_3
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startFinishEffect(I)V

    .line 526
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 529
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    const-string/jumbo v2, "face_bixby_suw_intro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 530
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startFinishEffectBeforeEnroll(I)V

    goto :goto_0

    .line 532
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    .line 533
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    const-string/jumbo v2, "face_bixby_suw_after_enroll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 534
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->removeFaceTemplate()V

    .line 536
    :cond_6
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startCancelEffect(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 550
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 551
    const-string/jumbo v4, "FcstFaceSetupwizardBixby"

    const-string/jumbo v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iput-object p0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mContext:Landroid/content/Context;

    .line 555
    const v4, 0x7f0402c7

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setContentView(I)V

    .line 557
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 558
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v4, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->showFaceErrorDialog()V

    .line 560
    return-void

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "isNext"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    .line 564
    const-string/jumbo v4, "FcstFaceSetupwizardBixby"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIsNext : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 566
    iget-boolean v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setEnrollResult(I)V

    .line 568
    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "Face already registered! Skip this page!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void

    :cond_1
    move v2, v3

    .line 566
    goto :goto_0

    .line 572
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setResult(I)V

    .line 574
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "show_button_background"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mShowButtonBackground:I

    .line 576
    const v2, 0x7f110765

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNormalModeText:Landroid/widget/TextView;

    .line 577
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNormalModeText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 578
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNormalModeText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 579
    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mShowButtonBackground:I

    if-eqz v2, :cond_3

    .line 580
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNormalModeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0204bf

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 583
    :cond_3
    const v2, 0x7f110768

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    .line 584
    const v2, 0x7f110769

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mDescView:Landroid/view/View;

    .line 585
    const v2, 0x7f11076b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBixbyMsg:Landroid/widget/TextView;

    .line 586
    const v2, 0x7f110764

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBackground4:Landroid/widget/FrameLayout;

    .line 588
    const v2, 0x7f1103f1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceBottomContainer:Landroid/widget/RelativeLayout;

    .line 589
    const v2, 0x7f11076d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/TextView;

    .line 590
    const v2, 0x7f1103f5

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/TextView;

    .line 591
    const v2, 0x7f1103f2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousBtnArea:Landroid/view/View;

    .line 592
    const v2, 0x7f11076e

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextBtnArea:Landroid/view/View;

    .line 593
    const v2, 0x7f1103f3

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPrevArrow:Landroid/widget/ImageView;

    .line 594
    const v2, 0x7f1103f6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextArrow:Landroid/widget/ImageView;

    .line 596
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 597
    .local v1, "resourceId":I
    const/4 v0, 0x0

    .line 598
    .local v0, "naviHeight":I
    if-lez v1, :cond_4

    .line 599
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 601
    :cond_4
    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    .line 603
    const v2, 0x7f11076a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    .line 604
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->setToTarget(F)V

    .line 605
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    .line 606
    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    invoke-direct {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollFragment:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    .line 608
    const v2, 0x7f110767

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mBixbyIconViewLayout:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconViewLayout;

    .line 610
    const-string/jumbo v2, "face_bixby_suw_intro"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setCurrentStage(Ljava/lang/String;)V

    .line 611
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->bindScriptPlayer()V

    .line 614
    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    .line 549
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 876
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceBound:Z

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->unbindService(Landroid/content/ServiceConnection;)V

    .line 880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsServiceBound:Z

    .line 882
    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setCurrentStage(Ljava/lang/String;)V

    .line 883
    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    .line 885
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 875
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 852
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->isScriptPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->stopScript()V

    .line 856
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setRequestedOrientation(I)V

    .line 857
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    .line 858
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->stopEnrollment()V

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    if-eqz v0, :cond_2

    .line 863
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->stopListenering()V

    .line 864
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->clear()V

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    sget-object v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->EXTERNAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    if-eq v0, v1, :cond_3

    .line 868
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->finish()V

    .line 871
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 851
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const v2, 0x7f0d016b

    const/16 v3, 0x3ea

    .line 815
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 816
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    sget-object v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->EXTERNAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    if-ne v0, v1, :cond_2

    .line 818
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v0, :cond_0

    .line 819
    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "Screen off and face registered"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setEnrollResult(I)V

    .line 828
    :goto_0
    return-void

    .line 825
    :cond_1
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "Screen off and face doesn\'t registered"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setEnrollResult(I)V

    goto :goto_0

    .line 830
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setRequestedOrientation(I)V

    .line 831
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setIndicatorTransparency()V

    .line 833
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPrevArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 834
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPrevArrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 835
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextArrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 839
    :cond_3
    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    .line 842
    sget-object v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->EXTERNAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPauseState:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    .line 844
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsNext:Z

    if-nez v0, :cond_4

    .line 845
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->removeMessages(I)V

    .line 846
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceHandler:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$FaceBixbyHandler;->sendEmptyMessage(I)Z

    .line 814
    :cond_4
    return-void
.end method

.method public setEnrollProgressText(I)V
    .locals 4
    .param p1, "remaining"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0b0815

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->setPrecent(F)V

    .line 227
    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->startCompleteEffect()V

    .line 220
    :cond_2
    return-void
.end method

.method public setEnrollResult(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 271
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnrollResult to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setResult(I)V

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->stopEnrollment()V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->finish()V

    .line 270
    return-void
.end method

.method protected startEnrollment(Landroid/view/View;)V
    .locals 6
    .param p1, "faceView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    .line 289
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "startEnrollment"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    const/4 v3, 0x1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/view/View;)V

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "FaceManager is null or already preenrolled!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startScript(Ljava/lang/String;)V
    .locals 3
    .param p1, "list"    # Ljava/lang/String;

    .prologue
    .line 781
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->completionCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->PlayScript(Ljava/lang/String;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopScript()V
    .locals 3

    .prologue
    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v1, :cond_0

    .line 792
    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "stopScript"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    invoke-interface {v1}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->StopScript()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
