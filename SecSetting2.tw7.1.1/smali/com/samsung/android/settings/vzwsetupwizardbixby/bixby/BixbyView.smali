.class public abstract Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;
.super Landroid/widget/FrameLayout;
.source "BixbyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;,
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;,
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;,
        Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$VoiceCallback;
    }
.end annotation


# instance fields
.field public final mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

.field private mBixbyBackgroundImageView:Landroid/view/View;

.field private mBixbyModeSwitcher:Landroid/view/View;

.field public mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

.field private mContext:Landroid/content/Context;

.field private mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

.field private mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

.field private mCurrentMessageInProcess:I

.field public mCurrentScreenNavigationStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

.field public mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

.field private mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

.field mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

.field private mIntroDesc:Landroid/widget/TextView;

.field private mIsActivityPaused:Z

.field private mLcdHeight:I

.field private mMainBodyLayout:Landroid/view/View;

.field private mMainButtonLayout:Landroid/view/View;

.field private mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

.field private mScreenHeaderTitle:Landroid/widget/TextView;

.field mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

.field private mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

.field private mWaveAnimRootLayout:Landroid/view/View;

.field private mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIsActivityPaused:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "serverReturnString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getButtonID(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getTextFromView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;I)V
    .locals 0
    .param p1, "screenDirection"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->closeAnimation(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->endIntroAnimation()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->scriptPlayCompleted()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->startIntroAnimation()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->startWaveAnimation()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    .line 100
    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    .line 102
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 103
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 104
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 105
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 106
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScreenNavigationStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 552
    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

    .line 212
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    .line 100
    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    .line 102
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 103
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 104
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 105
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 106
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScreenNavigationStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 552
    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

    .line 216
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    .line 100
    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    .line 102
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 103
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 104
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 105
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 106
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScreenNavigationStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 552
    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$1;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

    .line 220
    return-void
.end method

.method private closeAnimation(I)V
    .locals 12
    .param p1, "screenDirection"    # I

    .prologue
    .line 374
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScreenNavigationStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 375
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->disableAllButtons()V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->stopUserSayingAnimation()V

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->clean()V

    .line 378
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyModeSwitcher:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyModeSwitcher:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->stopMovingAnimation()V

    .line 382
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->stopParticleAnimaion()V

    .line 384
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14d

    .line 385
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getIntroHeight()F

    move-result v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getBixbyPositionInHeader()F

    move-result v6

    sub-float/2addr v0, v6

    neg-float v6, v0

    new-instance v8, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;

    invoke-direct {v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;-><init>()V

    const/4 v7, 0x0

    .line 384
    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->clearAnim()V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getHeaderHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->setToTarget(F)V

    .line 389
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mLcdHeight:I

    int-to-float v4, v0

    const-wide/16 v5, 0x14d

    const/high16 v7, 0x43840000    # 264.0f

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x2ee

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->moveToTraget(JFJFJJ)V

    .line 391
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    .line 394
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainButtonLayout:Landroid/view/View;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    .line 395
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainBodyLayout:Landroid/view/View;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    .line 398
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 399
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    const v1, 0x7f0205c9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 400
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    const-wide/16 v2, 0x0

    .line 401
    const-wide/16 v4, 0x14d

    .line 400
    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    .line 373
    return-void
.end method

.method private disableAllButtons()V
    .locals 4

    .prologue
    .line 516
    iget-object v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 517
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 518
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 519
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 515
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private endIntroAnimation()V
    .locals 2

    .prologue
    .line 325
    const-string/jumbo v0, "Settings -> BixbyView"

    const-string/jumbo v1, "endIntroAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onEndIntroAnimation()V

    .line 324
    return-void
.end method

.method private getButtonID(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "serverReturnString"    # Ljava/lang/String;

    .prologue
    .line 507
    const-string/jumbo v1, "Settings -> BixbyView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " serverReturnString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 509
    .local v0, "buttonId":Ljava/lang/Integer;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    return-object v1

    .line 512
    :cond_0
    return-object v0
.end method

.method private getHeaderMarginBottom()F
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getIntroHeight()F
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getLcdHeight()I
    .locals 4

    .prologue
    .line 626
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 627
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 628
    .local v0, "mDisplay":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 629
    iget v2, v1, Landroid/graphics/Point;->y:I

    return v2
.end method

.method private getTextFromView(Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 643
    const-string/jumbo v0, ""

    .line 644
    .local v0, "buttonText":Ljava/lang/String;
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 645
    check-cast v3, Landroid/view/ViewGroup;

    .line 646
    .local v3, "vg":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 647
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 648
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getTextFromView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 657
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "vg":Landroid/view/ViewGroup;
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v0, ""

    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 646
    .restart local v0    # "buttonText":Ljava/lang/String;
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "vg":Landroid/view/ViewGroup;
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 653
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_3
    instance-of v4, p1, Landroid/widget/TextView;

    if-nez v4, :cond_4

    instance-of v4, p1, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 654
    :cond_4
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private isScriptPlaying()Z
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetAnimationStates()V
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 180
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 181
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 182
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->NONE:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 178
    return-void
.end method

.method private declared-synchronized scriptPlayCompleted()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 616
    :try_start_0
    const-string/jumbo v0, "Settings -> BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scriptPlayCompleted : mCurrentMessageInProcess -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCurrentIntroState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 618
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-ne v0, v1, :cond_1

    .line 619
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->endIntroAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 615
    return-void

    .line 621
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onScriptPlayCompleted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startIntroAnimation()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x64

    const/4 v7, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onStartIntroAnimation()V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIntroDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIntroDesc:Landroid/widget/TextView;

    .line 317
    const-wide/16 v4, 0xa7

    .line 316
    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    .line 318
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIntroDesc:Landroid/widget/TextView;

    const-wide/16 v4, 0x29a

    new-instance v8, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/Elastic60;

    invoke-direct {v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/Elastic60;-><init>()V

    const/high16 v6, 0x43480000    # 200.0f

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->startMovingAnimation()V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->startParticleAnimation(II)V

    .line 321
    const/16 v0, 0xad7

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopParticleAnimation(I)V

    .line 313
    return-void
.end method

.method private startWaveAnimation()V
    .locals 12

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->initViewsForWaveAnimation()V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getLcdHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getHeaderHeight()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->setToTarget(F)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainBodyLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainButtonLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIntroDesc:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    .line 338
    const-wide/16 v4, 0xa7

    .line 337
    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    .line 341
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getGradientBackgroundColorID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 343
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    const-wide/16 v2, 0x0

    .line 344
    const-wide/16 v4, 0x14d

    .line 343
    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->startParticleAnimation(II)V

    .line 351
    const/16 v0, 0xad7

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopParticleAnimation(I)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->changeScale(FFFF)V

    .line 354
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14d

    .line 355
    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getIntroHeight()F

    move-result v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getBixbyPositionInHeader()F

    move-result v7

    sub-float/2addr v0, v7

    neg-float v7, v0

    new-instance v8, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;

    invoke-direct {v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;-><init>()V

    .line 354
    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V

    .line 357
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x14d

    const/high16 v7, 0x43af0000    # 350.0f

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x2ee

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->moveToTraget(JFJFJJ)V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainButtonLayout:Landroid/view/View;

    const-wide/16 v2, 0xfa

    .line 360
    const-wide/16 v4, 0x14d

    .line 359
    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    .line 362
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainBodyLayout:Landroid/view/View;

    const-wide/16 v2, 0xfa

    .line 363
    const-wide/16 v4, 0x14d

    .line 362
    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    .line 365
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 367
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14d

    .line 368
    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getIntroHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getHeaderHeight()F

    move-result v7

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getHeaderMarginBottom()F

    move-result v8

    sub-float/2addr v7, v8

    sub-float/2addr v0, v7

    neg-float v7, v0

    new-instance v8, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;

    invoke-direct {v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/interpolator/SineInOut33;-><init>()V

    .line 367
    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    const-wide/16 v2, 0x14d

    .line 370
    const-wide/16 v4, 0xa7

    .line 369
    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/vi/BixbyAnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    .line 330
    return-void
.end method

.method private stopParticleAnimation(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 571
    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$4;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    .line 576
    int-to-long v2, p1

    .line 571
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 570
    return-void
.end method

.method private stopScriptPlay()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-ne v0, v1, :cond_0

    .line 581
    const-string/jumbo v0, "Settings -> BixbyView"

    const-string/jumbo v1, "stopScriptPlay"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 583
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->stopScriptPlay()V

    .line 579
    :cond_0
    return-void
.end method


# virtual methods
.method protected declared-synchronized clean()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 462
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->clear()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    .line 466
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    .line 467
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    if-eqz v0, :cond_1

    .line 468
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopScriptPlay()V

    .line 469
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->clean()V

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 460
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getBixbyHeaderTitle()Ljava/lang/String;
.end method

.method protected abstract getBixbyIntroDescription()Ljava/lang/String;
.end method

.method protected getBixbyPositionInHeader()F
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method protected getGradientBackgroundColorID()I
    .locals 1

    .prologue
    .line 128
    const v0, 0x7f0205cb

    return v0
.end method

.method protected getHeaderHeight()F
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method protected abstract getIntroAudioName()Ljava/lang/String;
.end method

.method protected getMainBodyLayoutView()I
    .locals 1

    .prologue
    .line 161
    const v0, 0x7f1109c2

    return v0
.end method

.method protected getMainButtonlayoutView()I
    .locals 1

    .prologue
    .line 165
    const v0, 0x7f1109c4

    return v0
.end method

.method protected abstract getSoftKeyButtonVoiceCommands()Ljava/util/HashMap;
.end method

.method protected getWaveAnimRootLayoutView()I
    .locals 1

    .prologue
    .line 157
    const v0, 0x7f1109cc

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    .line 286
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getLcdHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mLcdHeight:I

    .line 287
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->resetAnimationStates()V

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->startFromThisMessage()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getSoftKeyButtonVoiceCommands()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    .line 290
    const v0, 0x7f11059a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyModeSwitcher:Landroid/view/View;

    .line 291
    const v0, 0x7f11018d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getBixbyHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const v0, 0x7f11018e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIntroDesc:Landroid/widget/TextView;

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIntroDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getBixbyIntroDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const v0, 0x7f11018a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getWaveAnimRootLayoutView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimRootLayout:Landroid/view/View;

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->initViewsForWaveAnimation()V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimRootLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :cond_0
    const v0, 0x7f11018c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    new-instance v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$2;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->setOnBixbyIconClickListener(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout$OnBixbyIconClickListener;)V

    .line 306
    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->setBixbyScriptPlayerListener(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/IBixbyScriptPlayerStates;)V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->buildBixbyScriptPlayer()V

    .line 309
    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$VoiceCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$VoiceCallback;-><init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    .line 310
    new-instance v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceCallback:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper$VoiceCommandHelperCallback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    .line 284
    return-void
.end method

.method protected initViewsForWaveAnimation()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    if-nez v0, :cond_0

    .line 187
    const v0, 0x7f11076a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainBodyLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getMainBodyLayoutView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainBodyLayout:Landroid/view/View;

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainButtonLayout:Landroid/view/View;

    if-nez v0, :cond_2

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getMainButtonlayoutView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mMainButtonLayout:Landroid/view/View;

    .line 185
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 456
    const-string/jumbo v0, "Settings -> BixbyView"

    const-string/jumbo v1, "BixbyView : onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->clean()V

    .line 455
    return-void
.end method

.method protected onEndIntroAnimation()V
    .locals 4

    .prologue
    .line 198
    const-string/jumbo v0, "Settings -> BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEndIntroAnimation : currentWaveAnimState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentWaveAnimState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-eq v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const-wide/16 v2, 0x0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 197
    :cond_0
    return-void
.end method

.method protected onEndWaveAnimation()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->startListening(I)V

    .line 204
    return-void
.end method

.method protected onMoveToNextScreen()V
    .locals 4

    .prologue
    .line 539
    const-string/jumbo v1, "Settings -> BixbyView"

    const-string/jumbo v2, "Move to Next Screen"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 541
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 542
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 538
    return-void
.end method

.method protected onMoveToPreviousScreen()V
    .locals 4

    .prologue
    .line 546
    const-string/jumbo v1, "Settings -> BixbyView"

    const-string/jumbo v2, "Move to Previous Screen"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 548
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 549
    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 545
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIsActivityPaused:Z

    .line 420
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopScriptPlay()V

    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopListening()V

    .line 418
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 426
    const-string/jumbo v0, "Settings -> BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume : CurrentMessageInProcess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCurrentIntroState -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScreenNavigationStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-ne v0, v1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 429
    return-void

    .line 432
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentMessageInProcess:I

    packed-switch v0, :pswitch_data_0

    .line 443
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIsActivityPaused:Z

    if-nez v0, :cond_2

    .line 444
    return-void

    .line 434
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 437
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-eq v0, v1, :cond_1

    .line 438
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentIntroState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-ne v0, v1, :cond_4

    .line 448
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->endIntroAnimation()V

    .line 452
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mIsActivityPaused:Z

    .line 424
    return-void

    .line 449
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-ne v0, v1, :cond_3

    .line 450
    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->startListening(I)V

    goto :goto_1

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onScriptPlayCompleted()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method protected onStartIntroAnimation()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method protected startFromThisMessage()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public startListening(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 588
    const-string/jumbo v0, "Settings -> BixbyView"

    const-string/jumbo v1, "startListening : "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->isScriptPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    const-string/jumbo v0, "Settings -> BixbyView"

    const-string/jumbo v1, "startListening : Network connected | Listening state is Not Started and Script is not playing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 593
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    int-to-long v2, p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public declared-synchronized startScriptPlay(Ljava/lang/String;)V
    .locals 3
    .param p1, "scriptName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 608
    :try_start_0
    const-string/jumbo v0, "Settings -> BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startScriptPlay : scriptName -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 607
    return-void

    .line 610
    :cond_1
    :try_start_1
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentScriptPlayStatus:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 611
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/util/BixbyScriptPlayer;->startScriptPlay(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopListening()V
    .locals 4

    .prologue
    .line 598
    const-string/jumbo v0, "Settings -> BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopListening : mCurrentListeningState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    sget-object v1, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    if-ne v0, v1, :cond_0

    .line 600
    sget-object v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->END:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mCurrentListeningState:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 601
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;

    const-wide/16 v2, 0x0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 597
    :cond_0
    return-void
.end method

.method protected suppressAnimation()V
    .locals 5

    .prologue
    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mBixbyBackgroundImageView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getGradientBackgroundColorID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimRootLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->startParticleAnimation(II)V

    .line 409
    const/16 v0, 0xad7

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->stopParticleAnimation(I)V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-virtual {v0, v4, v2, v4, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->changeScale(FFFF)V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mWaveAnimationView:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/WaveAnimationView;->setToTarget(F)V

    .line 412
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getIntroHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getBixbyPositionInHeader()F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->setTranslationY(F)V

    .line 413
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mParticleViewLayout:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->startMovingAnimation()V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->mScreenHeaderTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getIntroHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getHeaderHeight()F

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->getHeaderMarginBottom()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 404
    return-void
.end method
