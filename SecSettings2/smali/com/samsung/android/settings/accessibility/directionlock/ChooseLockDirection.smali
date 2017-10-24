.class public Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;
.super Lcom/android/settings/InstrumentedActivity;
.source "ChooseLockDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$1;,
        Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;
    }
.end annotation


# instance fields
.field private ANIMATION_DURATION:I

.field private ARROW_STEPCIRCLE_THRESHOLD:I

.field private STEP_CIRCLE_LEFT_MARGIN:I

.field private STEP_CIRCLE_RIGHT_MARGIN:I

.field private STEP_CIRCLE_SIZE:I

.field _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mChallenge:J

.field private mChallenge_2nd:J

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mCurScreenState:I

.field private mCurrentPwd:Ljava/lang/String;

.field private mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mEmptyString:Ljava/lang/String;

.field private mFirstPassword:Ljava/lang/String;

.field private mFirstPwd:Ljava/lang/String;

.field private mFlgToChkConfChng:Z

.field private mForFingerprint:Z

.field private mForIris:Z

.field private mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyListAnimator:Landroid/animation/ValueAnimator;

.field private mGreyListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mGreyStepCircleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderString:Ljava/lang/String;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHelpBitmap:Landroid/graphics/Bitmap;

.field private mHelpBitmapHeight:I

.field private mHelpBitmapHeightState:I

.field private mHelpBitmapWidth:I

.field private mHelpBitmapWidthState:I

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mIsFingerVerified:Z

.field private mIsIrisVerified:Z

.field private mLeftBtnState:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockVirgin:Z

.field private mMinimumDirectionLength:I

.field private mNewStepCircle:Landroid/widget/ImageView;

.field private mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

.field private mOldStepCircle:Landroid/widget/ImageView;

.field private mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mResultIntent:Landroid/content/Intent;

.field private mRightBtnState:Z

.field private mRightButton:Landroid/widget/Button;

.field private mShouldFinish:Z

.field private mStepCircleDown:Landroid/graphics/Bitmap;

.field private mStepCircleLayout:Landroid/widget/LinearLayout;

.field private mStepCircleLeft:Landroid/graphics/Bitmap;

.field private mStepCircleRight:Landroid/graphics/Bitmap;

.field private mStepCircleUp:Landroid/graphics/Bitmap;

.field private mUserPassword:Ljava/lang/String;

.field private playBeep:Z

.field private playVibration:Z

.field private playVoice:Z

.field private showArrow:Z

.field private stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge_2nd:J

    return-wide v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsFingerVerified:Z

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsIrisVerified:Z

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockVirgin:Z

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mMinimumDirectionLength:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get26(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mShouldFinish:Z

    return v0
.end method

.method static synthetic -get27(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get28(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mUserPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForFingerprint:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForIris:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsFingerVerified:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsIrisVerified:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic -set6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mShouldFinish:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->handleConfirmScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->clearStepCircles()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "curDirection"    # Ljava/lang/String;
    .param p2, "redrawUIMode"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->handleStepCircle(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->verifyForFingerprint()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->verifyForIris()V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    .line 118
    const/16 v0, 0x50

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ARROW_STEPCIRCLE_THRESHOLD:I

    .line 120
    const/16 v0, 0x63

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    .line 148
    iput v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidthState:I

    .line 149
    iput v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeightState:I

    .line 153
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChosenPattern:Ljava/util/List;

    .line 155
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mEmptyString:Ljava/lang/String;

    .line 157
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFlgToChkConfChng:Z

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderString:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPwd:Ljava/lang/String;

    .line 162
    iput v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurScreenState:I

    .line 164
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftBtnState:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightBtnState:Z

    .line 168
    iput-wide v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge:J

    iput-wide v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge_2nd:J

    .line 170
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForFingerprint:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForIris:Z

    .line 174
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsFingerVerified:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsIrisVerified:Z

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mResultIntent:Landroid/content/Intent;

    .line 178
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mShouldFinish:Z

    .line 180
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mUserPassword:Ljava/lang/String;

    .line 1167
    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$1;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    .line 75
    return-void
.end method

.method private attachListeners()V
    .locals 2

    .prologue
    .line 772
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "attachListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$6;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$7;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    return-void
.end method

.method private clearStepCircles()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1082
    const-string/jumbo v1, "ChooseLockDirection"

    const-string/jumbo v2, "clearStepCircles"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1087
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1088
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1090
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v2, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v1, v2, :cond_2

    .line 1092
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListIterator:Ljava/util/Iterator;

    .line 1093
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1094
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1095
    .local v0, "temp":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1096
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1097
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 1100
    .end local v0    # "temp":Landroid/widget/ImageView;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 1101
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1102
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1105
    :cond_4
    :goto_1
    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    .line 1106
    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    .line 1081
    :cond_5
    return-void

    .line 1103
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private endOngoingAnimations()V
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1451
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1446
    :cond_1
    return-void
.end method

.method private freeUpMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1552
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "freeUpMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1556
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1560
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1561
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    .line 1564
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1565
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1566
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    .line 1569
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1570
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1571
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    .line 1574
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1575
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1576
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    .line 1551
    :cond_4
    return-void
.end method

.method private handleConfirmScreen()Z
    .locals 4

    .prologue
    .line 1422
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "handle Confirm Screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->partialInputCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1426
    const v2, 0x7f0b0277

    .line 1425
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "handle Confirm Screen - return false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const/4 v0, 0x0

    return v0

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1432
    const v2, 0x7f0b0279

    .line 1431
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1433
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1434
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1435
    const-string/jumbo v2, " "

    .line 1434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1436
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1437
    const v3, 0x7f0b01db

    .line 1436
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1441
    :cond_1
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "handle Confirm Screen - return true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const/4 v0, 0x1

    return v0
.end method

.method private handleStepCircle(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "curDirection"    # Ljava/lang/String;
    .param p2, "redrawUIMode"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 1461
    const-string/jumbo v1, "ChooseLockDirection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleStepCircle with Direction - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const/4 v0, 0x0

    .line 1465
    .local v0, "mNewStepCircleBitmap":Landroid/graphics/Bitmap;
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v2, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v1, v2, :cond_7

    .line 1466
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1467
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1468
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1470
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    .line 1471
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1474
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1476
    :cond_2
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    .line 1483
    :goto_0
    const-string/jumbo v1, "UP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1485
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    .line 1500
    .local v0, "mNewStepCircleBitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 1501
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v2, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v1, v2, :cond_3

    .line 1502
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1503
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v3, -0x3b3b3c

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1506
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1507
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1509
    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v2, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v1, v2, :cond_6

    .line 1510
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 1512
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_5

    .line 1513
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 1518
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_LEFT_MARGIN:I

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_RIGHT_MARGIN:I

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1520
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1523
    :cond_6
    if-nez p2, :cond_c

    .line 1524
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->performAnimations()V

    .line 1460
    :goto_2
    return-void

    .line 1478
    .local v0, "mNewStepCircleBitmap":Landroid/graphics/Bitmap;
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    .line 1479
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1478
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    .line 1480
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v3, -0x50506

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 1483
    :cond_8
    const-string/jumbo v1, "LEFT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1488
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    .local v0, "mNewStepCircleBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 1483
    .local v0, "mNewStepCircleBitmap":Landroid/graphics/Bitmap;
    :cond_9
    const-string/jumbo v1, "RIGHT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1491
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    .local v0, "mNewStepCircleBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 1483
    .local v0, "mNewStepCircleBitmap":Landroid/graphics/Bitmap;
    :cond_a
    const-string/jumbo v1, "DOWN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1494
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    .local v0, "mNewStepCircleBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 1497
    .local v0, "mNewStepCircleBitmap":Landroid/graphics/Bitmap;
    :cond_b
    return-void

    .line 1526
    .local v0, "mNewStepCircleBitmap":Landroid/graphics/Bitmap;
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method private initializeAnimations()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 482
    const-string/jumbo v2, "ChooseLockDirection"

    const-string/jumbo v3, "initializeAnimations"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 486
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 487
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 490
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 491
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 492
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 495
    new-array v2, v9, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    .line 496
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;

    invoke-direct {v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 497
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 498
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    div-int/lit8 v3, v3, 0x64

    .line 499
    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ARROW_STEPCIRCLE_THRESHOLD:I

    .line 498
    mul-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 500
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 509
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$3;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 532
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 533
    const v3, 0x7f0a028f

    .line 532
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 534
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 535
    const v4, 0x7f0a028d

    .line 534
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 532
    add-float/2addr v2, v3

    .line 535
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 536
    const v4, 0x7f0a028e

    .line 535
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 532
    add-float/2addr v2, v3

    .line 536
    const/high16 v3, 0x40800000    # 4.0f

    .line 532
    div-float/2addr v2, v3

    float-to-double v0, v2

    .line 537
    .local v0, "stepCircleAnimationTolerance":D
    new-array v2, v9, [F

    double-to-float v3, v0

    const/4 v4, 0x0

    aput v3, v2, v4

    aput v6, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    .line 538
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 539
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ANIMATION_DURATION:I

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->ARROW_STEPCIRCLE_THRESHOLD:I

    mul-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 540
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$4;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 554
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$5;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    return-void

    .line 495
    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initializeDirectionView()V
    .locals 2

    .prologue
    .line 394
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "initializeDirectionView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    .line 397
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    .line 398
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    iget v1, v1, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    .line 397
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    .line 399
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->setSettingsMode()V

    .line 402
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->reloadBitmap()V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->showArrow:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playVoice:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playVibration:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playBeep:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    .line 393
    return-void
.end method

.method private initializing()V
    .locals 1

    .prologue
    .line 291
    const v0, 0x7f040065

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setContentView(I)V

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->freeUpMemory()V

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->initializeIdentifiers()V

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->loadCustomSettings()V

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->initializeDirectionView()V

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->loadDimensAndBitmap()V

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->initializeAnimations()V

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setInitialState()V

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->attachListeners()V

    .line 301
    const v0, 0x7f0b027c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setTitle(I)V

    .line 289
    return-void
.end method

.method private isVibrationSupport()Z
    .locals 2

    .prologue
    .line 382
    const-string/jumbo v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 383
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-static {p0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const/4 v1, 0x1

    return v1

    .line 384
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private loadCustomSettings()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v3, "loadCustomSettings"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 371
    const-string/jumbo v3, "universal_lock_voice"

    .line 369
    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playVoice:Z

    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 373
    const-string/jumbo v3, "universal_lock_beep"

    .line 372
    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playBeep:Z

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->isVibrationSupport()Z

    move-result v0

    if-nez v0, :cond_3

    .line 375
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playVibration:Z

    .line 378
    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->showArrow:Z

    .line 352
    return-void

    :cond_1
    move v0, v2

    .line 369
    goto :goto_0

    :cond_2
    move v0, v2

    .line 372
    goto :goto_1

    .line 377
    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->playVibration:Z

    goto :goto_2
.end method

.method private loadDimensAndBitmap()V
    .locals 5

    .prologue
    const v3, 0x7f0a0288

    const v2, 0x7f0a0287

    .line 420
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "loadDimensAndBitmap()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const v0, 0x7f1101ba

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 425
    const v1, 0x7f0a028f

    .line 424
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    .line 426
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 427
    const v1, 0x7f0a028d

    .line 426
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_LEFT_MARGIN:I

    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 429
    const v1, 0x7f0a028e

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_RIGHT_MARGIN:I

    .line 431
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidth:I

    .line 435
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeight:I

    .line 446
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    .line 448
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 449
    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidth:I

    .line 450
    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeight:I

    .line 449
    const v4, 0x7f0200f8

    .line 447
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    .line 451
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 453
    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    .line 454
    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    .line 453
    const v4, 0x7f0200f9

    .line 451
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleDown:Landroid/graphics/Bitmap;

    .line 455
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 457
    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    .line 458
    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    .line 457
    const v4, 0x7f0200fc

    .line 455
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleUp:Landroid/graphics/Bitmap;

    .line 459
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 461
    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    .line 462
    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    .line 461
    const v4, 0x7f0200fa

    .line 459
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLeft:Landroid/graphics/Bitmap;

    .line 463
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    .line 464
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 465
    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    .line 466
    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_SIZE:I

    .line 465
    const v4, 0x7f0200fb

    .line 463
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleRight:Landroid/graphics/Bitmap;

    .line 469
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 470
    const v1, 0x7f0200cb

    .line 469
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 471
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 472
    const v1, 0x7f0200ca

    .line 471
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 419
    return-void

    .line 438
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidth:I

    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeight:I

    goto/16 :goto_0
.end method

.method private partialInputCheck()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1119
    const-string/jumbo v2, "ChooseLockDirection"

    const-string/jumbo v3, "partialInputCheck"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v1, 0x0

    .line 1123
    .local v1, "returnValue":Z
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, "passwordEnteredSoFar":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 1125
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    .line 1126
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1125
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1124
    if-eqz v2, :cond_0

    .line 1127
    const/4 v1, 0x1

    .line 1129
    :cond_0
    if-nez v1, :cond_2

    .line 1135
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->clearStepCircles()V

    .line 1137
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->showErrorImage()V

    .line 1138
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 1139
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1142
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1143
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1144
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1147
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_3

    .line 1148
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1150
    :cond_3
    return v1
.end method

.method private performAnimations()V
    .locals 2

    .prologue
    .line 1536
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "performAnimations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_1

    .line 1543
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1545
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1535
    :cond_1
    return-void
.end method

.method private reloadHelpBitmapView()V
    .locals 5

    .prologue
    .line 752
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    .line 755
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 756
    iget v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidth:I

    .line 757
    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeight:I

    .line 756
    const v4, 0x7f0200f8

    .line 754
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 751
    :cond_2
    return-void
.end method

.method private setDefaultInitState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 703
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "setDefaultInitState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 705
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 706
    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    .line 708
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 709
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "Setting with help image initially"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 702
    :cond_0
    return-void
.end method

.method private setInitialState()V
    .locals 12

    .prologue
    const v7, 0x7f0a04c5

    const/4 v6, 0x6

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 587
    const-string/jumbo v3, "ChooseLockDirection"

    const-string/jumbo v4, "setInitialState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 589
    invoke-virtual {v3, v4, v9, v5, v9}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 593
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 596
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getMinimumSupportedPassLength()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 597
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 598
    const v6, 0x7f0b027f

    .line 597
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 599
    const-string/jumbo v5, " "

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 600
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 601
    const v6, 0x7f0b01da

    .line 600
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 622
    const-string/jumbo v5, "\n"

    .line 621
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 623
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    .line 624
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b027a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 623
    const v7, 0x7f0b092f

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 621
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFlgToChkConfChng:Z

    if-eqz v3, :cond_a

    .line 628
    iput-boolean v9, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFlgToChkConfChng:Z

    .line 629
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentPwd:Ljava/lang/String;

    .line 632
    .local v2, "savedPassword":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 633
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DirectionLockView;->showDirectionArrow(C)V

    .line 634
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v9}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 637
    :cond_1
    iget v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurScreenState:I

    if-nez v3, :cond_6

    sget-object v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    :goto_1
    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    .line 639
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v4, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v3, v4, :cond_2

    .line 641
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->reloadHelpBitmapView()V

    .line 644
    :cond_2
    const-string/jumbo v0, ""

    .line 645
    .local v0, "curDirection":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/DirectionLockView;->setCurrentPassword(Ljava/lang/String;)V

    .line 647
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 649
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 665
    :goto_3
    invoke-direct {p0, v0, v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->handleStepCircle(Ljava/lang/String;Z)V

    .line 647
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 603
    .end local v0    # "curDirection":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "savedPassword":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 604
    const v6, 0x7f0b027d

    .line 603
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 605
    const-string/jumbo v5, " "

    .line 603
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 606
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 607
    const v6, 0x7f0b01da

    .line 606
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 603
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 611
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getMinimumSupportedPassLength()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 612
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 613
    const v5, 0x7f0b027f

    .line 612
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 615
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 616
    const v5, 0x7f0b027d

    .line 615
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 638
    .restart local v2    # "savedPassword":Ljava/lang/String;
    :cond_6
    sget-object v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    goto/16 :goto_1

    .line 651
    .restart local v0    # "curDirection":Ljava/lang/String;
    .restart local v1    # "i":I
    :sswitch_0
    const-string/jumbo v0, "UP"

    goto :goto_3

    .line 654
    :sswitch_1
    const-string/jumbo v0, "RIGHT"

    goto :goto_3

    .line 657
    :sswitch_2
    const-string/jumbo v0, "DOWN"

    goto :goto_3

    .line 660
    :sswitch_3
    const-string/jumbo v0, "LEFT"

    goto :goto_3

    .line 668
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftBtnState:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 669
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightBtnState:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 671
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v4, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v3, v4, :cond_b

    .line 672
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    const v4, 0x7f0b027e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 673
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPwd:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    .line 675
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    .line 676
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_4
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 679
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    .line 680
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 681
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_9

    .line 682
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 687
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_LEFT_MARGIN:I

    .line 688
    iget v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->STEP_CIRCLE_RIGHT_MARGIN:I

    .line 687
    invoke-virtual {v3, v4, v9, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 689
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mStepCircleLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 695
    .end local v0    # "curDirection":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "savedPassword":Ljava/lang/String;
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setDefaultInitState()V

    .line 697
    :cond_b
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v3

    if-nez v3, :cond_c

    .line 698
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setRequestedOrientation(I)V

    .line 586
    :cond_c
    return-void

    .line 649
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4c -> :sswitch_3
        0x52 -> :sswitch_1
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateDataForIrisAndFingerPrint(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getMinimumSupportedPassLength()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mMinimumDirectionLength:I

    .line 341
    const-string/jumbo v0, "for_fingerprint"

    .line 340
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForFingerprint:Z

    .line 343
    const-string/jumbo v0, "for_iris"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mForIris:Z

    .line 336
    return-void
.end method

.method private verifyForFingerprint()V
    .locals 6

    .prologue
    .line 1001
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "verifyForFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getChallengeForFingerPrint()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge:J

    .line 1004
    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1005
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsFingerVerified:Z

    .line 1000
    :goto_0
    return-void

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChosenPattern:Ljava/util/List;

    .line 1009
    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge:J

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$8;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    .line 1008
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private verifyForIris()V
    .locals 6

    .prologue
    .line 1038
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "verifyForIris"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getChallengeForIris()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge_2nd:J

    .line 1041
    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge_2nd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1042
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mIsIrisVerified:Z

    .line 1037
    :goto_0
    return-void

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChosenPattern:Ljava/util/List;

    .line 1046
    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mChallenge_2nd:J

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 1047
    new-instance v5, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$9;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$9;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V

    .line 1045
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method initializeIdentifiers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "initializeIdentifiers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    .line 314
    const v0, 0x7f1101b6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DirectionLockView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    .line 316
    const v0, 0x7f1101bc

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    .line 317
    const v0, 0x7f1101bb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mGreyStepCircleList:Ljava/util/ArrayList;

    .line 319
    const v0, 0x7f1101a9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->updateDataForIrisAndFingerPrint(Landroid/content/Intent;)V

    .line 328
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mOldStepCircle:Landroid/widget/ImageView;

    .line 329
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mNewStepCircle:Landroid/widget/ImageView;

    .line 311
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    .line 729
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 730
    const-string/jumbo v1, "ChooseLockDirection"

    const-string/jumbo v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 732
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFlgToChkConfChng:Z

    .line 733
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->endOngoingAnimations()V

    .line 734
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentPwd:Ljava/lang/String;

    .line 735
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderString:Ljava/lang/String;

    .line 736
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v2, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurScreenState:I

    .line 737
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftBtnState:Z

    .line 738
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightBtnState:Z

    .line 739
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPwd:Ljava/lang/String;

    .line 740
    iget v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidth:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidthState:I

    .line 741
    iget v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeight:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeightState:I

    .line 743
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->initializing()V

    .line 744
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->reloadHelpBitmapView()V

    .line 727
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 203
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 206
    if-eqz p1, :cond_0

    .line 207
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "onCreate savedInstanceState is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string/jumbo v0, "currentPwd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentPwd:Ljava/lang/String;

    .line 209
    const-string/jumbo v0, "headerString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderString:Ljava/lang/String;

    .line 210
    const-string/jumbo v0, "currentScreenState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurScreenState:I

    .line 211
    const-string/jumbo v0, "leftBtnState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftBtnState:Z

    .line 212
    const-string/jumbo v0, "rightBtnState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightBtnState:Z

    .line 213
    const-string/jumbo v0, "firstPwd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPwd:Ljava/lang/String;

    .line 214
    const-string/jumbo v0, "helpBitmapHeightState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeightState:I

    .line 215
    const-string/jumbo v0, "helpBitmapWidthState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidthState:I

    .line 216
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFlgToChkConfChng:Z

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->initializing()V

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mUserPassword:Ljava/lang/String;

    .line 202
    return-void

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 224
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1582
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->freeUpMemory()V

    .line 1585
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onDestroy()V

    .line 1581
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 719
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onMultiWindowModeChanged(Z)V

    .line 720
    const-string/jumbo v0, "ChooseLockDirection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFlgToChkConfChng:Z

    .line 722
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->initializing()V

    .line 723
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->reloadHelpBitmapView()V

    .line 718
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 255
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 262
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 257
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->finish()V

    .line 258
    const/4 v0, 0x1

    return v0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    .line 283
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLockVirgin:Z

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 281
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentPwd:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderString:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentScreenStage:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurScreenState:I

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftBtnState:Z

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightBtnState:Z

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPwd:Ljava/lang/String;

    .line 241
    iget v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidth:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidthState:I

    .line 242
    iget v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeight:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeightState:I

    .line 243
    const-string/jumbo v0, "currentPwd"

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurrentPwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v0, "headerString"

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHeaderString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v0, "currentScreenState"

    iget v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mCurScreenState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string/jumbo v0, "leftBtnState"

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mLeftBtnState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    const-string/jumbo v0, "rightBtnState"

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mRightBtnState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    const-string/jumbo v0, "firstPwd"

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mFirstPwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v0, "helpBitmapHeightState"

    iget v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapHeightState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    const-string/jumbo v0, "helpBitmapWidthState"

    iget v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mHelpBitmapWidthState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onStop()V

    .line 273
    const-string/jumbo v0, "ChooseLockDirection"

    const-string/jumbo v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 276
    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 271
    :cond_0
    return-void
.end method
